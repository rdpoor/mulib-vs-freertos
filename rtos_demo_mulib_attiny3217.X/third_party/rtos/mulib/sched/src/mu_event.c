/**
 * @file mu_event.c
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

#include "mu_event.h"

#include "mu_list.h"
#include "mu_queue.h"
#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// Local (private) types and definitions

// *****************************************************************************
// Local (private, static) forward declarations

static void *call_task(mu_list_t *list, void *arg);

// *****************************************************************************
// Local (private, static) storage

// *****************************************************************************
// Public code

mu_event_t *mu_event_init(mu_event_t *event) {
  mu_queue_init(&event->tasks);
  return event;
}

mu_event_t *mu_event_reset(mu_event_t *event) {
  mu_task_t *task = NULL;
  while ((task = mu_event_pop_task(event)) != NULL) {
    // remove all tasks
  }
  return event;
}

mu_event_t *mu_event_set_time(mu_event_t *event, mu_time_abs_t at) {
  event->at = at;
  return event;
}

mu_time_abs_t mu_event_get_time(mu_event_t *event) {
  return event->at;
}

bool mu_event_is_empty(mu_event_t *event) {
  return mu_queue_is_empty(&event->tasks);
}

mu_event_t *mu_event_append_task(mu_event_t *event, mu_task_t *task) {
  if (mu_task_get_event(task) != NULL) {
    // Task is already assigned to an event
    return NULL;
  }
  mu_queue_append(&event->tasks, MU_LIST_REF(task, _link));
  task->_event = event; // install back pointer
  return event;
}

mu_event_t *mu_event_prepend_task(mu_event_t *event, mu_task_t *task) {
  if (mu_task_get_event(task) != NULL) {
    // Task is already assigned to an event
    return NULL;
  }
  mu_queue_prepend(&event->tasks, MU_LIST_REF(task, _link));
  task->_event = event;  // install back pointer
  return event;
}

mu_task_t *mu_event_remove_task(mu_event_t *event, mu_task_t *task) {
  mu_list_t *removed = mu_queue_delete(&event->tasks, MU_LIST_REF(task, _link));
  if (removed) {
    task->_event = NULL;   // remove back pointer
    return task;
  } else {
    return NULL;
  }
}

mu_task_t *mu_event_pop_task(mu_event_t *event) {
  mu_list_t *list = mu_queue_remove(&event->tasks);
  if (list != NULL) {
    mu_task_t *task = MU_LIST_CONTAINER(list, mu_task_t, _link);
    task->_event = NULL;  // remove back pointer.
    return task;
  } else {
    return NULL;
  }
}

void mu_event_call(mu_event_t *event, void *arg, bool retain) {
  mu_list_t *list;
  if (retain) {
    list = mu_queue_list(&event->tasks);
    mu_list_traverse(list, call_task, arg);
  } else {
    while ((list = mu_queue_remove(&event->tasks)) != NULL) {
      mu_task_t *task = MU_LIST_CONTAINER(list, mu_task_t, _link);
      task->_event = NULL;  // remove back pointer.
      mu_task_call(task, arg);
    }
  }
}

// *****************************************************************************
// Local (private, static) code

static void *call_task(mu_list_t *list_ref, void *arg) {
  mu_list_t *list = list_ref->next;
  if (list != NULL) {
      mu_task_t *task = MU_LIST_CONTAINER(list, mu_task_t, _link);
      mu_task_call(task, arg);
  }
  return NULL;
}
