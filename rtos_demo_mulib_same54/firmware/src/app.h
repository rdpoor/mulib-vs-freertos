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
 * @file app.h
 *
 * @brief Main file for rtos demo application.
 */

#ifndef _APP_H_
#define _APP_H_

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

#define APP_TASK_TEMPERATURE_I2C_SLAVE_ADDR 0x004F
#define APP_TASK_TEMPERATURE_I2C_REG_ADDR 0x00

#define APP_TASK_EEPROM_I2C_SLAVE_ADDR 0x0057
#define APP_TASK_EEPROM_LOG_MEMORY_ADDR 0x00
#define APP_TASK_EEPROM_MAX_LOG_VALUES 5

// un-comment to enable printing of state transitions.  Useful for debugging,
// but uses up more ROM and some RAM
// #define PRINT_STATE_TRANSITIONS

// *****************************************************************************
// Public declarations

/**
 * @brief Prepare the required resources for the app and queue initial tasks.
 *
 * @note Called once at startup.
 */
void APP_Initialize(void);

/**
 * @brief Run the scheduler.
 *
 * @note Called repeatedly from main()
 */
void APP_Tasks(void);

// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _APP_H_ */
