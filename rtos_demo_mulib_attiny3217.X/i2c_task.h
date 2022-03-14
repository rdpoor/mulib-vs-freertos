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

/**
 * @file i2c_task.h
 *
 * @brief i2c_task implements a task for performing read and write operations on
 * the I2C bus.
 */

#ifndef _I2C_TASK_H_
#define _I2C_TASK_H_

// *****************************************************************************
// Includes

#include "mcc_generated_files/mcc.h"
#include "mu_task.h"
#include <stdint.h>

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

typedef enum {
  I2C_TASK_ERR_NONE,
  I2C_TASK_ERR_BUSY,
  I2C_TASK_ERR_BAD_PARAM,
} i2c_task_err_t;

// *****************************************************************************
// Public declarations

/**
 * @brief One-time initialization of the i2c_task, to be called at startup.
 */
void i2c_task_init(void);

/**
 * @brief Return a reference to the i2c_task.
 */
mu_task_t *i2c_task(void);

/**
 * @brief Return true if the i2c is available for reads or writes.
 */
bool i2c_task_is_idle(void);

/**
 * @brief Request to start an asynchronous read operation.
 *
 * Note: it is an error to call this function unless i2c_task_is_idle()
 * returns true.
 *
 * Note: If on_completion is non-NULL, it will be triggered when the read
 * operation completes.  In addition, i2c_task_is_idle() will return true.
 */
i2c_task_err_t i2c_task_read(uint8_t addr,
                             uint8_t *buf,
                             size_t n_bytes,
                             mu_task_t *on_completion);

/**
 * @brief Request to start an asynchronous write operation.
 *
 * Note: it is an error to call this function unless i2c_task_is_idle()
 * returns true.
 *
 * Note: If on_completion is non-NULL, it will be triggered when the read
 * operation completes.  In addition, i2c_task_is_idle() will return true.
 */
i2c_task_err_t i2c_task_write(uint8_t addr,
                              uint8_t *buf,
                              size_t n_bytes,
                              mu_task_t *on_completion);

/**
 * @brief Handle I2C operation complete (at interrupt level).
 */
twi0_operations_t i2c_task_handle_irq(void *arg);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _I2C_TASK_H_ */
