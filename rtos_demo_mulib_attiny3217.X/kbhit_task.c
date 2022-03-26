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

// *****************************************************************************
// Includes

#include "kbhit_task.h"

#include "app.h"
#include "app_config.h"
#include "i2c0_task.h"
#include "mu_rtc.h"
#include "mu_task.h"
#include "usart0.h"
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

// *****************************************************************************
// Private types and definitions

// The states of the periodic task
#define KBHIT_STATES(M)                                                        \
  M(KBHIT_TASK_STATE_ACQUIRE_EEPROM)                                           \
  M(KBHIT_TASK_STATE_START_EEPROM_WRITE)                                       \
  M(KBHIT_TASK_STATE_START_EEPROM_READ)                                        \
  M(KBHIT_TASK_STATE_ACQUIRE_SERIAL_TX)                                        \
  M(KBHIT_TASK_STATE_START_SERIAL_TX)                                          \
  M(KBHIT_TASK_STATE_ENDGAME)                                                  \
  M(KBHIT_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { KBHIT_STATES(EXPAND_TASK_STATES) } kbhit_task_state_t;

typedef struct {
  kbhit_task_state_t state;                     // task state
  uint8_t buf[I2C0_TASK_EEPROM_MAX_LOG_VALUES]; // read from eeprom
} kbhit_task_ctx_t;

// *****************************************************************************
// Private (static) storage

#ifdef PRINT_STATE_TRANSITIONS
#define EXPAND_TASK_STATE_NAMES(_name) #_name,
static const char *s_kbhit_task_state_names[] = {
    KBHIT_STATES(EXPAND_TASK_STATE_NAMES)};
#endif

static mu_task_t s_kbhit_task;
static kbhit_task_ctx_t s_kbhit_task_ctx;

// *****************************************************************************
// Private (forward) declarations

static void kbhit_task_fn(void *ctx, void *arg);

/**
 * @brief Set the state for the task.  Provided for debugging.
 */
static void set_state(kbhit_task_state_t state);

#ifdef PRINT_STATE_TRANSITIONS
/**
 * @brief Return a printable name for the state.
 */
static const char *state_name(kbhit_task_state_t state);
#endif

static void start_listening(void);

// *****************************************************************************
// Public code

void kbhit_task_init(void) {
  // Initialize the kbhit_task and context.
  mu_task_init(&s_kbhit_task, kbhit_task_fn, &s_kbhit_task_ctx);
  s_kbhit_task_ctx.state = KBHIT_TASK_STATE_ACQUIRE_EEPROM;
}

void kbhit_task_start(void) { start_listening(); }

// *****************************************************************************
// Private (static) code

static void kbhit_task_fn(void *ctx, void *arg) {
  (void)ctx;
  (void)arg;

  switch (s_kbhit_task_ctx.state) {
  case KBHIT_TASK_STATE_ACQUIRE_EEPROM: {
    // Arrive here when a character was typed.
    set_state(KBHIT_TASK_STATE_START_EEPROM_WRITE);
    APP_ReserveI2C(&s_kbhit_task);
    // APP_ReserveI2C() will invoke kbhit_task when access is granted.
  } break;

  case KBHIT_TASK_STATE_START_EEPROM_WRITE: {
    // Arrive here when kbhit_task has exclusive access to I2C0 bus
    // To read bytes from the EEPROM, first set the read address.
    s_kbhit_task_ctx.buf[0] = I2C0_TASK_EEPROM_LOG_MEMORY_ADDR;
    i2c0_task_err_t err = i2c0_task_write(
        I2C0_TASK_EEPROM_SLAVE_ADDR, s_kbhit_task_ctx.buf, 1, &s_kbhit_task);
    if (err != I2C0_TASK_ERR_NONE) {
      set_state(KBHIT_TASK_STATE_ERROR);
    } else {
      set_state(KBHIT_TASK_STATE_START_EEPROM_READ);
    }
    // i2c0_task_write() will invoke kbhit_task on completion.
  } break;

  case KBHIT_TASK_STATE_START_EEPROM_READ: {
    // Arrive here when the read address is set in the EEPROM.  Initiate a
    // read operation.
    i2c0_task_err_t err = i2c0_task_read(I2C0_TASK_EEPROM_SLAVE_ADDR,
                                         s_kbhit_task_ctx.buf,
                                         I2C0_TASK_EEPROM_MAX_LOG_VALUES,
                                         &s_kbhit_task);
    if (err != I2C0_TASK_ERR_NONE) {
      set_state(KBHIT_TASK_STATE_ERROR);
    } else {
      set_state(KBHIT_TASK_STATE_ACQUIRE_SERIAL_TX);
    }
    // i2c0_task_read() will invoke kbhit_task on completion.
  } break;

  case KBHIT_TASK_STATE_ACQUIRE_SERIAL_TX: {
    // Arrive here with I2C0_TASK_EEPROM_MAX_LOG_VALUES bytes of data in
    // s_kbhit_task_ctx.buf[].  Acquire exclusive rights to the serial
    // printer before printing...
    set_state(KBHIT_TASK_STATE_START_SERIAL_TX);
    APP_ReserveSerialTx(&s_kbhit_task);
    // APP_ReserveSerialTx() will invoke kbhit_task when access is granted.
  } break;

  case KBHIT_TASK_STATE_START_SERIAL_TX: {
    // Arrive here with exclusive access to the serial tx.
    static uint8_t buf[40];
    snprintf((char *)buf,
             sizeof(buf),
             "\nEEPROM:%02d|%02d|%02d|%02d|%02d|",
             s_kbhit_task_ctx.buf[0],
             s_kbhit_task_ctx.buf[1],
             s_kbhit_task_ctx.buf[2],
             s_kbhit_task_ctx.buf[3],
             s_kbhit_task_ctx.buf[4]);
    usart0_err_t err = usart0_tx(
        (const uint8_t *)buf, strlen((const char *)buf), &s_kbhit_task);
    if (err != USART0_ERR_NONE) {
      set_state(KBHIT_TASK_STATE_ERROR);
    } else {
      set_state(KBHIT_TASK_STATE_ENDGAME);
    }
    // usart0_tx() will invoke kbhit_task on completion.
  } break;

  case KBHIT_TASK_STATE_ENDGAME:
  case KBHIT_TASK_STATE_ERROR: {
    // Set up to receive notification of another keystroke.
    APP_ReleaseSerialTx(&s_kbhit_task);
    APP_ReleaseI2C(&s_kbhit_task);
    start_listening();
  } break;

  } // switch()
}

static void set_state(kbhit_task_state_t state) {
  if (state != s_kbhit_task_ctx.state) {
#ifdef PRINT_STATE_TRANSITIONS
    const char *s1 = state_name(s_kbhit_task_ctx.state);
    const char *s2 = state_name(state);
    printf("\n%8d %s => %s", mu_rtc_now(), s1, s2);
#endif
    s_kbhit_task_ctx.state = state;
  }
}

#ifdef PRINT_STATE_TRANSITIONS
static const char *state_name(kbhit_task_state_t state) {
  return s_kbhit_task_state_names[state];
}
#endif

static void start_listening(void) {
  // Arrive here when ready to listen for a keystroke
  set_state(KBHIT_TASK_STATE_ACQUIRE_EEPROM);
  usart0_rx(NULL, &s_kbhit_task);
  // usart0_rx() will invoke kbhit_task when a char is received.
}
