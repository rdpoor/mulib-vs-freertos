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

#include "i2c_driver.h"

#include "app_config.h"
#include "mcc_generated_files/mcc.h"
#include "mu_access_mgr.h"
#include "mu_sched.h"
#include "mu_task.h"

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

static mu_access_mgr_t s_access_mgr; // provide exclusive access to i2c driver
static mu_task_t *s_on_completion;

// *****************************************************************************
// Private (forward) declarations

/**
 * @brief Prepare the I2C driver for a read or write operation.
 */
static void setup(uint8_t addr,
                  uint8_t *buf,
                  size_t n_bytes,
                  mu_task_t *on_completion);

/**
 * @brief Handle interrupt-level callback.
 */
static twi0_operations_t i2c0_task_handle_irq(void *arg);

// *****************************************************************************
// Public code

void i2c_driver_init(void) {
  mu_access_mgr_init(&s_access_mgr);
  s_on_completion = NULL;
  I2C0_SetDataCompleteCallback(i2c0_task_handle_irq, NULL);
}

void i2c_driver_reserve(mu_task_t *task) {
  mu_access_mgr_request_ownership(&s_access_mgr, task);
}

void i2c_driver_release(mu_task_t *task) {
  mu_access_mgr_release_ownership(&s_access_mgr, task);
}

bool i2c_driver_is_owner(mu_task_t *task) {
  return mu_access_mgr_has_ownership(&s_access_mgr, task);
}

i2c_driver_err_t i2c_driver_read(uint8_t addr,
                                 uint8_t *buf,
                                 size_t n_bytes,
                                 mu_task_t *on_completion) {
  setup(addr, buf, n_bytes, on_completion);
  I2C0_MasterRead();
  // the on_completion task will be invoked when the operation completes.
  return I2C_DRIVER_ERR_NONE;
}

i2c_driver_err_t i2c_driver_write(uint8_t addr,
                                  const uint8_t *buf,
                                  size_t n_bytes,
                                  mu_task_t *on_completion) {
  setup(addr, buf, n_bytes, on_completion);
  I2C0_MasterWrite();
  // the on_completion task will be invoked when the operation completes.
  return I2C_DRIVER_ERR_NONE;
}

// *****************************************************************************
// Private (static) code

static void setup(uint8_t addr,
                  uint8_t *buf,
                  size_t n_bytes,
                  mu_task_t *on_completion) {
  s_on_completion = on_completion;
  I2C0_Close(); // doesn't hurt if it's already closed.
  I2C0_Open(addr);
  I2C0_SetBuffer(buf, n_bytes);
}

// Called from interrupt level when I2C read or write operation completes.
// Invoke the task when the interrupt returns
static twi0_operations_t i2c0_task_handle_irq(void *arg) {
  (void)arg;
  mu_sched_from_isr(&s_on_completion);
  return I2C0_STOP;
}
