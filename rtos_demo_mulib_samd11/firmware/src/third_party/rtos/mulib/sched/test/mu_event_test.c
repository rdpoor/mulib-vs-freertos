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
#include "mu_event.h"
#include <stdio.h>

// *****************************************************************************
// Local (private) types and definitions

// *****************************************************************************
// Local (private, static) forward declarations

static void task1_fn(void *ctx, void *arg);

static void task2_fn(void *ctx, void *arg);

static void reset(void);

// *****************************************************************************
// Local (private, static) storage

static mu_event_t s_event1;
static mu_event_t s_event2;

static mu_task_t s_task1;
static mu_task_t s_task2;

static int s_task1_count;
static int s_task2_count;

// *****************************************************************************
// Public code

void mu_event_test() {

  // TODO: what happens if a task is already scheduled in this (or another)
  // event?  Should it indicate an error?  Should there be a "task_has_event"
  // method that the user calls first?  If so, should that method be a mu_task
  // method rather than a mu_event method?

  reset();
  // mu_event_init() returns the event object
  ASSERT(mu_event_init(&s_event1) == &s_event1);

  // mu_event_t *mu_event_set_time(mu_event_t *event, mu_time_abs_t at);
  ASSERT(mu_event_set_time(&s_event1, 22) == &s_event1);

  // mu_time_abs_t mu_event_get_time(mu_event_t *event);
  ASSERT(mu_event_get_time(&s_event1) == 22);

  reset();
  ASSERT(mu_event_is_empty(&s_event1) == true);
  ASSERT(mu_task_get_event(&s_task1) == NULL);
  ASSERT(mu_task_get_event(&s_task2) == NULL);

  // Append two tasks.  Retain event list when called.
  reset();
  mu_event_append_task(&s_event1, &s_task1);
  mu_event_append_task(&s_event1, &s_task2);
  ASSERT(mu_event_is_empty(&s_event1) == false);
  ASSERT(mu_task_get_event(&s_task1) == &s_event1);
  ASSERT(mu_task_get_event(&s_task2) == &s_event1);
  mu_event_call(&s_event1, NULL, true);  // retain the tasks in the event
  ASSERT(mu_event_is_empty(&s_event1) == false);
  ASSERT(mu_task_get_event(&s_task1) == &s_event1);
  ASSERT(mu_task_get_event(&s_task2) == &s_event1);
  ASSERT(s_task1_count == 1);
  ASSERT(s_task2_count == 1);
  mu_event_call(&s_event1, NULL, true);  // tasks are still in the event
  ASSERT(s_task1_count == 2);
  ASSERT(s_task2_count == 2);

  reset();
  mu_event_append_task(&s_event1, &s_task1);
  mu_event_append_task(&s_event1, &s_task2);
  ASSERT(mu_event_is_empty(&s_event1) == false);
  ASSERT(mu_task_get_event(&s_task1) == &s_event1);
  ASSERT(mu_task_get_event(&s_task2) == &s_event1);
  mu_event_call(&s_event1, NULL, false);  // remove the tasks from the event
  ASSERT(mu_event_is_empty(&s_event1) == true);
  ASSERT(mu_task_get_event(&s_task1) == NULL);
  ASSERT(mu_task_get_event(&s_task2) == NULL);
  ASSERT(s_task1_count == 1);
  ASSERT(s_task2_count == 1);
  mu_event_call(&s_event1, NULL, false);  // tasks are no longer in the event
  ASSERT(s_task1_count == 1);
  ASSERT(s_task2_count == 1);

  // mu_event_prepend_task() inserts tasks at the head of the queue
  reset();
  mu_event_prepend_task(&s_event1, &s_task2);
  mu_event_prepend_task(&s_event1, &s_task1);
  mu_event_call(&s_event1, NULL, true);  // tak1_fn, task2_fn assure proper order

  // mu_event_remove_task()
  reset();
  mu_event_append_task(&s_event1, &s_task1);
  mu_event_append_task(&s_event1, &s_task2);
  ASSERT(mu_task_get_event(&s_task1) == &s_event1);
  ASSERT(mu_task_get_event(&s_task2) == &s_event1);

  ASSERT(mu_event_remove_task(&s_event1, &s_task1) == &s_task1);
  ASSERT(mu_event_is_empty(&s_event1) == false);
  ASSERT(mu_task_get_event(&s_task1) == NULL);
  ASSERT(mu_task_get_event(&s_task2) == &s_event1);
  ASSERT(mu_event_remove_task(&s_event1, &s_task2) == &s_task2);
  ASSERT(mu_event_is_empty(&s_event1) == true);
  ASSERT(mu_task_get_event(&s_task1) == NULL);
  ASSERT(mu_task_get_event(&s_task2) == NULL);

  // mu_event_remove_task() in opposite order
  reset();
  mu_event_append_task(&s_event1, &s_task1);
  mu_event_append_task(&s_event1, &s_task2);
  ASSERT(mu_task_get_event(&s_task1) == &s_event1);
  ASSERT(mu_task_get_event(&s_task2) == &s_event1);

  ASSERT(mu_event_remove_task(&s_event1, &s_task2) == &s_task2);
  ASSERT(mu_event_is_empty(&s_event1) == false);
  ASSERT(mu_task_get_event(&s_task1) == &s_event1);
  ASSERT(mu_task_get_event(&s_task2) == NULL);
  ASSERT(mu_event_remove_task(&s_event1, &s_task1) == &s_task1);
  ASSERT(mu_event_is_empty(&s_event1) == true);
  ASSERT(mu_task_get_event(&s_task1) == NULL);
  ASSERT(mu_task_get_event(&s_task2) == NULL);

  reset();
  ASSERT(mu_event_append_task(&s_event1, &s_task1) == &s_event1);
  // a task can only be assigned to one event at a time
  ASSERT(mu_event_append_task(&s_event2, &s_task1) == NULL);
  ASSERT(mu_event_is_empty(&s_event1) == false);
  ASSERT(mu_event_is_empty(&s_event2) == true);
  ASSERT(mu_event_prepend_task(&s_event2, &s_task1) == NULL);
  ASSERT(mu_event_is_empty(&s_event1) == false);
  ASSERT(mu_event_is_empty(&s_event2) == true);

  reset();
  // mu_event_reset()
  mu_event_append_task(&s_event1, &s_task1);
  mu_event_append_task(&s_event1, &s_task2);
  ASSERT(mu_event_is_empty(&s_event1) == false);
  ASSERT(mu_task_get_event(&s_task1) == &s_event1);
  ASSERT(mu_task_get_event(&s_task2) == &s_event1);
  ASSERT(mu_event_reset(&s_event1) == &s_event1);
  ASSERT(mu_event_is_empty(&s_event1) == true);
  ASSERT(mu_task_get_event(&s_task1) == NULL);
  ASSERT(mu_task_get_event(&s_task2) == NULL);

  reset();
  mu_event_append_task(&s_event1, &s_task1);
  mu_event_append_task(&s_event1, &s_task2);
  // mu_event_pop_task()
  ASSERT(mu_event_pop_task(&s_event1) == &s_task1);
  ASSERT(mu_event_pop_task(&s_event1) == &s_task2);
  ASSERT(mu_event_pop_task(&s_event1) == NULL);
}


// *****************************************************************************
// Local (private, static) code

static void task1_fn(void *ctx, void *arg) {
  (void)ctx;
  (void)arg;
  s_task1_count += 1;
  // task1 is always called before task2
  ASSERT(s_task1_count > s_task2_count);
}

static void task2_fn(void *ctx, void *arg) {
  (void)ctx;
  (void)arg;
  s_task2_count += 1;
  // task2 is always called after task1
  ASSERT(s_task1_count == s_task2_count);
}

static void reset(void) {
  s_task1_count = 0;
  s_task2_count = 0;
  mu_task_init(&s_task1, task1_fn, NULL);
  mu_task_init(&s_task2, task2_fn, NULL);
  mu_event_init(&s_event1);
  mu_event_init(&s_event2);
}
