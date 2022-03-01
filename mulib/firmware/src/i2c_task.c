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

// ****************************************************************************=
// Includes

#include "i2c_task.h"

#include "definitions.h"
#include "mu_sched.h"
#include "mu_task.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

// ****************************************************************************=
// Private types and definitions

#define I2C_STATES(M)                                                     \
  M(I2C_TASK_STATE_INIT)                                                  \
  M(I2C_TASK_STATE_SUCCESS)                                               \
  M(I2C_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { I2C_STATES(EXPAND_TASK_STATES) } i2c_task_state_t;

typedef struct {
  i2c_task_state_t state;
  mu_task_t *on_completion;
} i2c_task_ctx_t;

// ****************************************************************************=
// Private (static) storage

#define EXPAND_TASK_STATE_NAMES(_name) #_name,
static const char *s_i2c_task_state_names[] = {
    I2C_STATES(EXPAND_TASK_STATE_NAMES)};

static i2c_task_ctx_t s_i2c_task_ctx;

static mu_task_t s_i2c_task;

// ****************************************************************************=
// Private (forward) declarations

static void set_state(i2c_task_state_t state);
static const char *state_name(i2c_task_state_t state);
static void i2c_task_fn(void *ctx, void *arg);

/**
 * @brief Interrupt-level callback when i2c operation completes.
 */
static void i2c_cb(uintptr_t context);


// ****************************************************************************=
// Public code

void i2c_task_init(void) {
  SERCOM3_I2C_CallbackRegister(i2c_cb, (uintptr_t)&s_i2c_task_ctx);
  mu_task_init(&s_i2c_task, i2c_task_fn, &s_i2c_task_ctx);
  s_i2c_task_ctx.state = I2C_TASK_STATE_INIT;
  s_i2c_task_ctx.on_completion = NULL;
}

mu_task_t *i2c_task(void) { return &s_i2c_task; }

bool i2c_task_is_idle(void) {
    return true;
}

i2c_task_err_t i2c_task_read_temperature(int8_t *fahrenheit,
                                         mu_task_t *on_completion) {
  return I2C_TASK_ERR_NONE;
}

i2c_task_err_t eeprom_task_write(uint8_t *buffer, size_t n_bytes,
                                 mu_task_t *on_completion) {
  return I2C_TASK_ERR_NONE;
}

i2c_task_err_t eeprom_task_read(uint8_t *buffer, size_t n_bytes,
                                mu_task_t *on_completion) {
  return I2C_TASK_ERR_NONE;
}


// ****************************************************************************=
// Private (static) code

static void set_state(i2c_task_state_t state) {
  if (state != s_i2c_task_ctx.state) {
    printf("\n%s => %s", state_name(s_i2c_task_ctx.state),
           state_name(state));
    s_i2c_task_ctx.state = state;
  }
}

static const char *state_name(i2c_task_state_t state) {
  return s_i2c_task_state_names[state];
}

static void i2c_task_fn(void *ctx, void *arg) {
  (void)arg;
  i2c_task_ctx_t *self = (i2c_task_ctx_t *)ctx;

  switch (self->state) {
  case I2C_TASK_STATE_INIT: {
      set_state(I2C_TASK_STATE_SUCCESS);
  } break;

  case I2C_TASK_STATE_SUCCESS: {

  } break;
  case I2C_TASK_STATE_ERROR: {

  } break;
  }
}

// Called from interrupt level when I2C read or write operation completes
static void i2c_cb(uintptr_t context) {
  i2c_task_ctx_t *self = (i2c_task_ctx_t *)context;
  // Because we are at interrupt level, set state directly rather than calling
  // set_state() to avoid extra I/O while in interrupt level.
  self->state = ISR_TASK_STATE_COMPLETED;
  mu_sched_from_isr(i2c_task());
}
