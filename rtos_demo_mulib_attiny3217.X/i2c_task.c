/**
 * MIT License
 *
 * Copyright (c) 2021 R. D. Poor <rdpoor@gmail.com>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

// *****************************************************************************
// Includes

#include "i2c_task.h"

#include "mcc_generated_files/mcc.h"
#include "mu_rtc.h"
#include "mu_sched.h"
#include "mu_task.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

// *****************************************************************************
// Private types and definitions

#define I2C_STATES(M)                                                          \
  M(I2C_TASK_STATE_IDLE)                                                       \
  M(I2C_TASK_STATE_START_READ)                                                 \
  M(I2C_TASK_STATE_READING)                                                    \
  M(I2C_TASK_STATE_START_WRITE)                                                \
  M(I2C_TASK_STATE_WRITING)                                                    \
  M(I2C_TASK_STATE_ENDGAME)                                                    \
  M(I2C_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { I2C_STATES(EXPAND_TASK_STATES) } i2c_task_state_t;

typedef struct {
  i2c_task_state_t state;
  uint8_t addr;
  uint8_t *buf;
  size_t n_bytes;
  mu_task_t *on_completion;
} i2c_task_ctx_t;

// *****************************************************************************
// Private (static) storage

#define EXPAND_TASK_STATE_NAMES(_name) #_name,
static const char *s_i2c_task_state_names[] = {
    I2C_STATES(EXPAND_TASK_STATE_NAMES)};

static i2c_task_ctx_t s_i2c_task_ctx;

static mu_task_t s_i2c_task;

// *****************************************************************************
// Private (forward) declarations

/**
 * @brief The main state machine for the task.
 */
static void i2c_task_fn(void *ctx, void *arg);

/**
 * @brief Set the state for the task.  Provided for debugging.
 */
static void set_state(i2c_task_state_t state);

/**
 * @brief Return a printable name for the state.
 */
static const char *state_name(i2c_task_state_t state);

/**
 * @brief Initialize the task state for a read or write operation.
 */
static i2c_task_err_t setup(uint8_t addr,
                            uint8_t *buf,
                            size_t n_bytes,
                            mu_task_t *on_completion,
                            i2c_task_state_t initial_state);

/**
 * @brief Trigger the callback function if non-NULL
 */
static void do_callback(void);

// *****************************************************************************
// Public code

void i2c_task_init(void) {
  mu_task_init(&s_i2c_task, i2c_task_fn, &s_i2c_task_ctx);
  s_i2c_task_ctx.state = I2C_TASK_STATE_IDLE;
  s_i2c_task_ctx.on_completion = NULL;
}

mu_task_t *i2c_task(void) { return &s_i2c_task; }

bool i2c_task_is_idle(void) {
  return s_i2c_task_ctx.state == I2C_TASK_STATE_IDLE;
}

i2c_task_err_t i2c_task_read(uint8_t addr,
                             uint8_t *buf,
                             size_t n_bytes,
                             mu_task_t *on_completion) {
  return setup(addr, buf, n_bytes, on_completion, I2C_TASK_STATE_START_READ);
}

i2c_task_err_t i2c_task_write(uint8_t addr,
                              uint8_t *buf,
                              size_t n_bytes,
                              mu_task_t *on_completion) {
  return setup(addr, buf, n_bytes, on_completion, I2C_TASK_STATE_START_WRITE);
}

// Called from interrupt level when I2C read or write operation completes.
// Advance i2c_task state and schedule a call to the task when the interrupt
// returns
twi0_operations_t i2c_task_handle_irq(void *arg) {
  (void)arg;
  // Because we are at interrupt level, set state directly rather than calling
  // set_state() to avoid any I/O while in interrupt level.
  s_i2c_task_ctx.state = I2C_TASK_STATE_ENDGAME;
  mu_sched_from_isr(i2c_task());
  return I2C0_STOP;
}

// *****************************************************************************
// Private (static) code

