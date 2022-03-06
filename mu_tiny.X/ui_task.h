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
 * @file ui_task.h
 *
 * @brief When a character is received on the serial port, fetch and print the
 *        temperature history from eeprom.
 */

#ifndef _UI_TASK_H_
#define _UI_TASK_H_

// *****************************************************************************
// Includes

#include "mu_task.h"

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

typedef enum {
    UI_TASK_ERR_NONE,
} ui_task_err_t;

// *****************************************************************************
// Public declarations

/**
 * @brief One-time initialization of the ui_task module.
 */
void ui_task_init(void);

/**
 * @brief Return a pointer to the ui_task.
 */
mu_task_t *ui_task(void);

/**
 * @brief Called from interrupt level when a serial characater is received.
 */
void ui_task_handle_irq(void);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _UI_TASK_H_ */
