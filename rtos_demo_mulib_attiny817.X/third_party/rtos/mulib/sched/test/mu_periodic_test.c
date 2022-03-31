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

#include "mu_periodic.h"
#include "mu_sched.h"
#include "mu_task.h"
#include "mu_time.h"

#include <stdio.h>

// *****************************************************************************
// Local (private) types and definitions

typedef struct {
  int call_count;
} ctx_t;

// *****************************************************************************
// Local (private, static) forward declarations

static void reset(void);
static void set_test_time(mu_time_abs_t time);
static mu_time_abs_t get_test_time(void);
static void task_fn(void *ctx, void *arg);

// *****************************************************************************
// Local (private, static) storage

static mu_task_t s_task1;
static ctx_t s_task1_ctx;
static mu_periodic_t s_periodic;
static mu_time_abs_t s_time;

// *****************************************************************************
// Public code

void mu_periodic_test() {

  reset();
  ASSERT(mu_periodic_init(&s_periodic) == &s_periodic);
  ASSERT(mu_periodic_is_running(&s_periodic) == false);

  set_test_time(20);
  ASSERT(mu_periodic_start(&s_periodic, 10, &s_task1) == true);
  ASSERT(s_task1_ctx.call_count == 1); // task is called immediately on start()
  set_test_time(29);
  mu_sched_step();
  ASSERT(s_task1_ctx.call_count == 1); // has not yet been triggered
  set_test_time(30);
  mu_sched_step();
  ASSERT(s_task1_ctx.call_count == 2); // triggered
  set_test_time(31);
  mu_sched_step();
  ASSERT(s_task1_ctx.call_count == 2); // not yet...
  set_test_time(39);
  mu_sched_step();
  ASSERT(s_task1_ctx.call_count == 2); // not yet...
  set_test_time(40);
  mu_sched_step();
  ASSERT(s_task1_ctx.call_count == 3); // triggered

  ASSERT(mu_periodic_start(&s_periodic, 10, &s_task1) == false);
  ASSERT(mu_periodic_is_running(&s_periodic) == true);
  ASSERT(mu_periodic_stop(&s_periodic) == true); // now stopped...
  ASSERT(mu_periodic_is_running(&s_periodic) == false);
  ASSERT(mu_periodic_stop(&s_periodic) == false); // already stopped...

  set_test_time(45);
  mu_sched_step();
  ASSERT(s_task1_ctx.call_count == 3); // not running, not triggered
  ASSERT(mu_periodic_start(&s_periodic, 10, &s_task1) == true); // now running
  ASSERT(s_task1_ctx.call_count == 4); // called immediately
  set_test_time(54);
  mu_sched_step();
  ASSERT(s_task1_ctx.call_count == 4); // not yet
  set_test_time(55);
  mu_sched_step();
  ASSERT(s_task1_ctx.call_count == 5); // triggered
}

// *****************************************************************************
// Local (private, static) code

static void reset(void) {
  mu_periodic_init(&s_periodic);
  mu_sched_init();
  mu_sched_set_clock_source(get_test_time);
  set_test_time(0);
  mu_task_init(&s_task1, task_fn, &s_task1_ctx);
  s_task1_ctx.call_count = 0;
}

static void set_test_time(mu_time_abs_t time) { s_time = time; }

static mu_time_abs_t get_test_time(void) { return s_time; }

static void task_fn(void *ctx, void *arg) {
  ctx_t *self = (ctx_t *)ctx;
  (void)arg;
  self->call_count += 1;
}
