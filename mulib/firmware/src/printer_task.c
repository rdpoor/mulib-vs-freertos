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

#include "printer_task.h"

#include "definitions.h"
#include "mu_rtc.h"
#include "mu_sched.h"
#include "mu_task.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// *****************************************************************************
// Private types and definitions

#define PRINTER_STATES(M)                                                      \
  M(PRINTER_TASK_STATE_IDLE)                                                   \
  M(PRINTER_TASK_STATE_PRINTING)                                               \
  M(PRINTER_TASK_STATE_COMPLETED)                                              \
  M(PRINTER_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { PRINTER_STATES(EXPAND_TASK_STATES) } printer_task_state_t;

typedef struct {
  printer_task_state_t state;
  mu_task_t *on_completion;
} printer_task_ctx_t;

// *****************************************************************************
// Private (static) storage

#define EXPAND_TASK_STATE_NAMES(_name) #_name,
static const char *s_printer_task_state_names[] = {
    PRINTER_STATES(EXPAND_TASK_STATE_NAMES)};

static printer_task_ctx_t s_printer_task_ctx;

static mu_task_t s_printer_task;

// *****************************************************************************
// Private (forward) declarations

static void set_state(printer_task_state_t state);
static const char *state_name(printer_task_state_t state);
static void printer_task_fn(void *ctx, void *arg);

static void usart_tx_cb(uintptr_t context);

// *****************************************************************************
// Public code

void printer_task_init(void) {
  // register the callback function.
  SERCOM2_USART_WriteCallbackRegister(usart_tx_cb,
                                      (uintptr_t)&s_printer_task_ctx);
  mu_task_init(&s_printer_task, printer_task_fn, &s_printer_task_ctx);
  s_printer_task_ctx.state = PRINTER_TASK_STATE_IDLE;
  s_printer_task_ctx.on_completion = NULL;
}

mu_task_t *printer_task(void) { return &s_printer_task; }

bool printer_task_is_idle(void) {
  return s_printer_task_ctx.state == PRINTER_TASK_STATE_IDLE;
}

printer_task_err_t printer_task_print(uint8_t *buffer, size_t n_bytes,
                                      mu_task_t *on_completion) {
  if (!printer_task_is_idle()) {
    return PRINTER_TASK_ERR_BUSY;
  } else if (!SERCOM2_USART_Write(buffer, n_bytes)) {
    return PRINTER_TASK_ERR_BAD_PARAM;
  } else {
    s_printer_task_ctx.on_completion = on_completion;
    set_state(PRINTER_TASK_STATE_PRINTING);
    // TODO: mu_sched_now(...);
    mu_sched_at(printer_task(), mu_rtc_now());
    return PRINTER_TASK_ERR_NONE;
  }
}

// *****************************************************************************
// Private (static) code

static void set_state(printer_task_state_t state) {
  if (state != s_printer_task_ctx.state) {
    const char *s1 = state_name(s_printer_task_ctx.state);
    const char *s2 = state_name(state);
    (void)s1;
    (void)s2;
    // TODO: Use logger to record state transitions.
    s_printer_task_ctx.state = state;
  }
}

static const char *state_name(printer_task_state_t state) {
  return s_printer_task_state_names[state];
}

static void printer_task_fn(void *ctx, void *arg) {
  (void)arg;
  printer_task_ctx_t *self = (printer_task_ctx_t *)ctx;

  switch (self->state) {
  case PRINTER_TASK_STATE_IDLE: {
    // wait here until a call to printer_task_print() advances the state.
  } break;

  case PRINTER_TASK_STATE_PRINTING: {
    // wait here until the usart_tx_cb advances the state.
  } break;

  case PRINTER_TASK_STATE_COMPLETED: {
    set_state(PRINTER_TASK_STATE_IDLE);
    if (s_printer_task_ctx.on_completion != NULL) {
      mu_task_call(s_printer_task_ctx.on_completion, NULL);
    }
  } break;

  case PRINTER_TASK_STATE_ERROR: {
    // arrive here upon some error in printing.
  } break;
  }
}

// Called from interrupt level when printing completes
static void usart_tx_cb(uintptr_t context) {
  printer_task_ctx_t *self = (printer_task_ctx_t *)context;
  // Because we are at interrupt level, set state directly rather than calling
  // set_state() to avoid extra I/O while in interrupt level.
  self->state = PRINTER_TASK_STATE_COMPLETED;
  mu_sched_from_isr(printer_task());
}
