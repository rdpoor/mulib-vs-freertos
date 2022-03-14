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

#include "ui_task.h"

#include "i2c_task.h"
#include "mcc_generated_files/mcc.h"
#include "mu_rtc.h"
#include "mu_sched.h"
#include "mu_task.h"
#include "sensor_task.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>

// *****************************************************************************
// Private types and definitions

#define ui_STATES(M)                                                           \
  M(UI_TASK_STATE_INIT)                                                        \
  M(UI_TASK_STATE_IDLE)                                                        \
  M(UI_TASK_START_EEPROM_READ)                                                 \
  M(UI_TASK_STATE_READING_EEPROM)                                              \
  M(UI_TASK_STATE_PRINTING)                                                    \
  M(UI_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { ui_STATES(EXPAND_TASK_STATES) } ui_task_state_t;

typedef struct {
  ui_task_state_t state;
  uint8_t ch; // received serial byte.  Not currently used.
  uint8_t buf[SENSOR_TASK_EEPROM_MAX_LOG_VALUES]; // read from eeprom
} ui_task_ctx_t;

// *****************************************************************************
// Private (static) storage

#define EXPAND_TASK_STATE_NAMES(_name) #_name,
static const char *s_ui_task_state_names[] = {
    ui_STATES(EXPAND_TASK_STATE_NAMES)};

static ui_task_ctx_t s_ui_task_ctx;

static mu_task_t s_ui_task;

// *****************************************************************************
// Private (forward) declarations

/**
 * @brief The primary state maachine for the ui_task.
 */
static void ui_task_fn(void *ctx, void *arg);

/**
 * @brief Set the state for the task.  Provided for debugging.
 */
static void set_state(ui_task_state_t state);

/**
 * @brief Return a printable name for the state.
 */
static const char *state_name(ui_task_state_t state);

/**
 * @brief Clear the receive buffer.
 */
static void flush_rx(void);

// *****************************************************************************
// Public code

void ui_task_init(void) {
  mu_task_init(&s_ui_task, ui_task_fn, &s_ui_task_ctx);
  s_ui_task_ctx.state = UI_TASK_STATE_INIT;
  mu_sched_now(ui_task()); // schedule initial call when scheduler starts.
}

mu_task_t *ui_task(void) { return &s_ui_task; }

bool ui_task_is_idle(void) { return s_ui_task_ctx.state == UI_TASK_STATE_IDLE; }

// *****************************************************************************
// Private (static) code

static void ui_task_fn(void *ctx, void *arg) {
  (void)arg;
  ui_task_ctx_t *self = (ui_task_ctx_t *)ctx;

  switch (self->state) {
  case UI_TASK_STATE_INIT: {
    flush_rx(); // flush any stray input

    set_state(UI_TASK_STATE_IDLE);
    mu_sched_now(ui_task());
  } break;

  case UI_TASK_STATE_IDLE: {
    if (sensor_task_is_idle() && USART0_IsRxReady()) {
      // A character was typed - consume and ignore it and advance state.
      flush_rx(); // flush any stray input
      set_state(UI_TASK_START_EEPROM_READ);
    } else {
      // remain in this state until a char is typed...
    }
    // This polls the serial line.  A better implementation would wait for an
    // interrupt on the serial port.
    mu_sched_in(ui_task(), mu_time_ms_to_rel(1));
  } break;

  case UI_TASK_START_EEPROM_READ: {
    // ASSERT(sensor_task_is_idle())
    // ASSERT(i2c_task_is_idle())
    // To read bytes from EEPROM, first set the read address...
    s_ui_task_ctx.buf[0] = SENSOR_TASK_EEPROM_LOG_MEMORY_ADDR;
    i2c_task_err_t err = i2c_task_write(
        SENSOR_TASK_EEPROM_SLAVE_ADDR, s_ui_task_ctx.buf, 1, ui_task());
    if (err != I2C_TASK_ERR_NONE) {
      set_state(UI_TASK_STATE_ERROR);
    } else {
      set_state(UI_TASK_STATE_READING_EEPROM);
      // i2c_task_read_eeprom() callback will trigger next step
    }
  } break;

  case UI_TASK_STATE_READING_EEPROM: {
    // ASSERT(sensor_task_is_idle())
    // ASSERT(i2c_task_is_idle())
    i2c_task_err_t err = i2c_task_read(
        SENSOR_TASK_EEPROM_SLAVE_ADDR, s_ui_task_ctx.buf, 5, ui_task());
    if (err != I2C_TASK_ERR_NONE) {
      set_state(UI_TASK_STATE_ERROR);
    } else {
      set_state(UI_TASK_STATE_PRINTING);
      // wait for i2c_task_read() callback to resume task
    }
  } break;

  case UI_TASK_STATE_PRINTING: {
    // Arrive here when EEPROM data has been read
    printf("\nEEPROM:%02d|%02d|%02d|%02d|%02d|",
           self->buf[0],
           self->buf[1],
           self->buf[2],
           self->buf[3],
           self->buf[4]);
    set_state(UI_TASK_STATE_IDLE);
  } break;

  case UI_TASK_STATE_ERROR: {

  } break;
  } // switch()
}

static void set_state(ui_task_state_t state) {
  if (state != s_ui_task_ctx.state) {
    const char *s1 = state_name(s_ui_task_ctx.state);
    const char *s2 = state_name(state);
    printf("\n%8d %s => %s", mu_rtc_now(), s1, s2);
    // TODO: Use logger to record state transitions.
    s_ui_task_ctx.state = state;
  }
}

static const char *state_name(ui_task_state_t state) {
  return s_ui_task_state_names[state];
}

static void flush_rx(void) {
  while (USART0_IsRxReady()) {
    uint8_t ch = USART0_GetData();
    (void)ch;
  }
}
