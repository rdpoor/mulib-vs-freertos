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
 * @file eeprom_task.h
 *
 * @brief Manage read and write access to the eeprom.
 */

#ifndef _EEPROM_TASK_H_
#define _EEPROM_TASK_H_

// ****************************************************************************=
// Includes

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// ****************************************************************************=
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// ****************************************************************************=
// Public types and definitions

typedef enum {
    EEPROM_TASK_ERR_NONE,
} eeprom_task_err_t;

// ****************************************************************************=
// Public declarations

void eeprom_task_init(void);

bool eeprom_task_is_idle(void);

eeprom_task_err_t eeprom_task_write(uint8_t *buf, size_t n_bytes);

eeprom_task_err_t eeprom_task_read(uint8_t *buf, size_t n_bytes);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _EEPROM_TASK_H_ */
