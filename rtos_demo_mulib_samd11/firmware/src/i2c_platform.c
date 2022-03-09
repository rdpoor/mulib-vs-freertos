/**
 * @file i2c_platform.c
 * @brief platform-specific support for i2c_task
 *
 * MIT License
 *
 * Copyright (c) 2022 R. Dunbar Poor
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
 *
 */

// *****************************************************************************
// Includes

#include "i2c_platform.h"

#include "i2c_task.h"
#include "definitions.h"
#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static, forward) declarations

/**
 * @brief Called from interrupt level when the i2c operation completes.
 */
static void i2c_platform_xfer_cb(uintptr_t arg);

// *****************************************************************************
// Private (static) storage

// *****************************************************************************
// Public code

// *****************************************************************************
// platform specific code below here...

void i2c_platform_init(void) {
  SERCOM1_I2C_CallbackRegister(i2c_platform_xfer_cb, (uintptr_t)0);
}

bool i2c_platform_xfer(uint8_t addr,
                       const uint8_t *tx_buf,
                       size_t tx_size,
                       uint8_t *rx_buf,
                       size_t rx_size) {
  return SERCOM1_I2C_WriteRead(addr, 
                               (uint8_t *)tx_buf, 
                               tx_size, 
                               rx_buf,
                               rx_size);
}

// *****************************************************************************
// Private (static) code

// Called from interrupt level when I2C transfer completes.
static void i2c_platform_xfer_cb(uintptr_t arg) {
  (void)arg;
  i2c_task_handle_irq();
}
