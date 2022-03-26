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

// *****************************************************************************
// Includes

#include "periodic_task.h"

#include "app.h"
#include "app_config.h"
#include "definitions.h"
#include "i2c_driver.h"
#include "mu_periodic.h"
#include "mu_rtc.h"
#include "mu_sched.h"
#include "mu_task.h"
#include "usart_driver.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>

// *****************************************************************************
// Private types and definitions

// How often the periodic task repeats
#define PERIODIC_TASK_REPEAT_MS 1000

// The states of the periodic task
#define PERIODIC_STATES(M)                                                     \
  M(PERIODIC_TASK_STATE_ACQUIRE_TEMP_SENSOR)                                   \
  M(PERIODIC_TASK_STATE_START_TEMP_SENSOR_WRITE)                               \
  M(PERIODIC_TASK_STATE_START_TEMP_SENSOR_READ)                                \
  M(PERIODIC_TASK_STATE_ACQUIRE_EEPROM)                                        \
  M(PERIODIC_TASK_STATE_START_EEPROM_WRITE)                                    \
  M(PERIODIC_TASK_STATE_ACQUIRE_SERIAL_TX)                                     \
  M(PERIODIC_TASK_STATE_START_SERIAL_TX)                                       \
  M(PERIODIC_TASK_STATE_ENDGAME)                                               \
  M(PERIODIC_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { PERIODIC_STATES(EXPAND_TASK_STATES) } periodic_task_state_t;

typedef struct {
  periodic_task_state_t state; // task state
  uint8_t buf[2];              // buffer to receive raw temp sensor data
  int8_t fahrenheit;           // raw temp sensor data converted to fahrenheit
  int8_t write_idx;            // EEPROM address at which to write fahrenheit
} periodic_task_ctx_t;

// *****************************************************************************
// Private (static) storage

#ifdef PRINT_STATE_TRANSITIONS
#define EXPAND_TASK_STATE_NAMES(_name) #_name,
static const char *s_periodic_task_state_names[] = {
    PERIODIC_STATES(EXPAND_TASK_STATE_NAMES)};
#endif

static periodic_task_ctx_t s_periodic_task_ctx;

static mu_task_t s_periodic_task;

static mu_periodic_t s_timer;

// *****************************************************************************
// Private (forward) declarations

/**
 * @brief The main state machine for the task.
 */
static void periodic_task_fn(void *ctx, void *arg);

/**
 * @brief Set the state for the task.  Provided for debugging.
 */
static void set_state(periodic_task_state_t state);

#ifdef PRINT_STATE_TRANSITIONS
/**
 * @brief Return a printable name for the state.
 */
static const char *state_name(periodic_task_state_t state);
#endif

/**
 * @brief Convert array of two uint8_t to fahrenheit.
 */
static int8_t convert_to_fahrenheit(uint8_t *buf);

// *****************************************************************************
// Public code

void periodic_task_init(void) {
  mu_task_init(&s_periodic_task, periodic_task_fn, &s_periodic_task_ctx);
  s_periodic_task_ctx.write_idx = 0;
  s_periodic_task_ctx.state = PERIODIC_TASK_STATE_ACQUIRE_TEMP_SENSOR;
}

void periodic_task_start(void) {
  // Create a periodic timer to invoke periodic_task once a second.
  mu_periodic_init(&s_timer);
  mu_periodic_start(
      &s_timer, mu_time_ms_to_rel(PERIODIC_TASK_REPEAT_MS), &s_periodic_task);
}

// *****************************************************************************
// Private (static) code

static void periodic_task_fn(void *ctx, void *arg) {
  (void)arg;
  periodic_task_ctx_t *self = (periodic_task_ctx_t *)ctx;

  switch (self->state) {
  case PERIODIC_TASK_STATE_ACQUIRE_TEMP_SENSOR: {
    // Arrive here when the periodic task first runs
    set_state(PERIODIC_TASK_STATE_START_TEMP_SENSOR_WRITE);
    APP_ReserveI2C(&s_periodic_task);
    // APP_ReserveI2C() will invoke s_periodic_task when access is granted.
  } break;

  case PERIODIC_TASK_STATE_START_TEMP_SENSOR_WRITE: {
    // Arrive here when the periodic task has exclusive access to the I2C0 bus.
    // Initiate a write on the I2C bus set up the read register address.
    s_periodic_task_ctx.buf[0] = APP_TASK_TEMPERATURE_I2C_REG_ADDR;
    // write temperature register address to device
    i2c_driver_err_t err = i2c_driver_write(APP_TASK_TEMPERATURE_I2C_SLAVE_ADDR,
                                          s_periodic_task_ctx.buf,
                                          1,
                                          &s_periodic_task);
    if (err != I2C_DRIVER_ERR_NONE) {
      set_state(PERIODIC_TASK_STATE_ERROR);
    } else {
      set_state(PERIODIC_TASK_STATE_START_TEMP_SENSOR_READ);
    }
    // s_periodic_task will be invoked when i2c operation completes.
  } break;

  case PERIODIC_TASK_STATE_START_TEMP_SENSOR_READ: {
    // Initiate a read on the i2C bus to get the raw temperature from device
    i2c_driver_err_t err = i2c_driver_read(APP_TASK_TEMPERATURE_I2C_SLAVE_ADDR,
                                         s_periodic_task_ctx.buf,
                                         2,
                                         &s_periodic_task);
    if (err != I2C_DRIVER_ERR_NONE) {
      set_state(PERIODIC_TASK_STATE_ERROR);
    } else {
      set_state(PERIODIC_TASK_STATE_ACQUIRE_EEPROM);
    }
    // i2c_task_read() will invoke s_periodic_task on completion
  } break;

  case PERIODIC_TASK_STATE_ACQUIRE_EEPROM: {
    // Arrive here with raw temperature data in buf[0], buf[1].  Convert...
    s_periodic_task_ctx.fahrenheit =
        convert_to_fahrenheit(s_periodic_task_ctx.buf);
    // Release I2C to enable any other task that might be waiting before
    // acquiring exclusive access for the EEPROM.
    APP_ReleaseI2C(&s_periodic_task);
    set_state(PERIODIC_TASK_STATE_START_EEPROM_WRITE);
    APP_ReserveI2C(&s_periodic_task);
    // APP_ReserveI2C() will invoke s_periodic_task when access is granted.
  } break;

  case PERIODIC_TASK_STATE_START_EEPROM_WRITE: {
    // Arrive here with temperature in s_periodic_task_ctx.fahrenheit and
    // exclusive access to the I2C bus for EEPROM.  Update the EEPROM write
    // address and write to the EEPROM.
    if (s_periodic_task_ctx.write_idx >= PERIODIC_TASK_EEPROM_MAX_LOG_VALUES) {
      s_periodic_task_ctx.write_idx = 0;
    }
    s_periodic_task_ctx.buf[0] =
        PERIODIC_TASK_EEPROM_LOG_MEMORY_ADDR + s_periodic_task_ctx.write_idx++;
    s_periodic_task_ctx.buf[1] = s_periodic_task_ctx.fahrenheit;
    i2c_driver_err_t err = i2c_driver_write(APP_TASK_EEPROM_I2C_SLAVE_ADDR,
                                          s_periodic_task_ctx.buf,
                                          2,
                                          &s_periodic_task);
    if (err != I2C_DRIVER_ERR_NONE) {
      set_state(PERIODIC_TASK_STATE_ERROR);
    } else {
      set_state(PERIODIC_TASK_STATE_ACQUIRE_SERIAL_TX);
    }
    // i2c_task_write() will invoke s_periodic_task on completion
  } break;

  case PERIODIC_TASK_STATE_ACQUIRE_SERIAL_TX: {
    // Arrive here after temperature data has been written to the EEPROM.
    // Acquire exclusive access to the serial transmitter.
    set_state(PERIODIC_TASK_STATE_START_SERIAL_TX);
    APP_ReserveSerialTx(&s_periodic_task);
    // APP_ReserveSerialTx() will invoke s_periodic_task when access is granted.
  } break;

  case PERIODIC_TASK_STATE_START_SERIAL_TX: {
    // Arrive here with temperature in s_periodic_task_ctx.fahrenheit
    static uint8_t buf[24];
    snprintf((char *)buf,
             sizeof(buf),
             "\nTemperature = %d F",
             s_periodic_task_ctx.fahrenheit);
    usart_driver_err_t err = usart_driver_tx(
        (const uint8_t *)buf, strlen((const char *)buf), &s_periodic_task);
    if (err != USART_DRIVER_ERR_NONE) {
      set_state(PERIODIC_TASK_STATE_ERROR);
    } else {
      set_state(PERIODIC_TASK_STATE_ENDGAME);
    }
    // usart0_tx() will invoke s_periodic_task on completion.
  } break;

  case PERIODIC_TASK_STATE_ENDGAME:
  case PERIODIC_TASK_STATE_ERROR: {
    // Arrive here normally or on error.  Make sure that any reserved resources
    // get released and set up for the next call (by the periodic timer).
    LED_Toggle();
    set_state(PERIODIC_TASK_STATE_ACQUIRE_TEMP_SENSOR);
    APP_ReleaseI2C(&s_periodic_task);
    APP_ReleaseSerialTx(&s_periodic_task);
  } break;
  } // end switch()
}

static void set_state(periodic_task_state_t state) {
  if (state != s_periodic_task_ctx.state) {
#ifdef PRINT_STATE_TRANSITIONS
    const char *s1 = state_name(s_periodic_task_ctx.state);
    const char *s2 = state_name(state);
    printf("\n%8d %s => %s", mu_rtc_now(), s1, s2);
#endif
    s_periodic_task_ctx.state = state;
  }
}

#ifdef PRINT_STATE_TRANSITIONS
static const char *state_name(periodic_task_state_t state) {
  return s_periodic_task_state_names[state];
}
#endif

static int8_t convert_to_fahrenheit(uint8_t *pRawValue) {
  int16_t t1 = (pRawValue[0] << 8) | pRawValue[1];
  int32_t t2 = t1; // sign extend
  uint16_t f = (t2 * 9) / 5;
  return f / 256 + 32;
}
