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
 * @brief In this app, eeprom and temperature sensor share the I2C bus.  The
 * i2c_task provides asynchronous access to both.
 */

#ifndef _I2C_TASK_H_
#define _I2C_TASK_H_

// *****************************************************************************
// Includes

#include "mu_task.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

#define I2C_TASK_EEPROM_MAX_LOG_VALUES 5

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
 * @brief Return true if the i2c is available for printing.
 */
bool i2c_task_is_idle(void);

/**
 * @brief Request to start asynchronous reading of the temperature.
 *
 * Note: it is an error to call this function unless i2c_task_is_idle()
 * returns true.
 *
 * Note: If on_completion is non-NULL, it will be triggered when the read
 * operation completes.  In addition, i2c_task_is_idle() will return true.
 *
 * @param fahrenheit Pointer to location to receive the result.
 * @param on_completion The task to call upon completion.  May be NULL.
 * @return I2C_TASK_ERR_NONE on success.
 */
i2c_task_err_t i2c_task_read_temperature(int8_t *fahrenheit,
                                         mu_task_t *on_completion);

/**
 * @brief Request to start asynchronous write to eeprom.
 *
 * Note: it is an error to call this function unless i2c_task_is_idle()
 * returns true.
 *
 * Note: If on_completion is non-NULL, it will be triggered when the write
 * operation completes.  In addition, i2c_task_is_idle() will return true.
 *
 * @param byte The byt e to be written.
 * @param on_completion The task to call upon completion.  May be NULL.
 * @return I2C_TASK_ERR_NONE on success.
 */
i2c_task_err_t i2c_task_write_eeprom_byte(uint8_t byte,
                                          mu_task_t *on_completion);

/**
 * @brief Request to start asynchronous read from eeprom.
 *
 * Note: it is an error to call this function unless i2c_task_is_idle()
 * returns true.
 *
 * Note: If on_completion is non-NULL, it will be triggered when the read
 * operation completes.  In addition, i2c_task_is_idle() will return true.
 *
 * @param buf The location in which to write the read data.
 * @param n_bytes The number of bytes to be read.
 * @param on_completion The task to call upon completion.  May be NULL.
 * @return I2C_TASK_ERR_NONE on success.
 */
i2c_task_err_t i2c_task_read_eeprom_bytes(uint8_t *buffer,
                                          size_t n_bytes,
                                          mu_task_t *on_completion);

/**
 * @brief Handle I2C transfer complete interrrupt (at interrupt level).
 */
void i2c_task_handle_irq(void);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _I2C_TASK_H_ */