static void i2c_task_fn(void *ctx, void *arg) {
  (void)arg;

  switch (s_i2c_task_ctx.state) {

  case I2C_TASK_STATE_IDLE: {
    // remain here until a call to i2c_task_read or i2c_task_write
    // advances state...
  } break;

  case I2C_TASK_STATE_START_READ: {
    if (I2C0_Open(s_i2c_task_ctx.addr) == I2C0_NOERR) {
      // NB: the irq callback can happen almost immediately after calling
      // I2C0_MasterRead(), so be sure to set the state first)
      set_state(I2C_TASK_STATE_READING);
      I2C0_SetDataCompleteCallback(i2c_task_handle_irq, NULL);
      I2C0_SetBuffer(s_i2c_task_ctx.buf, s_i2c_task_ctx.n_bytes);
      I2C0_MasterRead();
    } else {
      // I2C bus is busy.  Wait briefly and try again.
      mu_sched_in(i2c_task(), mu_time_ms_to_rel(1));
    }
  } break;

  case I2C_TASK_STATE_READING: {
    // remain here until an interrupt callback advances the state
  } break;

  case I2C_TASK_STATE_START_WRITE: {
    if (I2C0_Open(s_i2c_task_ctx.addr) == I2C0_NOERR) {
      // NB: the irq callback can happen almost immediately after calling
      // I2C0_MasterWrite(), so be sure to set the state first)
      set_state(I2C_TASK_STATE_WRITING);
      I2C0_SetDataCompleteCallback(i2c_task_handle_irq, NULL);
      I2C0_SetBuffer(s_i2c_task_ctx.buf, s_i2c_task_ctx.n_bytes);
      I2C0_MasterWrite();
    } else {
      // I2C bus is busy.  Wait briefly and try again.
      mu_sched_in(i2c_task(), mu_time_ms_to_rel(1));
    }
  } break;

  case I2C_TASK_STATE_WRITING: {
    // remain here until an interrupt callback advances the state
  } break;

  case I2C_TASK_STATE_ENDGAME: {
    // Arrive here after the read or write operation completes.
    // TODO: is the test for I2C0_Close() required?
    if (I2C0_Close() != I2C0_BUSY) {
      do_callback();
    } else {
      // retry close after a short delay.
      mu_sched_in(i2c_task(), mu_time_ms_to_rel(1));
    }
  } break;

  case I2C_TASK_STATE_ERROR: {
  } break;
  } // switch()
}

static void set_state(i2c_task_state_t state) {
  if (state != s_i2c_task_ctx.state) {
    const char *s1 = state_name(s_i2c_task_ctx.state);
    const char *s2 = state_name(state);
    printf("\n%8d %s => %s", mu_rtc_now(), s1, s2);
    // TODO: Use logger to record & report state transitions.
    s_i2c_task_ctx.state = state;
  }
}

static const char *state_name(i2c_task_state_t state) {
  return s_i2c_task_state_names[state];
}

static i2c_task_err_t setup(uint8_t addr,
                            uint8_t *buf,
                            size_t n_bytes,
                            mu_task_t *on_completion,
                            i2c_task_state_t initial_state) {
  i2c_task_err_t err = I2C_TASK_ERR_NONE;

  if (!i2c_task_is_idle()) {
    // calling i2c_task_read() while i2c_task busy is an error
    err = I2C_TASK_ERR_BUSY;
  } else {
    // set up state and start the task
    s_i2c_task_ctx.addr = addr;
    s_i2c_task_ctx.buf = buf;
    s_i2c_task_ctx.n_bytes = n_bytes;
    s_i2c_task_ctx.on_completion = on_completion;
    set_state(initial_state);
    mu_sched_now(i2c_task());
  }
  return err;
}

static void do_callback(void) {
  set_state(I2C_TASK_STATE_IDLE);
  if (s_i2c_task_ctx.on_completion != NULL) {
    mu_task_call(s_i2c_task_ctx.on_completion, NULL);
  }
}
