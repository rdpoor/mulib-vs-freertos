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

#include "mcc_generated_files/mcc.h"
#include "i2c_task.h"
#include "mu_sched.h"
#include "mu_task.h"
#include "printer_task.h"
#include "ui_task.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>

// *****************************************************************************
// Private types and definitions

#define ui_STATES(M)                                                           \
  M(UI_TASK_STATE_INIT)                                                        \
  M(UI_TASK_STATE_IDLE)                                                        \
  M(UI_TASK_AWAIT_EEPROM_AVAILABLE)                                            \
  M(UI_TASK_STATE_AWAIT_PRINTER_AVAILABLE)                                     \
  M(UI_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { ui_STATES(EXPAND_TASK_STATES) } ui_task_state_t;

typedef struct {
  ui_task_state_t state;
  uint8_t ch;             // received serial byte.  Not currently used.
  uint8_t rx_buf[I2C_TASK_EEPROM_MAX_LOG_VALUES]; // read from eeprom
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

// ==========
// platform-specific declarations

/**
 * @brief Perform one-time platform specific setup.
 */
static void ui_platform_init(void);

/**
 * @brief Initiate a serial read for one byte.
 *
 * Note: tihs is required in order to receive serial read interrupt callbacks
 * (see ui_platform_rx_cb).
 */
static void ui_platform_rx(void);

/**
 * @brief Called from interrupt level when a character is received on usart.
 */
static void ui_platform_rx_cb(void);

// *****************************************************************************
// Public code

void ui_task_init(void) {
  ui_platform_init();
  mu_task_init(&s_ui_task, ui_task_fn, &s_ui_task_ctx);
  s_ui_task_ctx.state = UI_TASK_STATE_INIT;
  mu_sched_now(ui_task());  // schedule initial call when scheduler starts.
}

mu_task_t *ui_task(void) { return &s_ui_task; }

// *****************************************************************************
// Private (static) code

static void ui_task_fn(void *ctx, void *arg) {
  (void)arg;
  ui_task_ctx_t *self = (ui_task_ctx_t *)ctx;

  switch (self->state) {
  case UI_TASK_STATE_INIT: {
    // Perform any one-time initializatoin that requires that xxx_task_init()
    // has been called and the scheduler is running.
    ui_platform_rx(); // start waiting for a character
    set_state(UI_TASK_STATE_IDLE);
    mu_sched_now(ui_task());
  } break;

  case UI_TASK_STATE_IDLE: {
    // Wait here for ui_platform_rx_cb() to advance the state
  } break;

  case UI_TASK_AWAIT_EEPROM_AVAILABLE: {
    // Here to wait for EEPROM and then initiate a read operation
    i2c_task_err_t err;
    if (i2c_task_is_idle()) {
      // Initiate a read from the eeprom
      ui_platform_rx(); // discard current char, prepare for another...
      err = i2c_task_read_eeprom_bytes(
          self->rx_buf, I2C_TASK_EEPROM_MAX_LOG_VALUES, ui_task());
      if (err != I2C_TASK_ERR_NONE) {
        set_state(UI_TASK_STATE_ERROR);
      } else {
        set_state(UI_TASK_STATE_AWAIT_PRINTER_AVAILABLE);
        // i2c_task_read_eeprom() callback will trigger next step
      }
    } else {
      // I2C is busy -- check again after a short delay.
      mu_sched_in(ui_task(), mu_time_ms_to_rel(1));
    }
  } break;

  case UI_TASK_STATE_AWAIT_PRINTER_AVAILABLE: {
    // Arrive here when EEPROM data has been read
    if (printer_task_is_idle()) {
      static char print_buf[25];
      snprintf(print_buf,
               sizeof(print_buf),
               "\nEEPROM:%02d|%02d|%02d|%02d|%02d|",
               self->rx_buf[0],
               self->rx_buf[1],
               self->rx_buf[2],
               self->rx_buf[3],
               self->rx_buf[4]);
      printer_task_print((uint8_t *)print_buf, strlen(print_buf), ui_task());
      set_state(UI_TASK_STATE_IDLE);
      // printer_task_print() callback will trigger next step
    } else {
      // Printer is busy -- check again after a short delay
      mu_sched_in(ui_task(), mu_time_ms_to_rel(1));
    }
  } break;

  case UI_TASK_STATE_ERROR: {

  } break;
  } // switch()
}

static void set_state(ui_task_state_t state) {
  if (state != s_ui_task_ctx.state) {
    const char *s1 = state_name(s_ui_task_ctx.state);
    const char *s2 = state_name(state);
    (void)s1;
    (void)s2;
    // TODO: Use logger to record state transitions.
    s_ui_task_ctx.state = state;
  }
}

static const char *state_name(ui_task_state_t state) {
  return s_ui_task_state_names[state];
}

// *****************************************************************************
// Platform specific code below here.

static void ui_platform_init(void) {
  USART0_SetRXISRCb(ui_platform_rx_cb);
}

static void ui_platform_rx(void) {
  uint8_t data = USART0.RXDATAL; // clear the rx buffer
  (void)data;                    // supress unused variable warning
  USART0_EnableRx();             // make sure USART receiver is enabled
}

static void ui_platform_rx_cb(void) {
  uint8_t data = USART0.RXDATAL; // clear the rx buffer
  (void)data;                    // supress unused variable warning

  ui_task_ctx_t *self = (ui_task_ctx_t *)mu_task_get_ctx(ui_task());
  if (self->state == UI_TASK_STATE_IDLE) {
    self->state = UI_TASK_AWAIT_EEPROM_AVAILABLE;
    mu_sched_from_isr(ui_task());
  }
}
