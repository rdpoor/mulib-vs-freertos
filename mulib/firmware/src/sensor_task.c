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

#include "sensor_task.h"

#include "mu_task.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

// ****************************************************************************=
// Private types and definitions

#define SENSOR_STATES(M)                                                       \
  M(SENSOR_TASK_STATE_INIT)                                                    \
  M(SENSOR_TASK_STATE_SUCCESS)                                                 \
  M(SENSOR_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { SENSOR_STATES(EXPAND_TASK_STATES) } sensor_task_state_t;

typedef struct {
  sensor_task_state_t state;
} sensor_task_ctx_t;

// ****************************************************************************=
// Private (static) storage

#define EXPAND_TASK_STATE_NAMES(_name) #_name,
static const char *s_sensor_task_state_names[] = {
    SENSOR_STATES(EXPAND_TASK_STATE_NAMES)};

static sensor_task_ctx_t s_sensor_task_ctx;

static mu_task_t s_sensor_task;

// ****************************************************************************=
// Private (forward) declarations

static void set_state(sensor_task_state_t state);
static const char *state_name(sensor_task_state_t state);
static void sensor_task_fn(void *ctx, void *arg);

// ****************************************************************************=
// Public code

void sensor_task_init(void) {
  mu_task_init(&s_sensor_task, sensor_task_fn, &s_sensor_task_ctx);
  s_sensor_task.woke_at = mu_rtc_now();
  s_sensor_task_ctx.state = SENSOR_TASK_STATE_INIT;
  mu_sched_now(sensor_task());  // start task when sensor runs
}

mu_task_t *sensor_task(void) { return &s_sensor_task; }

// ****************************************************************************=
// Private (static) code

static void set_state(sensor_task_state_t state) {
  if (state != s_sensor_task_ctx.state) {
    printf("\n%s => %s", state_name(s_sensor_task_ctx.state),
           state_name(state));
    s_sensor_task_ctx.state = state;
  }
}

static const char *state_name(sensor_task_state_t state) {
  return s_sensor_task_state_names[state];
}

static void sensor_task_fn(void *ctx, void *arg) {
  (void)arg;
  sensor_task_ctx_t *self = (sensor_task_ctx_t *)ctx;

  switch (self->state) {
  case SENSOR_TASK_STATE_INIT: {
      self->woke_at = mu_rtc_now();  // capture time at which this task woke up
      set_state(SENSOR_TASK_STATE_START_READING_TEMPERATURE);
      mu_sched_reschedule_now();
  } break;

  case SENSOR_TASK_STATE_START_READING_TEMPERATURE: {
      // initiate read here...
      set_state(SENSOR_TASK_STATE_AWAITING_TEMPERATURE_READING);
      sched_reschedule_now();
  } break;

  case SENSOR_TASK_STATE_AWAITING_TEMPERATURE_READING: {
      if (have_reading) {
          // Have a reading -- assure that the EEPROM
          set_state(SENSOR_TASK_STATE_AWAITING_EEPROM_AVAILABLE);
      } else {
          // remain in this state
      }
      sched_reschedule_now();
  } break;

  case SENSOR_TASK_STATE_AWAITING_EEPROM_AVAILABLE: {
      if (eeprom_task_is_idle()) {
          // eepprom is available -- initiate a write
          set_state(SENSOR_TASK_STATE_START_WRITING_EEPROM);
      } else {
          // remain in this state
      }
      sched_reschedule_now();
  } break;

  case SENSOR_TASK_STATE_START_WRITING_EEPROM: {
      // initiate eeprom write here.
      set_state(SENSOR_TASK_STATE_AWAIT_PRINTER_AVAIABLE);
      sched_reschedule_now();
  } break;

  case SENSOR_TASK_STATE_AWAIT_PRINTER_AVAIABLE: {
      if (printer_task_is_idle()) {
          // printer is available -- initiate a write
          set_state(SENSOR_TASK_STATE_START_PRINTING);
      } else {
          // printer is busy -- remain in this state
      }
      sched_reschedule_now();
  } break;

  case SENSOR_TASK_STATE_START_PRINTING: {
      uint8_t buf[25];
      sprintf(buf, "\nTemperature = %d F", sensor_task_get_temperature());
      printer_task_print(buf, strlen(buf));
      set_state(SENSOR_TASK_STATE_IDLE);
      // prepare to wake up 1 second after previous wakeup
      self->woke_at = mu_time_offset(self->woke_at, mu_time_ms_to_rel(1000));
      mu_reschedule_at(self->woke_at);
  } break;

  case SENSOR_TASK_STATE_IDLE: {
      set_state(SENSOR_TASK_STATE_START_READING_TEMPERATURE);
      sched_reschedule_now();
  } break;

  case SENSOR_TASK_STATE_ERROR: {

  } break;
  }
}
