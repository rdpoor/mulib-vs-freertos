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
#include "definitions.h"
#include "mu_sched.h"
#include "mu_task.h"

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

static mu_task_t *s_on_completion;

// *****************************************************************************
// Private (forward) declarations

/**
 * @brief Handle interrupt-level callback.
 */
static void i2c_driver_handle_irq(uintptr_t contextHandle);

// *****************************************************************************
// Public code

void i2c_driver_init(void) {
  s_on_completion = NULL;
  SERCOM3_I2C_CallbackRegister(i2c_driver_handle_irq, (uintptr_t)0);
}

i2c_driver_err_t i2c_driver_read(uint8_t addr,
                                 uint8_t *buf,
                                 size_t n_bytes,
                                 mu_task_t *on_completion) {
  i2c_driver_err_t ret = I2C_DRIVER_ERR_NONE;
  if (SERCOM3_I2C_IsBusy()) {
    ret = I2C_DRIVER_ERR_BUSY;
  } else {
    s_on_completion = on_completion;
    if (!SERCOM3_I2C_Read(addr, buf, n_bytes)) {
      ret = I2C_DRIVER_ERR_BAD_PARAM;
    }
  }
  return ret;
}

i2c_driver_err_t i2c_driver_write(uint8_t addr,
                                  const uint8_t *buf,
                                  size_t n_bytes,
                                  mu_task_t *on_completion) {
  i2c_driver_err_t ret = I2C_DRIVER_ERR_NONE;
  if (SERCOM3_I2C_IsBusy()) {
    ret = I2C_DRIVER_ERR_BUSY;
  } else {
    s_on_completion = on_completion;
    if (!SERCOM3_I2C_Write(addr, (uint8_t *)buf, n_bytes)) {
      ret = I2C_DRIVER_ERR_BAD_PARAM;
    }
  }
  return ret;
}

// *****************************************************************************
// Private (static) code

// Called from interrupt level when I2C read or write operation completes.
static void i2c_driver_handle_irq(uintptr_t contextHandle) {
  (void)contextHandle;
  if (s_on_completion != NULL) {
    mu_sched_from_isr(s_on_completion);
  }
}
