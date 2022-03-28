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

#include "mu_event.h"
#include "mu_test_utils.h"

// *****************************************************************************
// Local (private) types and definitions

typedef struct {
  int visited;
  mu_list_t link;
} element_t;

// *****************************************************************************
// Local (private, static) forward declarations

static void reset(void);

/**
 * @brief Return a reference to the list associated with the given element.
 */
static mu_list_t *etl(element_t *element);

/**
 * @brief Return a reference to the element associated with the given list.
 */
static element_t *efl(mu_list_t *list);

static void *visitor_fn(mu_list_t *list, void *arg);

// *****************************************************************************
// Local (private, static) storage

static mu_list_t s_list1;
static element_t s_element_a;
static element_t s_element_b;
static element_t s_element_c;

// *****************************************************************************
// Public code

void mu_list_test() {

  // Verify MU_LIST_REF and MU_LIST_CONTAINER macros
  ASSERT(etl(&s_element_a) == &s_element_a.link);
  ASSERT(efl(&s_element_a.link) == &s_element_a);

  // A NULL list pointer is treated like an empty list.
  ASSERT(mu_list_first(NULL) == NULL);
  ASSERT(mu_list_rest(NULL) == NULL);
  ASSERT(mu_list_is_empty(NULL) == true);
  ASSERT(mu_list_length(NULL) == 0);
  ASSERT(mu_list_contains(NULL, etl(&s_element_a)) == false);
  ASSERT(mu_list_push(NULL, etl(&s_element_a)) == NULL); // dubious
  ASSERT(mu_list_pop(NULL) == NULL);
  ASSERT(mu_list_find(NULL, etl(&s_element_a)) == NULL);
  ASSERT(mu_list_delete(NULL, etl(&s_element_a)) == NULL);
  ASSERT(mu_list_reverse(NULL) == NULL);
  ASSERT(mu_list_traverse(NULL, visitor_fn, NULL) == NULL);

  // mu_list_init() returns list object
  ASSERT(mu_list_init(&s_list1) == &s_list1);

  reset();
  // operations on an empty list
  ASSERT(mu_list_first(&s_list1) == &s_list1);
  ASSERT(mu_list_rest(&s_list1) == NULL);
  ASSERT(mu_list_is_empty(&s_list1) == true);
  ASSERT(mu_list_length(&s_list1) == 0);
  ASSERT(mu_list_contains(&s_list1, etl(&s_element_a)) == false);
  // ASSERT(mu_list_push(&s_list1, etl(&s_element_a)) == &s_list1);
  ASSERT(mu_list_pop(&s_list1) == NULL);
  ASSERT(mu_list_find(&s_list1, etl(&s_element_a)) == NULL);
  ASSERT(mu_list_delete(&s_list1, etl(&s_element_a)) == NULL);
  ASSERT(mu_list_reverse(&s_list1) == &s_list1);
  ASSERT(mu_list_traverse(&s_list1, visitor_fn, NULL) == NULL);

  reset();
  ASSERT(mu_list_push(&s_list1, etl(&s_element_a)) == &s_list1);
  // Operations on a singleton list
  ASSERT(mu_list_first(&s_list1) == &s_list1);
  ASSERT(mu_list_rest(&s_list1) == etl(&s_element_a));
  ASSERT(mu_list_is_empty(&s_list1) == false);
  ASSERT(mu_list_length(&s_list1) == 1);
  ASSERT(mu_list_contains(&s_list1, etl(&s_element_a)) == true);
  ASSERT(mu_list_find(&s_list1, etl(&s_element_a)) == etl(&s_element_a));
  ASSERT(mu_list_reverse(&s_list1) == &s_list1);
  ASSERT(mu_list_traverse(&s_list1, visitor_fn, NULL) == NULL);
  ASSERT(s_element_a.visited == 1);
  ASSERT(s_element_b.visited == 0);
  ASSERT(s_element_c.visited == 0);

  reset();
  ASSERT(mu_list_push(&s_list1, etl(&s_element_a)) == &s_list1);
  // pop from a singleton list
  ASSERT(mu_list_pop(&s_list1) == etl(&s_element_a));
  ASSERT(mu_list_rest(&s_list1) == NULL);

  reset();
  ASSERT(mu_list_push(&s_list1, etl(&s_element_a)) == &s_list1);
  // delete from a singleton list
  ASSERT(mu_list_delete(&s_list1, etl(&s_element_a)) == etl(&s_element_a));
  ASSERT(mu_list_rest(&s_list1) == NULL);

  reset();
  // push ahd pop
  mu_list_push(&s_list1, etl(&s_element_a)); // [a]
  mu_list_traverse(&s_list1, visitor_fn, NULL);
  mu_list_push(&s_list1, etl(&s_element_b)); // [b, a]
  mu_list_traverse(&s_list1, visitor_fn, NULL);
  mu_list_push(&s_list1, etl(&s_element_c)); // [c, b, a]
  mu_list_traverse(&s_list1, visitor_fn, NULL);
  ASSERT(s_element_a.visited == 3);
  ASSERT(s_element_b.visited == 2);
  ASSERT(s_element_c.visited == 1);
  ASSERT(mu_list_length(&s_list1) == 3);
  ASSERT(mu_list_find(&s_list1, etl(&s_element_a)) == etl(&s_element_a));
  ASSERT(mu_list_find(&s_list1, etl(&s_element_b)) == etl(&s_element_b));
  ASSERT(mu_list_find(&s_list1, etl(&s_element_c)) == etl(&s_element_c));
  ASSERT(mu_list_pop(&s_list1) == etl(&s_element_c));
  ASSERT(mu_list_pop(&s_list1) == etl(&s_element_b));
  ASSERT(mu_list_pop(&s_list1) == etl(&s_element_a));
  ASSERT(mu_list_pop(&s_list1) == NULL);

  reset();
  // delete
  mu_list_push(&s_list1, etl(&s_element_a)); // [a]
  mu_list_push(&s_list1, etl(&s_element_b)); // [b, a]
  mu_list_push(&s_list1, etl(&s_element_c)); // [c, b, a]
  ASSERT(mu_list_delete(&s_list1, etl(&s_element_a)) == etl(&s_element_a));
  ASSERT(mu_list_delete(&s_list1, etl(&s_element_b)) == etl(&s_element_b));
  ASSERT(mu_list_delete(&s_list1, etl(&s_element_c)) == etl(&s_element_c));

  mu_list_push(&s_list1, etl(&s_element_a)); // [a]
  mu_list_push(&s_list1, etl(&s_element_b)); // [b, a]
  mu_list_push(&s_list1, etl(&s_element_c)); // [c, b, a]
  ASSERT(mu_list_delete(&s_list1, etl(&s_element_c)) == etl(&s_element_c));
  ASSERT(mu_list_delete(&s_list1, etl(&s_element_b)) == etl(&s_element_b));
  ASSERT(mu_list_delete(&s_list1, etl(&s_element_a)) == etl(&s_element_a));

  mu_list_push(&s_list1, etl(&s_element_a)); // [a]
  mu_list_push(&s_list1, etl(&s_element_b)); // [b, a]
  mu_list_push(&s_list1, etl(&s_element_c)); // [c, b, a]
  ASSERT(mu_list_delete(&s_list1, etl(&s_element_b)) == etl(&s_element_b));
  ASSERT(mu_list_delete(&s_list1, etl(&s_element_c)) == etl(&s_element_c));
  ASSERT(mu_list_delete(&s_list1, etl(&s_element_a)) == etl(&s_element_a));

  reset();
  // reverse
  mu_list_push(&s_list1, etl(&s_element_a)); // [a]
  mu_list_push(&s_list1, etl(&s_element_b)); // [b, a]
  mu_list_push(&s_list1, etl(&s_element_c)); // [c, b, a]
  ASSERT(mu_list_rest(etl(&s_element_c)) == etl(&s_element_b));
  ASSERT(mu_list_rest(etl(&s_element_b)) == etl(&s_element_a));
  ASSERT(mu_list_rest(etl(&s_element_a)) == NULL);
  ASSERT(mu_list_reverse(&s_list1) == &s_list1); // [a, b, c]
  ASSERT(mu_list_rest(etl(&s_element_c)) == NULL);
  ASSERT(mu_list_rest(etl(&s_element_b)) == etl(&s_element_c));
  ASSERT(mu_list_rest(etl(&s_element_a)) == etl(&s_element_b));
}

// *****************************************************************************
// Local (private, static) code

static void reset(void) {
  mu_list_init(&s_list1);
  mu_list_init(&s_element_a.link);
  mu_list_init(&s_element_b.link);
  mu_list_init(&s_element_c.link);
  s_element_a.visited = 0;
  s_element_b.visited = 0;
  s_element_c.visited = 0;
}

static mu_list_t *etl(element_t *element) { return MU_LIST_REF(element, link); }

static element_t *efl(mu_list_t *list) {
  return MU_LIST_CONTAINER(list, element_t, link);
}

static void *visitor_fn(mu_list_t *list, void *arg) {
  element_t *list_item = MU_LIST_CONTAINER(list, element_t, link);
  list_item->visited += 1;
  return NULL;
}
