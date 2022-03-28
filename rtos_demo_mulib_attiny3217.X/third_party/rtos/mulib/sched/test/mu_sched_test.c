/**
 * @file mu_sched_test.c
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

#include "mu_sched.h"
#include "mu_test_utils.h"

#include "mu_event.h"
#include "mu_task.h"
#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// Local (private) types and definitions

typedef struct {
  int call_count;
} counting_ctx_t;

// *****************************************************************************
// Local (private, static) forward declarations

// Set everything back to a known state.
static void reset(void);

// Give us the power to control time!
static void set_local_time(mu_time_abs_t t);
static mu_time_abs_t get_local_time(void);

// functions for test tasks
static void counting_fn(void *ctx, void *arg);
static void idle_fn(void *ctx, void *arg);

// *****************************************************************************
// Local (private, static) storage

static counting_ctx_t s_counting_ctx1;
static counting_ctx_t s_counting_ctx2;
static counting_ctx_t s_counting_ctx3;
static counting_ctx_t s_counting_ctx4;
static counting_ctx_t s_counting_ctx5;
static mu_task_t s_counting_task1;
static mu_task_t s_counting_task2;
static mu_task_t s_counting_task3;
static mu_task_t s_counting_task4;
static mu_task_t s_counting_task5;

static mu_task_t s_idle_task;

static mu_time_abs_t s_local_time;

// *****************************************************************************
// Public code

void mu_sched_test(void) {
  mu_event_t *event = NULL;

  reset();
  // operations on an empty schedule
  ASSERT(mu_sched_get_clock_source() == get_local_time);
  ASSERT(mu_sched_get_idle_task() == &s_idle_task);
  ASSERT(mu_sched_is_empty() == true);
  ASSERT(mu_sched_get_current_task() == NULL);
  ASSERT(mu_sched_get_current_event() == NULL);
  ASSERT(mu_sched_peek_next_event() == NULL);

  set_local_time(100);
  ASSERT(mu_sched_get_current_time() == 100);

  ASSERT(mu_sched_now(&s_counting_task1) == MU_SCHED_ERR_NONE);
  ASSERT(mu_sched_is_empty() == false);
  event = mu_sched_peek_next_event();
  ASSERT(event != NULL);
  ASSERT(mu_event_get_time(event) == 100);
  // Cannot schedule an event already scheduled
  ASSERT(mu_sched_at(&s_counting_task1, 110) == MU_SCHED_ERR_ALREADY_SCHEDULED);
  // Remove the task.
  ASSERT(mu_sched_remove_task(&s_counting_task1) == &s_counting_task1);
  // Removing a task not in the schedule returns null
  ASSERT(mu_sched_remove_task(&s_counting_task1) == NULL);
  // After being removed, the task can be scheduled
  ASSERT(mu_sched_at(&s_counting_task1, 110) == MU_SCHED_ERR_NONE);
  // mu_sched_step() where the time has not yet arrived...
  ASSERT(mu_sched_step() == MU_SCHED_ERR_NONE);
  ASSERT(s_counting_ctx1.call_count == 0);
  ASSERT(mu_sched_is_empty() == false);
  ASSERT(mu_sched_peek_next_event() != NULL);

  // mu_sched_step() where the time has arrived...
  set_local_time(110);
  ASSERT(mu_sched_step() == MU_SCHED_ERR_NONE);
  ASSERT(s_counting_ctx1.call_count == 1); // the task has been called
  ASSERT(mu_sched_is_empty() == true);
  ASSERT(mu_sched_peek_next_event() == NULL);

  reset();
  ASSERT(mu_sched_at(&s_counting_task1, 110) == MU_SCHED_ERR_NONE);
  ASSERT(mu_sched_at(&s_counting_task2, 120) == MU_SCHED_ERR_NONE);
  ASSERT(mu_sched_at(&s_counting_task3, 130) == MU_SCHED_ERR_NONE);
  set_local_time(100);
  mu_sched_step();
  ASSERT(s_counting_ctx1.call_count == 0);
  ASSERT(s_counting_ctx2.call_count == 0);
  ASSERT(s_counting_ctx3.call_count == 0);
  set_local_time(115);
  mu_sched_step();
  ASSERT(s_counting_ctx1.call_count == 1);
  ASSERT(s_counting_ctx2.call_count == 0);
  ASSERT(s_counting_ctx3.call_count == 0);
  set_local_time(125);
  mu_sched_step();
  ASSERT(s_counting_ctx1.call_count == 1);
  ASSERT(s_counting_ctx2.call_count == 1);
  ASSERT(s_counting_ctx3.call_count == 0);
  set_local_time(135);
  mu_sched_step();
  ASSERT(s_counting_ctx1.call_count == 1);
  ASSERT(s_counting_ctx2.call_count == 1);
  ASSERT(s_counting_ctx3.call_count == 1);
  ASSERT(mu_sched_is_empty() == true);

  reset();
  ASSERT(mu_sched_at(&s_counting_task1, 130) == MU_SCHED_ERR_NONE);
  ASSERT(mu_sched_at(&s_counting_task2, 120) == MU_SCHED_ERR_NONE);
  ASSERT(mu_sched_at(&s_counting_task3, 110) == MU_SCHED_ERR_NONE);
  set_local_time(100);
  mu_sched_step();
  ASSERT(s_counting_ctx1.call_count == 0);
  ASSERT(s_counting_ctx2.call_count == 0);
  ASSERT(s_counting_ctx3.call_count == 0);
  set_local_time(115);
  mu_sched_step();
  ASSERT(s_counting_ctx1.call_count == 0);
  ASSERT(s_counting_ctx2.call_count == 0);
  ASSERT(s_counting_ctx3.call_count == 1);
  set_local_time(125);
  mu_sched_step();
  ASSERT(s_counting_ctx1.call_count == 0);
  ASSERT(s_counting_ctx2.call_count == 1);
  ASSERT(s_counting_ctx3.call_count == 1);
  set_local_time(135);
  mu_sched_step();
  ASSERT(s_counting_ctx1.call_count == 1);
  ASSERT(s_counting_ctx2.call_count == 1);
  ASSERT(s_counting_ctx3.call_count == 1);
  ASSERT(mu_sched_is_empty() == true);

  reset();
  ASSERT(mu_sched_at(&s_counting_task1, 110) == MU_SCHED_ERR_NONE);
  ASSERT(mu_sched_at(&s_counting_task2, 110) == MU_SCHED_ERR_NONE);
  ASSERT(mu_sched_at(&s_counting_task3, 110) == MU_SCHED_ERR_NONE);
  set_local_time(100);
  mu_sched_step();
  ASSERT(s_counting_ctx1.call_count == 0);
  ASSERT(s_counting_ctx2.call_count == 0);
  ASSERT(s_counting_ctx3.call_count == 0);
  set_local_time(110);
  mu_sched_step();
  ASSERT(s_counting_ctx1.call_count == 1);
  ASSERT(s_counting_ctx2.call_count == 1);
  ASSERT(s_counting_ctx3.call_count == 1);
  ASSERT(mu_sched_is_empty() == true);
}

// *****************************************************************************
// Local (private, static) code

static void reset(void) {
  s_counting_ctx1.call_count = 0;
  s_counting_ctx2.call_count = 0;
  s_counting_ctx3.call_count = 0;
  s_counting_ctx4.call_count = 0;
  s_counting_ctx5.call_count = 0;
  mu_task_init(&s_counting_task1, counting_fn, &s_counting_ctx1);
  mu_task_init(&s_counting_task2, counting_fn, &s_counting_ctx2);
  mu_task_init(&s_counting_task3, counting_fn, &s_counting_ctx3);
  mu_task_init(&s_counting_task4, counting_fn, &s_counting_ctx4);
  mu_task_init(&s_counting_task5, counting_fn, &s_counting_ctx5);
  mu_task_init(&s_idle_task, idle_fn, NULL);

  mu_sched_init();
  mu_sched_set_clock_source(get_local_time);
  mu_sched_set_idle_task(&s_idle_task);

  set_local_time(0);
}

static void set_local_time(mu_time_abs_t t) { s_local_time = t; }

static mu_time_abs_t get_local_time(void) { return s_local_time; }

static void counting_fn(void *ctx, void *arg) {
  counting_ctx_t *this = (counting_ctx_t *)ctx;
  (void)arg;
  ASSERT(mu_task_get_ctx(mu_sched_get_current_task()) == this);
  this->call_count += 1;
}

static void idle_fn(void *ctx, void *arg) {
  (void)ctx;
  (void)arg;
  asm("nop"); // place for a breakpoint
}
