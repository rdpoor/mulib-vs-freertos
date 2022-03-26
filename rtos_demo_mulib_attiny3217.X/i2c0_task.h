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
 * @file i2c0.h
 *
 * @brief mulib-aware I2C driver
 */

#ifndef _I2C0_H_
#define _I2C0_H_

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

#define I2C0_TASK_TEMPERATURE_SLAVE_ADDR 0x004F
#define I2C0_TASK_TEMPERATURE_REG_ADDR 0x00

#define I2C0_TASK_EEPROM_SLAVE_ADDR 0x0057
#define I2C0_TASK_EEPROM_LOG_MEMORY_ADDR 0x00
#define I2C0_TASK_EEPROM_MAX_LOG_VALUES 5

typedef enum {
  I2C0_TASK_ERR_NONE,
  I2C0_TASK_ERR_BUSY,
  I2C0_TASK_ERR_BAD_PARAM,
} i2c0_task_err_t;

// *****************************************************************************
// Public declarations

/**
 * @brief One-time initialization of the i2c0, to be called at startup.
 */
void i2c0_task_init(void);

/**
 * @brief Request to start an asynchronous read operation.
 *
 * Note: it is an error to call this function if I2C0 is busy.
 *
 * Note: If on_completion is non-NULL, it will be triggered when the read
 * operation completes.
 */
i2c0_task_err_t i2c0_task_read(uint8_t addr,
                               uint8_t *buf,
                               size_t n_bytes,
                               mu_task_t *on_completion);

/**
 * @brief Request to start an asynchronous write operation.
 *
 * Note: it is an error to call this function if I2C0 is busy.
 *
 * Note: If on_completion is non-NULL, it will be triggered when the read
 * operation completes.
 */
i2c0_task_err_t i2c0_task_write(uint8_t addr,
                                uint8_t *buf,
                                size_t n_bytes,
                                mu_task_t *on_completion);

// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _I2C0_H_ */
