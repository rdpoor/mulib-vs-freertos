/**
 * @file mu_seuqnce_test.c
 *
 * MIT License
 *
 * Copyright (c) 2022 R. Dunbar Poor
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
 *
 */

// *****************************************************************************
// Includes

#include "mu_test_utils.h"
#include "mu_task.h"
#include <stddef.h>

// *****************************************************************************
// Local (private) types and definitions

typedef struct {
  int count;
} ctx_t;

// *****************************************************************************
// Local (private, static) forward declarations

static void task_fn(void *ctx, void *arg);

// *****************************************************************************
// Local (private, static) storage

static mu_task_t s_task;
static ctx_t s_ctx;
static int s_arg;

// *****************************************************************************
// Public code

void mu_task_test() {

  // mu_task_init returns task.
  ASSERT(mu_task_init(&s_task, task_fn, &s_ctx) == &s_task);

  mu_task_fn mu_task_get_fn(mu_task_t *task);

  // mu_task_get_fn returns function
  ASSERT(mu_task_get_fn(&s_task) == task_fn);

  // mu_task_get_ctx returns function
  ASSERT(mu_task_get_ctx(&s_task) == &s_ctx);

  s_ctx.count = 21;
  mu_task_call(&s_task, &s_arg);
  // mu_task_call invokes the function
  ASSERT(s_ctx.count == 22);

  // mu_task_call)() with NULL task is permitted as a convenience
  mu_task_call(NULL, NULL);
  ASSERT(s_ctx.count == 22);
}

// *****************************************************************************
// Local (private, static) code

static void task_fn(void *ctx, void *arg) {
  ctx_t *task_ctx = (ctx_t *)ctx;
  int *task_arg = (int *)arg;

  // task_fn is passed context as first parameter
  ASSERT(task_ctx == &s_ctx);
  // task_fn is passed user argument as second parameter
  ASSERT(task_arg == &s_arg);

  task_ctx->count += 1;
}
