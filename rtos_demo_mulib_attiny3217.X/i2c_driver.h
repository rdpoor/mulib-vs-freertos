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

/**
 * @file i2c_driver.h
 *
 * @brief mulib-aware I2C driver
 */

#ifndef _I2C_DRIVER_H_
#define _I2C_DRIVER_H_

// *****************************************************************************
// Includes

#include "mu_task.h"
#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

typedef enum {
  I2C_DRIVER_ERR_NONE,
  I2C_DRIVER_ERR_BUSY,
  I2C_DRIVER_ERR_BAD_PARAM,
} i2c_driver_err_t;

// *****************************************************************************
// Public declarations

/**
 * @brief One-time initialization of the i2c0, to be called at startup.
 */
void i2c_driver_init(void);

/**
 * @brief Gain exclusive access to the i2c_driver.
 *
 * When exclusive access is granted, task will be invoked.
 */
void i2c_driver_reserve(mu_task_t *task);

/**
 * @brief Relinquish exclusive access to the i2c_driver.
 */
void i2c_driver_release(mu_task_t *task);

/**
 * @brief Return true if the task has exclusive ownership of the i2c driver.
 */
bool i2c_driver_is_owner(mu_task_t *task);

/**
 * @brief Request to start an asynchronous read operation.
 *
 * Note: it is an error to call this function if I2C is busy.
 *
 * Note: If on_completion is non-NULL, it will be triggered when the read
 * operation completes.
 */
i2c_driver_err_t i2c_driver_read(uint8_t addr,
                               uint8_t *buf,
                               size_t n_bytes,
                               mu_task_t *on_completion);

/**
 * @brief Request to start an asynchronous write operation.
 *
 * Note: it is an error to call this function if I2C is busy.
 *
 * Note: If on_completion is non-NULL, it will be triggered when the read
 * operation completes.
 */
i2c_driver_err_t i2c_driver_write(uint8_t addr,
                                  const uint8_t *buf,
                                size_t n_bytes,
                                mu_task_t *on_completion);

// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _I2C_DRIVER_H_ */
