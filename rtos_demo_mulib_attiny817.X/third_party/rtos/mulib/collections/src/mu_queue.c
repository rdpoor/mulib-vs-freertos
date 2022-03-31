/**
 * MIT License
 *
 * Copyright (c) 2020 R. Dunbar Poor <rdpoor@gmail.com>
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

// =============================================================================
// includes

#include "mu_queue.h"
#include "mu_list.h"
#include <stdbool.h>
#include <stddef.h>

// #include <stdio.h>  // debugging

// =============================================================================
// local types and definitions

// =============================================================================
// local (forward) declarations

// =============================================================================
// local storage

// =============================================================================
// public code

mu_queue_t *mu_queue_init(mu_queue_t *q) {
  mu_list_init(&q->head);
  mu_list_init(&q->tail);
  return q;
}

mu_list_t *mu_queue_list(mu_queue_t *q) { return mu_list_rest(&q->head); }

mu_queue_t *mu_queue_append(mu_queue_t *q, mu_list_t *item) {
  item->next = NULL;
  if (mu_list_is_empty(&q->tail)) {
    mu_list_push(&q->head, item);
  } else {
    mu_list_push(q->tail.next, item);
  }
  q->tail.next = item;
  return q;
}

mu_queue_t *mu_queue_prepend(mu_queue_t *q, mu_list_t *item) {
  mu_list_push(&q->head, item);
  if (mu_list_is_empty(&q->tail)) {
    q->tail.next = item;
  }
  return q;
}

mu_list_t *mu_queue_remove(mu_queue_t *q) {
  mu_list_t *item = mu_list_pop(&q->head);
  if (mu_list_is_empty(&q->head)) {
    q->tail.next = NULL; // removing last item;
  }
  return item;
}

mu_list_t *mu_queue_delete(mu_queue_t *q, mu_list_t *item) {
  return mu_list_delete(&q->head, item);
}

bool mu_queue_is_empty(mu_queue_t *q) { return mu_list_is_empty(&q->head); }

mu_queue_t *mu_queue_reset(mu_queue_t *q) {
  while (!mu_queue_is_empty(q)) {
    mu_queue_remove(q);
  }
  return q;
}

bool mu_queue_contains(mu_queue_t *q, mu_list_t *item) {
  return mu_list_contains(&q->head, item);
}

int mu_queue_length(mu_queue_t *q) { return mu_list_length(&q->head); }

// =============================================================================
// local (static) code
