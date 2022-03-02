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

#include "ui_task.h"

#include "mu_task.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

// ****************************************************************************=
// Private types and definitions

#define ui_STATES(M)                                                     \
  M(UI_TASK_STATE_INIT)                                                  \
  M(UI_TASK_STATE_IDLE)                                                  \
  M(UI_TASK_STATE_SUCCESS)                                               \
  M(UI_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { ui_STATES(EXPAND_TASK_STATES) } ui_task_state_t;

typedef struct {
  ui_task_state_t state;
} ui_task_ctx_t;

// ****************************************************************************=
// Private (static) storage

#define EXPAND_TASK_STATE_NAMES(_name) #_name,
static const char *s_ui_task_state_names[] = {
    ui_STATES(EXPAND_TASK_STATE_NAMES)};

static ui_task_ctx_t s_ui_task_ctx;

static mu_task_t s_ui_task;

// ****************************************************************************=
// Private (forward) declarations

static void set_state(ui_task_state_t state);
static const char *state_name(ui_task_state_t state);
static void ui_task_fn(void *ctx, void *arg);

// ****************************************************************************=
// Public code

void ui_task_init(void) {
  mu_task_init(&s_ui_task, ui_task_fn, &s_ui_task_ctx);
  s_ui_task_ctx.state = UI_TASK_STATE_INIT;
}

mu_task_t *ui_task(void) { return &s_ui_task; }

// ****************************************************************************=
// Private (static) code

static void set_state(ui_task_state_t state) {
  if (state != s_ui_task_ctx.state) {
    printf("\n%s => %s", state_name(s_ui_task_ctx.state),
           state_name(state));
    s_ui_task_ctx.state = state;
  }
}

static const char *state_name(ui_task_state_t state) {
  return s_ui_task_state_names[state];
}

static void ui_task_fn(void *ctx, void *arg) {
  (void)arg;
  ui_task_ctx_t *self = (ui_task_ctx_t *)ctx;

  switch (self->state) {
  case UI_TASK_STATE_INIT: {
      set_state(UI_TASK_STATE_SUCCESS);
  } break;

  case UI_TASK_STATE_SUCCESS: {

  } break;
  case UI_TASK_STATE_ERROR: {

  } break;
  }
}
