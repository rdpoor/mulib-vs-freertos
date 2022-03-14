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
 * @file sensor_task.h
 *
 * @brief Support for the sensor task
 */

#ifndef _SENSOR_TASK_H_
#define _SENSOR_TASK_H_

// *****************************************************************************
// Includes

#include "mu_task.h"
#include <stdbool.h>

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

#define SENSOR_TASK_TEMPERATURE_SLAVE_ADDR 0x004F
#define SENSOR_TASK_TEMPERATURE_REG_ADDR 0x00

#define SENSOR_TASK_EEPROM_SLAVE_ADDR 0x0057
#define SENSOR_TASK_EEPROM_LOG_MEMORY_ADDR 0x00
#define SENSOR_TASK_EEPROM_MAX_LOG_VALUES 5

typedef enum {
    SENSOR_TASK_ERR_NONE,
} sensor_task_err_t;

// *****************************************************************************
// Public declarations

void sensor_task_init(void);

mu_task_t *sensor_task(void);

/**
 * @brief Return true if the sensor_task is in-between taking readings.
 * 
 * @return true if the sensor task is idle.
 */
bool sensor_task_is_idle(void);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _SENSOR_TASK_H_ */
