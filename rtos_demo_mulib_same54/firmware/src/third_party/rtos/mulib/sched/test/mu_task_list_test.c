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
#include "mu_task_list.h"
#include "mu_task.h"
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

static mu_task_list_t s_task_list1;
static mu_task_list_t s_task_list2;

static mu_task_t s_task1;
static mu_task_t s_task2;

static int s_task1_count;
static int s_task2_count;

// *****************************************************************************
// Public code

void mu_task_list_test() {

  reset();
  // mu_task_list_init() returns the task_list object
  ASSERT(mu_task_list_init(&s_task_list1) == &s_task_list1);

  reset();
  ASSERT(mu_task_list_is_empty(&s_task_list1) == true);
  ASSERT(mu_task_get_task_list(&s_task1) == NULL);
  ASSERT(mu_task_get_task_list(&s_task2) == NULL);

  // Append two tasks.  Retain task_list list when called.
  reset();
  mu_task_list_append_task(&s_task_list1, &s_task1);
  mu_task_list_append_task(&s_task_list1, &s_task2);
  ASSERT(mu_task_list_is_empty(&s_task_list1) == false);
  ASSERT(mu_task_get_task_list(&s_task1) == (struct _mu_task_list *)&s_task_list1);
  ASSERT(mu_task_get_task_list(&s_task2) == (struct _mu_task_list *)&s_task_list1);
  mu_task_list_call(&s_task_list1, NULL, true);  // retain task_list
  ASSERT(mu_task_list_is_empty(&s_task_list1) == false);
  ASSERT(mu_task_get_task_list(&s_task1) == (struct _mu_task_list *)&s_task_list1);
  ASSERT(mu_task_get_task_list(&s_task2) == (struct _mu_task_list *)&s_task_list1);
  ASSERT(s_task1_count == 1);
  ASSERT(s_task2_count == 1);
  mu_task_list_call(&s_task_list1, NULL, true);  // tasks remain in task_list
  ASSERT(s_task1_count == 2);
  ASSERT(s_task2_count == 2);

  // Append two tasks.  Remove tasks from task_list when called.
  reset();
  mu_task_list_append_task(&s_task_list1, &s_task1);
  mu_task_list_append_task(&s_task_list1, &s_task2);
  ASSERT(mu_task_list_is_empty(&s_task_list1) == false);
  ASSERT(mu_task_get_task_list(&s_task1) == (struct _mu_task_list *)&s_task_list1);
  ASSERT(mu_task_get_task_list(&s_task2) == (struct _mu_task_list *)&s_task_list1);
  mu_task_list_call(&s_task_list1, NULL, false);  // remove the tasks
  ASSERT(mu_task_list_is_empty(&s_task_list1) == true);
  ASSERT(mu_task_get_task_list(&s_task1) == NULL);
  ASSERT(mu_task_get_task_list(&s_task2) == NULL);
  ASSERT(s_task1_count == 1);
  ASSERT(s_task2_count == 1);
  mu_task_list_call(&s_task_list1, NULL, false);  // tasks are no longer in the task_list
  ASSERT(s_task1_count == 1);
  ASSERT(s_task2_count == 1);

  // mu_task_list_prepend_task() inserts tasks at the head of the queue
  reset();
  mu_task_list_prepend_task(&s_task_list1, &s_task2);
  mu_task_list_prepend_task(&s_task_list1, &s_task1);
  mu_task_list_call(&s_task_list1, NULL, true);  // task1_fn, task2_fn assure proper order

  // mu_task_list_remove_task()
  reset();
  mu_task_list_append_task(&s_task_list1, &s_task1);
  mu_task_list_append_task(&s_task_list1, &s_task2);
  ASSERT(mu_task_get_task_list(&s_task1) == (struct _mu_task_list *)&s_task_list1);
  ASSERT(mu_task_get_task_list(&s_task2) == (struct _mu_task_list *)&s_task_list1);

  ASSERT(mu_task_list_remove_task(&s_task_list1, &s_task1) == &s_task1);
  ASSERT(mu_task_list_is_empty(&s_task_list1) == false);
  ASSERT(mu_task_get_task_list(&s_task1) == NULL);
  ASSERT(mu_task_get_task_list(&s_task2) == (struct _mu_task_list *)&s_task_list1);
  ASSERT(mu_task_list_remove_task(&s_task_list1, &s_task2) == &s_task2);
  ASSERT(mu_task_list_is_empty(&s_task_list1) == true);
  ASSERT(mu_task_get_task_list(&s_task1) == NULL);
  ASSERT(mu_task_get_task_list(&s_task2) == NULL);

  // mu_task_list_remove_task() in opposite order
  reset();
  mu_task_list_append_task(&s_task_list1, &s_task1);
  mu_task_list_append_task(&s_task_list1, &s_task2);
  ASSERT(mu_task_get_task_list(&s_task1) == (struct _mu_task_list *)&s_task_list1);
  ASSERT(mu_task_get_task_list(&s_task2) == (struct _mu_task_list *)&s_task_list1);

  ASSERT(mu_task_list_remove_task(&s_task_list1, &s_task2) == &s_task2);
  ASSERT(mu_task_list_is_empty(&s_task_list1) == false);
  ASSERT(mu_task_get_task_list(&s_task1) == (struct _mu_task_list *)&s_task_list1);
  ASSERT(mu_task_get_task_list(&s_task2) == NULL);
  ASSERT(mu_task_list_remove_task(&s_task_list1, &s_task1) == &s_task1);
  ASSERT(mu_task_list_is_empty(&s_task_list1) == true);
  ASSERT(mu_task_get_task_list(&s_task1) == NULL);
  ASSERT(mu_task_get_task_list(&s_task2) == NULL);

  reset();
  ASSERT(mu_task_list_append_task(&s_task_list1, &s_task1) == &s_task1);
  // a task can only be assigned to one task_list at a time
  ASSERT(mu_task_list_append_task(&s_task_list2, &s_task1) == NULL);
  ASSERT(mu_task_list_is_empty(&s_task_list1) == false);
  ASSERT(mu_task_list_is_empty(&s_task_list2) == true);
  ASSERT(mu_task_list_prepend_task(&s_task_list2, &s_task1) == NULL);
  ASSERT(mu_task_list_is_empty(&s_task_list1) == false);
  ASSERT(mu_task_list_is_empty(&s_task_list2) == true);

  reset();
  // mu_task_list_reset()
  mu_task_list_append_task(&s_task_list1, &s_task1);
  mu_task_list_append_task(&s_task_list1, &s_task2);
  ASSERT(mu_task_list_is_empty(&s_task_list1) == false);
  ASSERT(mu_task_get_task_list(&s_task1) == (struct _mu_task_list *)&s_task_list1);
  ASSERT(mu_task_get_task_list(&s_task2) == (struct _mu_task_list *)&s_task_list1);
  ASSERT(mu_task_list_reset(&s_task_list1) == &s_task_list1);
  ASSERT(mu_task_list_is_empty(&s_task_list1) == true);
  ASSERT(mu_task_get_task_list(&s_task1) == NULL);
  ASSERT(mu_task_get_task_list(&s_task2) == NULL);

  reset();
  mu_task_list_append_task(&s_task_list1, &s_task1);
  mu_task_list_append_task(&s_task_list1, &s_task2);
  // mu_task_list_pop_task()
  ASSERT(mu_task_list_pop_task(&s_task_list1) == &s_task1);
  ASSERT(mu_task_list_pop_task(&s_task_list1) == &s_task2);
  ASSERT(mu_task_list_pop_task(&s_task_list1) == NULL);
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
  mu_task_list_init(&s_task_list1);
  mu_task_list_init(&s_task_list2);
}
