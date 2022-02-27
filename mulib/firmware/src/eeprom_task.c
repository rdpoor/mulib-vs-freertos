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

// ****************************************************************************=
// Includes

#include "eeprom_task.h"

#include "mu_task.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

// ****************************************************************************=
// Private types and definitions

#define EEPROM_STATES(M)                                                       \
  M(EEPROM_TASK_STATE_INIT)                                                    \
  M(EEPROM_TASK_STATE_SUCCESS)                                                 \
  M(EEPROM_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { EEPROM_STATES(EXPAND_TASK_STATES) } eeprom_task_state_t;

typedef struct {
  eeprom_task_state_t state;
} eeprom_task_ctx_t;

// ****************************************************************************=
// Private (static) storage

#define EXPAND_TASK_STATE_NAMES(_name) #_name,
static const char *s_eeprom_task_state_names[] = {
    EEPROM_STATES(EXPAND_TASK_STATE_NAMES)};

static eeprom_task_ctx_t s_eeprom_task_ctx;

static mu_task_t s_eeprom_task;

// ****************************************************************************=
// Private (forward) declarations

static void set_state(eeprom_task_state_t state);
static const char *state_name(eeprom_task_state_t state);
static void eeprom_task_fn(void *ctx, void *arg);

// ****************************************************************************=
// Public code

void eeprom_task_init(void) {
  mu_task_init(&s_eeprom_task, eeprom_task_fn, &s_eeprom_task_ctx);
  s_eeprom_task_ctx.state = EEPROM_TASK_STATE_INIT;
}

mu_task_t *eeprom_task(void) { return &s_eeprom_task; }

bool eeprom_task_is_idle(void) { return true; }

eeprom_task_err_t eeprom_task_write(uint8_t *buf, size_t n_bytes) {
  (void)buf;
  (void)n_bytes;
  return EEPROM_TASK_ERR_NONE;
}

eeprom_task_err_t eeprom_task_read(uint8_t *buf, size_t n_bytes) {
  (void)buf;
  (void)n_bytes;
  return EEPROM_TASK_ERR_NONE;
}

// ****************************************************************************=
// Private (static) code

static void set_state(eeprom_task_state_t state) {
  if (state != s_eeprom_task_ctx.state) {
    printf("\n%s => %s", state_name(s_eeprom_task_ctx.state),
           state_name(state));
    s_eeprom_task_ctx.state = state;
  }
}

static const char *state_name(eeprom_task_state_t state) {
  return s_eeprom_task_state_names[state];
}

static void eeprom_task_fn(void *ctx, void *arg) {
  (void)arg;
  eeprom_task_ctx_t *self = (eeprom_task_ctx_t *)ctx;

  switch (self->state) {
  case EEPROM_TASK_STATE_INIT: {
      set_state(EEPROM_TASK_STATE_SUCCESS);
  } break;

  case EEPROM_TASK_STATE_SUCCESS: {

  } break;
  case EEPROM_TASK_STATE_ERROR: {

  } break;
  }
}
