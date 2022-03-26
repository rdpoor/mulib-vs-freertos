/**
 * MIT License
 *
 * Copyright (c) 2021-2022 R. D. Poor <rdpoor@gmail.com>
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

#include "i2c_driver.h"
#include "kbhit_task.h"
#include "mu_access_mgr.h"
#include "mu_rtc.h"
#include "mu_sched.h"
#include "mu_task.h"
#include "mu_time.h"
#include "periodic_task.h"
#include "usart_driver.h"

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

static mu_access_mgr_t s_i2c_access;
static mu_access_mgr_t s_serial_tx_access;

static bool s_is_first_time;

// *****************************************************************************
// Private (forward) declarations

// *****************************************************************************
// Public code

void APP_Initialize(void) {
  mu_rtc_init();
  mu_sched_init();
  mu_time_init();

  // Initialize app-specific resources.
  i2c_driver_init();
  usart_driver_init();
  mu_access_mgr_init(&s_i2c_access);
  mu_access_mgr_init(&s_serial_tx_access);

  // Schedule initial tasks.
  periodic_task_init();
  kbhit_task_init();
  s_is_first_time = true;
}

void APP_Tasks(void) {
  if (s_is_first_time) {
    s_is_first_time = false;
    // things requiring one-time initialzation after system initialization
    kbhit_task_start();
    periodic_task_start();
  }
  // run the scheduler
  mu_sched_step();
}

void APP_ReserveI2C(mu_task_t *task) {
  mu_access_mgr_request_ownership(&s_i2c_access, task);
}

void APP_ReleaseI2C(mu_task_t *task) {
  mu_access_mgr_release_ownership(&s_i2c_access, task);
}

bool APP_OwnsI2C(mu_task_t *task) {
  return mu_access_mgr_has_ownership(&s_i2c_access, task);
}

void APP_ReserveSerialTx(mu_task_t *task) {
  mu_access_mgr_request_ownership(&s_serial_tx_access, task);
}

void APP_ReleaseSerialTx(mu_task_t *task) {
  mu_access_mgr_release_ownership(&s_serial_tx_access, task);
}

bool APP_OwnsSerialTx(mu_task_t *task) {
  return mu_access_mgr_has_ownership(&s_serial_tx_access, task);
}

// For reasons I don't understand yet, if the following is omitted, the linker
// includes a LARGE body of code related to printing floating point values.
// By defining _printf_float() here, none of that code is included.  (And as far
// as I can tell, this app never prints floating point values, so this appears
// to be safe.)
void _printf_float(void) { asm("nop"); }

// *****************************************************************************
// Private (static) code
