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

#include "definitions.h"
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

// ****************************************************************************=
// Private types and definitions

#define SENSOR_STATES(M)                                                       \
  M(SENSOR_TASK_STATE_INIT)                                                    \
  M(SENSOR_TASK_STATE_AWAIT_PRINTER_AVAILABLE)                                 \
  M(SENSOR_TASK_STATE_AWAIT_PRINTING_COMPLETE)                                 \
  M(SENSOR_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { SENSOR_STATES(EXPAND_TASK_STATES) } sensor_task_state_t;

typedef struct {
  sensor_task_state_t state;
  mu_time_abs_t next_wake_at;
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
  s_sensor_task_ctx.state = SENSOR_TASK_STATE_INIT;
  // Schedule a call to sensor_task for when the scheduler starts.
  mu_sched_at(sensor_task(), mu_rtc_now());
}

mu_task_t *sensor_task(void) { return &s_sensor_task; }

// ****************************************************************************=
// Private (static) code

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

static void sensor_task_fn(void *ctx, void *arg) {
  (void)arg;
  sensor_task_ctx_t *self = (sensor_task_ctx_t *)ctx;

  switch (self->state) {
  case SENSOR_TASK_STATE_INIT: {
    self->next_wake_at = mu_time_offset(mu_rtc_now(), mu_time_ms_to_rel(1000));
    set_state(SENSOR_TASK_STATE_AWAIT_PRINTER_AVAILABLE);
  } // break; vvv-- fall through --vvv

  case SENSOR_TASK_STATE_AWAIT_PRINTER_AVAILABLE: {
    if (printer_task_is_idle()) {
      // Printer is available -- initiate a print request
      static char buf[20];

      sprintf(buf, "\nRTC=0x%lx", mu_rtc_now());
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
    LED_Toggle();
    set_state(SENSOR_TASK_STATE_AWAIT_PRINTER_AVAILABLE);
    mu_sched_at(sensor_task(), self->next_wake_at);
    self->next_wake_at =
        mu_time_offset(self->next_wake_at, mu_time_ms_to_rel(1000));
  } break;

  case SENSOR_TASK_STATE_ERROR: {
    // placeholder...
  } break;

  } // end switch()
}
