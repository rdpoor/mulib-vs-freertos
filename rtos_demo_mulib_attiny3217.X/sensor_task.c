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

#include "sensor_task.h"

#include "i2c_task.h"
#include "mcc_generated_files/mcc.h"
#include "mu_rtc.h"
#include "mu_sched.h"
#include "mu_task.h"
#include "mu_time.h"
#include "ui_task.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

// *****************************************************************************
// Private types and definitions

#define SENSOR_STATES(M)                                                       \
  M(SENSOR_TASK_STATE_INIT)                                                    \
  M(SENSOR_TASK_STATE_IDLE)                                                    \
  M(SENSOR_TASK_STATE_START_TEMPERATURE_READ)                                  \
  M(SENSOR_TASK_STATE_READING_TEMPERATURE)                                     \
  M(SENSOR_TASK_STATE_START_EEPROM_WRITE)                                      \
  M(SENSOR_TASK_STATE_PRINT_TEMPERATURE)                                       \
  M(SENSOR_TASK_STATE_ENDGAME)                                                 \
  M(SENSOR_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { SENSOR_STATES(EXPAND_TASK_STATES) } sensor_task_state_t;

typedef struct {
  sensor_task_state_t state;
  uint8_t buf[2];
  int8_t fahrenheit;
  int8_t write_idx;
  mu_time_abs_t next_wake_at;
} sensor_task_ctx_t;

// *****************************************************************************
// Private (static) storage

#define EXPAND_TASK_STATE_NAMES(_name) #_name,
static const char *s_sensor_task_state_names[] = {
    SENSOR_STATES(EXPAND_TASK_STATE_NAMES)};

static sensor_task_ctx_t s_sensor_task_ctx;

static mu_task_t s_sensor_task;

// *****************************************************************************
// Private (forward) declarations

/**
 * @brief The main state machine for the task.
 */
static void sensor_task_fn(void *ctx, void *arg);

/**
 * @brief Set the state for the task.  Provided for debugging.
 */
static void set_state(sensor_task_state_t state);

/**
 * @brief Return a printable name for the state.
 */
static const char *state_name(sensor_task_state_t state);

/**
 * @brief Convert array of two uint8_t to fahrenheit.
 */
static int8_t convert_to_fahrenheit(uint8_t *buf);

// *****************************************************************************
// Public code

void sensor_task_init(void) {
  mu_task_init(&s_sensor_task, sensor_task_fn, &s_sensor_task_ctx);
  s_sensor_task_ctx.write_idx = 0;
  s_sensor_task_ctx.state = SENSOR_TASK_STATE_INIT;
  // Schedule a call to sensor_task for when the scheduler starts.
  mu_sched_at(sensor_task(), mu_rtc_now());
}

mu_task_t *sensor_task(void) { return &s_sensor_task; }

bool sensor_task_is_idle(void) {
  return s_sensor_task_ctx.state == SENSOR_TASK_STATE_IDLE;
}

// *****************************************************************************
// Private (static) code

static void sensor_task_fn(void *ctx, void *arg) {
  (void)arg;
  sensor_task_ctx_t *self = (sensor_task_ctx_t *)ctx;

  switch (self->state) {
  case SENSOR_TASK_STATE_INIT: {
    // We cannot call mu_rtc_now() in sensor_task_init() because the RTC may
    // not yet be initialized.  Call it once here.
    self->next_wake_at = mu_rtc_now();
  } // vvv-- fall through --vvv

  case SENSOR_TASK_STATE_IDLE: {
    self->next_wake_at =
        mu_time_offset(self->next_wake_at, mu_time_ms_to_rel(1000));
    set_state(SENSOR_TASK_STATE_START_TEMPERATURE_READ);
  } // vvv-- fall through --vvv

  case SENSOR_TASK_STATE_START_TEMPERATURE_READ: {
    if (ui_task_is_idle()) {
      // ASSERT(i2c_task_is_idle())
      // i2c bus is available.  write temperature register address to device
      s_sensor_task_ctx.buf[0] = SENSOR_TASK_TEMPERATURE_REG_ADDR;
      i2c_task_err_t err = i2c_task_write(SENSOR_TASK_TEMPERATURE_SLAVE_ADDR,
                                          s_sensor_task_ctx.buf,
                                          1,
                                          sensor_task());
      if (err != I2C_TASK_ERR_NONE) {
        set_state(SENSOR_TASK_STATE_ERROR);
      } else {
        set_state(SENSOR_TASK_STATE_READING_TEMPERATURE);
        // i2c_task_write callback will resume task
      }
    } else {
      // I2C is busy.  check again after a short delay.
      mu_sched_in(sensor_task(), mu_time_ms_to_rel(1));
    }
  } break;

  case SENSOR_TASK_STATE_READING_TEMPERATURE: {
    // ASSERT(i2c_task_is_idle())
    // I2C bus is available: read temperature from device
    i2c_task_err_t err = i2c_task_read(SENSOR_TASK_TEMPERATURE_SLAVE_ADDR,
                                       s_sensor_task_ctx.buf,
                                       2,
                                       sensor_task());
    if (err != I2C_TASK_ERR_NONE) {
      set_state(SENSOR_TASK_STATE_ERROR);
    } else {
      set_state(SENSOR_TASK_STATE_START_EEPROM_WRITE);
      // wait for i2c_task_read_temperature() callback to resume task
    }
  } break;

  case SENSOR_TASK_STATE_START_EEPROM_WRITE: {
    // Arrive here with raw temperature data in buf[0], buf[1].  Convert...
    s_sensor_task_ctx.fahrenheit = convert_to_fahrenheit(s_sensor_task_ctx.buf);

    // ASSERT(i2c_task_is_idle())
    // EEPROM is available -- initiate a write request
    if (s_sensor_task_ctx.write_idx >= SENSOR_TASK_EEPROM_MAX_LOG_VALUES) {
      s_sensor_task_ctx.write_idx = 0;
    }
    s_sensor_task_ctx.buf[0] =
        SENSOR_TASK_EEPROM_LOG_MEMORY_ADDR + s_sensor_task_ctx.write_idx++;
    s_sensor_task_ctx.buf[1] = s_sensor_task_ctx.fahrenheit;
    i2c_task_err_t err = i2c_task_write(
        SENSOR_TASK_EEPROM_SLAVE_ADDR, s_sensor_task_ctx.buf, 2, sensor_task());
    if (err != I2C_TASK_ERR_NONE) {
      set_state(SENSOR_TASK_STATE_ERROR);
    } else {
      set_state(SENSOR_TASK_STATE_PRINT_TEMPERATURE);
      // the i2c_task_write() callback will trigger next step
    }
  } break;

  case SENSOR_TASK_STATE_PRINT_TEMPERATURE: {
    // Arrive here with temperature in s_sensor_task_ctx.fahrenheit
    printf("\nTemperature = %d F", s_sensor_task_ctx.fahrenheit);
    set_state(SENSOR_TASK_STATE_ENDGAME);
    mu_sched_now(sensor_task());
  } break;

  case SENSOR_TASK_STATE_ENDGAME: {
    // Arrive here when printing task completes.
    // Repeat task 1 second after previous wakeup
    LED_Toggle();
    set_state(SENSOR_TASK_STATE_IDLE);
    // Pause until the next wake-up time.  Note that we do NOT do
    //     mu_sched_in(sensor_task() , now + 60 seconds)
    // since that would cause drift over time.  Instead, we keep track of the
    // intended wake-up time and increment that by 60 seconds.
    mu_sched_at(sensor_task(), self->next_wake_at);
  } break;

  case SENSOR_TASK_STATE_ERROR: {
    // placeholder...
  } break;

  } // end switch()
}

static void set_state(sensor_task_state_t state) {
  if (state != s_sensor_task_ctx.state) {
    const char *s1 = state_name(s_sensor_task_ctx.state);
    const char *s2 = state_name(state);
    printf("\n%8d %s => %s", mu_rtc_now(), s1, s2);
    // TODO: Use logger to record state transitions.
    s_sensor_task_ctx.state = state;
  }
}

static const char *state_name(sensor_task_state_t state) {
  return s_sensor_task_state_names[state];
}

static int8_t convert_to_fahrenheit(uint8_t *pRawValue) {
  int16_t t1 = (pRawValue[0] << 8) | pRawValue[1];
  int32_t t2 = t1; // sign extend
  uint16_t f = (t2 * 9) / 5;
  return f / 256 + 32;
}
