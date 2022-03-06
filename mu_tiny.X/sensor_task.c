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
#include "printer_task.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

// *****************************************************************************
// Private types and definitions

#define SENSOR_STATES(M)                                                       \
  M(SENSOR_TASK_STATE_INIT)                                                    \
  M(SENSOR_TASK_STATE_AWAIT_TEMPERATURE_AVAILABLE)                             \
  M(SENSOR_TASK_STATE_AWAIT_EEPROM_AVAILABLE)                                  \
  M(SENSOR_TASK_STATE_AWAIT_PRINTER_AVAILABLE)                                 \
  M(SENSOR_TASK_STATE_AWAIT_PRINTING_COMPLETE)                                 \
  M(SENSOR_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { SENSOR_STATES(EXPAND_TASK_STATES) } sensor_task_state_t;

typedef struct {
  sensor_task_state_t state;
  int8_t fahrenheit;
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

// ==========
// platform-specific declarations

/**
 * @brief Toggle the on-board LED.
 */
static void sensor_platform_toggle_led(void);

// *****************************************************************************
// Public code

void sensor_task_init(void) {
  mu_task_init(&s_sensor_task, sensor_task_fn, &s_sensor_task_ctx);
  s_sensor_task_ctx.state = SENSOR_TASK_STATE_INIT;
  // Schedule a call to sensor_task for when the scheduler starts.
  mu_sched_at(sensor_task(), mu_rtc_now());
}

mu_task_t *sensor_task(void) { return &s_sensor_task; }

// *****************************************************************************
// Private (static) code

static void sensor_task_fn(void *ctx, void *arg) {
  (void)arg;
  sensor_task_ctx_t *self = (sensor_task_ctx_t *)ctx;

  switch (self->state) {
  case SENSOR_TASK_STATE_INIT: {
    self->next_wake_at = mu_time_offset(mu_rtc_now(), mu_time_ms_to_rel(1000));
    set_state(SENSOR_TASK_STATE_AWAIT_TEMPERATURE_AVAILABLE);
  } // break; vvv-- fall through --vvv

  case SENSOR_TASK_STATE_AWAIT_TEMPERATURE_AVAILABLE: {
    if (i2c_task_is_idle()) {
      // Temperature sensor is available: initiate a read operation.
      i2c_task_err_t err = i2c_task_read_temperature(
          &s_sensor_task_ctx.fahrenheit, sensor_task());
      if (err != I2C_TASK_ERR_NONE) {
        set_state(SENSOR_TASK_STATE_ERROR);
      } else {
        set_state(SENSOR_TASK_STATE_AWAIT_EEPROM_AVAILABLE);
        // wait for i2c_task_read_temperature() callback to resume task
      }
    } else {
      // I2C is busy.  check again after a short delay.
      mu_sched_in(sensor_task(), mu_time_ms_to_rel(1));
    }
  } break;

  case SENSOR_TASK_STATE_AWAIT_EEPROM_AVAILABLE: {
    // Arrive here with temperature in s_sensor_task_ctx.fahrenheit
    if (i2c_task_is_idle()) {
      // EEPROM is available -- initiate a write request
      i2c_task_err_t err = i2c_task_write_eeprom_byte(
          s_sensor_task_ctx.fahrenheit, sensor_task());
      if (err != I2C_TASK_ERR_NONE) {
        set_state(SENSOR_TASK_STATE_ERROR);
      } else {
        set_state(SENSOR_TASK_STATE_AWAIT_PRINTER_AVAILABLE);
        // the i2c_task_write_eeprom_byte() callback will trigger next step
      }
    } else {
      // I2C is busy.  check again after a short delay.
      mu_sched_in(sensor_task(), mu_time_ms_to_rel(1));
    }
  } break;

  case SENSOR_TASK_STATE_AWAIT_PRINTER_AVAILABLE: {
    // Arrive here with temperature in s_sensor_task_ctx.fahrenheit
    if (printer_task_is_idle()) {
      // Printer is available -- initiate a print request
      static char buf[30];

      sprintf(buf,
              "\nTemperature = %d F",
              s_sensor_task_ctx.fahrenheit);
      set_state(SENSOR_TASK_STATE_AWAIT_PRINTING_COMPLETE);
      printer_task_print((uint8_t *)buf, strlen(buf), sensor_task());
    } else {
      // Printer is busy.  check again after a short delay.
      mu_sched_in(sensor_task(), mu_time_ms_to_rel(1));
    }
  } break;

  case SENSOR_TASK_STATE_AWAIT_PRINTING_COMPLETE: {
    // Arrive here when printing task completes.
    // Repeat task 1 second after previous wakeup
    sensor_platform_toggle_led();
    set_state(SENSOR_TASK_STATE_AWAIT_TEMPERATURE_AVAILABLE);
    // Pause until the next wake-up time.  Note that we do NOT do
    //     mu_sched_in(sensor_task() , now + 60 seconds)
    // since that would cause drift over time.  Instead, we keep track of the
    // intended wake-up time and increment that by 60 seconds.
    mu_sched_at(sensor_task(), self->next_wake_at);
    self->next_wake_at =
        mu_time_offset(self->next_wake_at, mu_time_ms_to_rel(1000));
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
    (void)s1;
    (void)s2;
    // TODO: Use logger to record state transitions.
    s_sensor_task_ctx.state = state;
  }
}

static const char *state_name(sensor_task_state_t state) {
  return s_sensor_task_state_names[state];
}

// *****************************************************************************
// platform specific code below here...

static void sensor_platform_toggle_led(void) {
  LED_Toggle();
}
