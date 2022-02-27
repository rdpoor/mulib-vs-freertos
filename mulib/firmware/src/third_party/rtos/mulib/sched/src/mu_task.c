/**
 * MIT License
 *
 * Copyright (c) 2020 R. D. Poor <rdpoor@gmail.com>
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

#include "mu_task.h"

#include "mu_event.h"
#include "mu_list.h"
#include <stddef.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private declarations

// *****************************************************************************
// Local storage

// *****************************************************************************
// Public code

mu_task_t *mu_task_init(mu_task_t *task, mu_task_fn fn, void *ctx) {
  task->fn = fn;
  task->ctx = ctx;
  mu_list_init(&task->_link);
  task->_event = NULL;
  return task;
}

mu_task_fn mu_task_get_fn(mu_task_t *task) { return task->fn; }

void *mu_task_get_ctx(mu_task_t *task) { return task->ctx; }

void mu_task_call(mu_task_t *task, void *arg) {
  if (task != NULL) { // allow null task => no-op
    task->fn(task->ctx, arg);
  }
}

mu_list_t *mu_task_get_link(mu_task_t *task) { return &task->_link; }

mu_event_t *mu_task_get_event(mu_task_t *task) { return task->_event; }

// *****************************************************************************
// Private functions
