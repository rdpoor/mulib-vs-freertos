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

#include "i2c_platform.h"
#include "mu_rtc.h"
#include "mu_sched.h"
#include "mu_task.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

// *****************************************************************************
// Private types and definitions

#define I2C_TASK_TEMPERATURE_SLAVE_ADDR 0x004F
#define I2C_TASK_TEMPERATURE_REG_ADDR 0x00

#define I2C_TASK_EEPROM_SLAVE_ADDR 0x0057
#define I2C_TASK_EEPROM_LOG_MEMORY_ADDR 0x00

#define I2C_STATES(M)                                                          \
  M(I2C_TASK_STATE_IDLE)                                                       \
  M(I2C_TASK_STATE_READING_TEMPERATURE)                                        \
  M(I2C_TASK_STATE_DID_READ_TEMPERATURE)                                       \
  M(I2C_TASK_STATE_WRITING_EEPROM)                                             \
  M(I2C_TASK_STATE_DID_WRITE_EEPROM)                                           \
  M(I2C_TASK_STATE_READING_EEPROM)                                             \
  M(I2C_TASK_STATE_DID_READ_EEPROM)                                            \
  M(I2C_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { I2C_STATES(EXPAND_TASK_STATES) } i2c_task_state_t;

typedef struct {
  i2c_task_state_t state;
  uint8_t txBuffer[2];
  uint8_t rxBuffer[I2C_TASK_EEPROM_MAX_LOG_VALUES];
  int8_t *fahrenheit;
  uint8_t write_idx;
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
 * @brief Trigger the callback function if non-NULL
 */
static void do_callback(void);

/**
 * @brief Convert array of two uint8_t to fahrenheit.
 */
static int8_t convert_to_fahrenheit(uint8_t *pRawValue);

// *****************************************************************************
// Public code

void i2c_task_init(void) {
  i2c_platform_init();
  mu_task_init(&s_i2c_task, i2c_task_fn, &s_i2c_task_ctx);
  s_i2c_task_ctx.state = I2C_TASK_STATE_IDLE;
  s_i2c_task_ctx.write_idx = 0;
  s_i2c_task_ctx.on_completion = NULL;
}

mu_task_t *i2c_task(void) { return &s_i2c_task; }

bool i2c_task_is_idle(void) {
  return s_i2c_task_ctx.state == I2C_TASK_STATE_IDLE;
}

i2c_task_err_t i2c_task_read_temperature(int8_t *fahrenheit,
                                         mu_task_t *on_completion) {
  i2c_task_err_t err = I2C_TASK_ERR_NONE;

  do {
    // calling i2c_task_read_temperature() while i2c_task busy is an error
    if (!i2c_task_is_idle()) {
      err = I2C_TASK_ERR_BUSY;
      break;
    }

    s_i2c_task_ctx.fahrenheit = fahrenheit;
    // NB: it is important to set up state before initiating the I2C operation
    // since the interrupt can happen nearly immediately
    s_i2c_task_ctx.on_completion = on_completion;
    set_state(I2C_TASK_STATE_READING_TEMPERATURE);
    // compose transmit buffer
    s_i2c_task_ctx.txBuffer[0] = I2C_TASK_TEMPERATURE_REG_ADDR;
    if (!i2c_platform_xfer(I2C_TASK_TEMPERATURE_SLAVE_ADDR,
                           s_i2c_task_ctx.txBuffer,
                           1,
                           s_i2c_task_ctx.txBuffer,
                           2)) {
      err = I2C_TASK_ERR_BAD_PARAM;
      break;
    }

    // start the i2c_task
    mu_sched_now(i2c_task());
  } while (false);

  return err;
}

i2c_task_err_t i2c_task_write_eeprom_byte(uint8_t byte,
                                          mu_task_t *on_completion) {
  i2c_task_err_t err = I2C_TASK_ERR_NONE;

  do {
    // Calling i2c_task_write_eeprom_byte() while i2c_task busy is an error
    if (!i2c_task_is_idle()) {
      err = I2C_TASK_ERR_BUSY;
      break;
    }

    // Prepare the i2c buffer to be transmitted.
    s_i2c_task_ctx.txBuffer[0] =
        I2C_TASK_EEPROM_LOG_MEMORY_ADDR + s_i2c_task_ctx.write_idx;
    s_i2c_task_ctx.txBuffer[1] = byte;

    // NB: it is important to set up state before initiating the I2C operation
    // since the interrupt can happen nearly immediately
    s_i2c_task_ctx.on_completion = on_completion;
    set_state(I2C_TASK_STATE_WRITING_EEPROM);

    // compose transmit buffer to write one byte to the EEPROM: addr, data
    s_i2c_task_ctx.txBuffer[0] =
      I2C_TASK_EEPROM_LOG_MEMORY_ADDR + s_i2c_task_ctx.write_idx;
    s_i2c_task_ctx.txBuffer[1] = byte;
    if (!i2c_platform_xfer(I2C_TASK_TEMPERATURE_SLAVE_ADDR,
                           s_i2c_task_ctx.txBuffer,
                           2,
                           NULL,
                           0)) {
      err = I2C_TASK_ERR_BAD_PARAM;
      break;
    }

    // Advance write index
    s_i2c_task_ctx.write_idx += 1;
    if (s_i2c_task_ctx.write_idx == I2C_TASK_EEPROM_MAX_LOG_VALUES) {
      s_i2c_task_ctx.write_idx = 0;
    }

    // Start the i2c_task
    mu_sched_now(i2c_task());
  } while (false);

  return err;
}

i2c_task_err_t i2c_task_read_eeprom_bytes(uint8_t *bytes,
                                          size_t n_bytes,
                                          mu_task_t *on_completion) {
  i2c_task_err_t err = I2C_TASK_ERR_NONE;

  do {
    // Calling i2c_task_write_eeprom_byte() while i2c_task busy is an error
    if (!i2c_task_is_idle()) {
      err = I2C_TASK_ERR_BUSY;
      break;
    }

    // NB: it is important to set up state before initiating the I2C operation
    // since the interrupt can happen nearly immediately
    s_i2c_task_ctx.on_completion = on_completion;
    set_state(I2C_TASK_STATE_READING_EEPROM);
    s_i2c_task_ctx.txBuffer[0] = I2C_TASK_EEPROM_LOG_MEMORY_ADDR;

    // compose message to write one byte to the EEPROM and to
    // read n_bytes starting at I2C_TASK_EEPROM_LOG_MEMORY_ADDR
    s_i2c_task_ctx.txBuffer[0] = I2C_TASK_EEPROM_LOG_MEMORY_ADDR;
    if (!i2c_platform_xfer(I2C_TASK_TEMPERATURE_SLAVE_ADDR,
                           s_i2c_task_ctx.txBuffer,
                           1,
                           bytes,
                           n_bytes)) {
      err = I2C_TASK_ERR_BAD_PARAM;
      break;
    }

    mu_sched_at(i2c_task(), mu_rtc_now());
  } while (false);

  return err;
}

// Called from interrupt level when I2C read or write operation completes.
// Set the i2c_task state and schedule a call to the task when the interrupt
// returns
void i2c_task_handle_irq(void) {

  i2c_task_ctx_t *self = &s_i2c_task_ctx;
  // Because we are at interrupt level, set state directly rather than calling
  // set_state() to avoid extra I/O while in interrupt level.
  if (self->state == I2C_TASK_STATE_READING_TEMPERATURE) {
    self->state = I2C_TASK_STATE_DID_READ_TEMPERATURE;
  } else if (self->state == I2C_TASK_STATE_WRITING_EEPROM) {
    self->state = I2C_TASK_STATE_DID_WRITE_EEPROM;
  } else if (self->state == I2C_TASK_STATE_READING_EEPROM) {
    self->state = I2C_TASK_STATE_DID_READ_EEPROM;
  }
  // Run the i2c task at the next call to sched_step()
  mu_sched_from_isr(i2c_task());
}

// *****************************************************************************
// Private (static) code

static void i2c_task_fn(void *ctx, void *arg) {
  (void)arg;
  i2c_task_ctx_t *self = (i2c_task_ctx_t *)ctx;

  switch (self->state) {

  case I2C_TASK_STATE_IDLE: {
    // remain here until a call to i2c_task_read_xxx or i2c_task_write_xxx
    // advances state...
  } break;

  case I2C_TASK_STATE_READING_TEMPERATURE: {
    // remain here until an interrupt callback advances the state
  } break;

  case I2C_TASK_STATE_DID_READ_TEMPERATURE: {
    // Arrive here after the temperature read operation completes.
    // raw data is in s_i2c_task_ctx.rxBuffer[0, 1]
    *s_i2c_task_ctx.fahrenheit = convert_to_fahrenheit(s_i2c_task_ctx.rxBuffer);
    do_callback();
  } break;

  case I2C_TASK_STATE_WRITING_EEPROM: {
    // remain here until an interrupt callback advances the state
  } break;

  case I2C_TASK_STATE_DID_WRITE_EEPROM: {
    // arrive here after the eeprom write operation completes
    do_callback();
  } break;

  case I2C_TASK_STATE_READING_EEPROM: {
    // remain here until an interrupt callback advances the state
  } break;

  case I2C_TASK_STATE_DID_READ_EEPROM: {
    // arrive here after the eeprom read operation completes
    do_callback();
  } break;

  case I2C_TASK_STATE_ERROR: {

  } break;
  } // switch()
}

static void set_state(i2c_task_state_t state) {
  if (state != s_i2c_task_ctx.state) {
    const char *s1 = state_name(s_i2c_task_ctx.state);
    const char *s2 = state_name(state);
    (void)s1;
    (void)s2;
    // TODO: Use logger to record & report state transitions.
    s_i2c_task_ctx.state = state;
  }
}

static const char *state_name(i2c_task_state_t state) {
  return s_i2c_task_state_names[state];
}

static void do_callback(void) {
  set_state(I2C_TASK_STATE_IDLE);
  if (s_i2c_task_ctx.on_completion != NULL) {
    mu_task_call(s_i2c_task_ctx.on_completion, NULL);
  }
}

// This is the code from the original FreeRTOS version.  It uses floating point,
// but see below for an alternate integer-only implementation.
//
// static int8_t convert_to_fahrenheit(uint8_t *pRawValue) {
//   int16_t temp = (pRawValue[0] << 8) | pRawValue[1];
//   if ((temp & 0x8000) == 0) {
//     temp = (temp >> 7) * 0.5;
//   } else {
//     temp = (~temp) + 1;
//     temp = (temp >> 7);
//     temp *= -0.5;
//   }
//   temp = (temp * (float)9 / 5) + 32;
//   return (int8_t)temp;
// }

// Replacement code w/o floating point
// NOTE: not tested over full range.
static int8_t convert_to_fahrenheit(uint8_t *pRawValue) {
  int16_t t1 = (pRawValue[0] << 8) | pRawValue[1];
  int32_t t2 = t1;  // sign extend
  uint16_t f = (t2 * 9) / 5;
  return f / 256 + 32;
}
