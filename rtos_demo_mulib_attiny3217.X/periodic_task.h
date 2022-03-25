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
 * @file periodic_task.h
 *
 * @brief Periodically read temperature, write to EEPROM, print to serial port.
 */

#ifndef _PERIODIC_TASK_H_
#define _PERIODIC_TASK_H_

// *****************************************************************************
// Includes

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

#define PERIODIC_TASK_TEMPERATURE_SLAVE_ADDR 0x004F
#define PERIODIC_TASK_TEMPERATURE_REG_ADDR 0x00

#define PERIODIC_TASK_EEPROM_SLAVE_ADDR 0x0057
#define PERIODIC_TASK_EEPROM_LOG_MEMORY_ADDR 0x00
#define PERIODIC_TASK_EEPROM_MAX_LOG_VALUES 5

typedef enum {
    PERIODIC_TASK_ERR_NONE,
} periodic_task_err_t;

// *****************************************************************************
// Public declarations

/**
 * @brief Initialize the periodic task.  Will run when scheduler starts.
 */
void periodic_task_init(void);

/**
 * @brief Start calling periodic_task regularly
 *
 * @note: Call this once after system is initialized and scheduler is running.
 */
void periodic_task_start(void);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _PERIODIC_TASK_H_ */
