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

#include "app.h"

#include "i2c_task.h"
#include "mu_rtc.h"
#include "mu_sched.h"
#include "mu_time.h"
#include "sensor_task.h"
#include "ui_task.h"
#include <stdio.h>

// *****************************************************************************
// Private types and definitions

#define APP_STATES(M)                                                          \
  M(APP_STATE_INIT)                                                            \
  M(APP_STATE_SAMPLING)                                                        \
  M(APP_STATE_CHEKCING_FOR_KEYSTROKE)                                          \
  M(APP_STATE_PRINTING_HISTORY)                                                \
  M(APP_STATE_SLEEPING)                                                        \
  M(APP_STATE_ERROR)

void APP_Initialize(void) {
  mu_rtc_init();
  mu_sched_init();
  mu_time_init();
  mu_usart0_init();

  app_task_init();
  i2c_task_init();
  sensor_task_init();
  ui_task_init();
}

void APP_Tasks(void) {
  // run the scheduler
  mu_sched_step();
}

void app_task_init(void) {
  mu_task_init(&s_app_task, app_task_fn, &s_app_task_ctx);
  s_app_task.state = APP_STATE_INIT;
  s_app_task.wake_at = mu_rtc_now();
  mu_sched_now(app_task());            // schedule initial call
}

mu_task_t *app_task(void) { return &s_app_task; }


// For reasons I don't understand yet, if the following is omitted, the linker
// includes a LARGE body of code related to printing floating point values.  But
// by defining _printf_float() here, none of that code is included.  (And as far
// as I can tell, this app never prints floating point values, so this appears
// to be safe.)
void _printf_float(void) {
  asm("nop");
}

// *****************************************************************************
// Private (static) code

static void app_task_fn(void *ctx, void *arg) {
  (void)arg;
  app_task_ctx_t *self = (app_task_ctx_t *)ctx;

  switch(self->state) {
    case APP_STATE_INIT: {

    } break;
    case APP_STATE_SAMPLING: {
      set_state(APP_STATE_CHEKCING_FOR_KEYSTROKE);
      sensor_task_sample(app_task());
    } break;

    case APP_STATE_CHEKCING_FOR_KEYSTROKE: {

    } break;
    case APP_STATE_PRINTING_HISTORY: {

    } break;

    case APP_STATE_SLEEPING: {
      LED_Toggle();
      set_state(APP_STATE_SAMPLING);
      self->wake_at = mu_time_offset(self->wake_at, , mu_time_ms_to_rel(1000));
      mu_sched_at(app_task(), self->wake_at);
    } break;

    case APP_STATE_ERROR: {

    } break;

  }  // switch()
}

/*******************************************************************************
 End of File
 */
