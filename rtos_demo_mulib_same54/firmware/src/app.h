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

/**
 * @brief Request exclusive ownership of the I2C bus.
 *
 * @note The given task will be invoked when exclusive access is granted.
 */
void APP_ReserveI2C(mu_task_t *task);

/**
 * @brief Relinquish exclusive ownership of the I2C bus.
 */
void APP_ReleaseI2C(mu_task_t *task);

/**
 * @brief Return true if the given task has exclusive ownership of the I2C bus.
 */
bool APP_OwnsI2C(mu_task_t *task);

/**
 * @brief Request exclusive ownership of the USART transmitter.
 *
 * @note The given task will be invoked when exclusive access is granted.
 */
void APP_ReserveSerialTx(mu_task_t *task);

/**
 * @brief Relinquish exclusive ownership of the USART transmitter.
 */
void APP_ReleaseSerialTx(mu_task_t *task);

/**
 * @brief Return true if the given task has ownership of the USART transmitter.
 */
bool APP_OwnsSerialTx(mu_task_t *task);

// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _APP_H_ */
