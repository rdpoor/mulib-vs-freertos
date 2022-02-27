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

#include "template_task.h"

#include "mu_task.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

// ****************************************************************************=
// Private types and definitions

#define TEMPLATE_STATES(M)                                                     \
  M(TEMPLATE_TASK_STATE_INIT)                                                  \
  M(TEMPLATE_TASK_STATE_SUCCESS)                                               \
  M(TEMPLATE_TASK_STATE_ERROR)

#define EXPAND_TASK_STATES(_name) _name,
typedef enum { TEMPLATE_STATES(EXPAND_TASK_STATES) } template_task_state_t;

typedef struct {
  template_task_state_t state;
} template_task_ctx_t;

// ****************************************************************************=
// Private (static) storage

#define EXPAND_TASK_STATE_NAMES(_name) #_name,
static const char *s_template_task_state_names[] = {
    TEMPLATE_STATES(EXPAND_TASK_STATE_NAMES)};

static template_task_ctx_t s_template_task_ctx;

static mu_task_t s_template_task;

// ****************************************************************************=
// Private (forward) declarations

static void set_state(template_task_state_t state);
static const char *state_name(template_task_state_t state);
static void template_task_fn(void *ctx, void *arg);

// ****************************************************************************=
// Public code

void template_task_init(void) {
  mu_task_init(&s_template_task, template_task_fn, &s_template_task_ctx);
  s_template_task_ctx.state = TEMPLATE_TASK_STATE_INIT;
}

mu_task_t *template_task(void) { return &s_template_task; }

bool template_task_is_idle(void) { return true; }

template_task_err_t template_task_write(uint8_t *buf, size_t n_bytes) {
  (void)buf;
  (void)n_bytes;
  return TEMPLATE_TASK_ERR_NONE;
}

template_task_err_t template_task_read(uint8_t *buf, size_t n_bytes) {
  (void)buf;
  (void)n_bytes;
  return TEMPLATE_TASK_ERR_NONE;
}

// ****************************************************************************=
// Private (static) code

static void set_state(template_task_state_t state) {
  if (state != s_template_task_ctx.state) {
    printf("\n%s => %s", state_name(s_template_task_ctx.state),
           state_name(state));
    s_template_task_ctx.state = state;
  }
}

static const char *state_name(template_task_state_t state) {
  return s_template_task_state_names[state];
}

static void template_task_fn(void *ctx, void *arg) {
  (void)arg;
  template_task_ctx_t *self = (template_task_ctx_t *)ctx;

  switch (self->state) {
  case TEMPLATE_TASK_STATE_INIT: {
      set_state(TEMPLATE_TASK_STATE_SUCCESS);
  } break;

  case TEMPLATE_TASK_STATE_SUCCESS: {

  } break;
  case TEMPLATE_TASK_STATE_ERROR: {

  } break;
  }
}
