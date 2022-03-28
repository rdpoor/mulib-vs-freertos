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

#include "mu_access_mgr.h"
#include "mu_task.h"
#include "mu_test_utils.h"

// *****************************************************************************
// Local (private) types and definitions

typedef struct {
  uint8_t call_count;
} task_ctx_t;

// *****************************************************************************
// Local (private, static) forward declarations

static void reset();
static void task_fn(void *ctx, void *arg);

// *****************************************************************************
// Local (private, static) storage

static mu_access_mgr_t s_mgr;
static mu_task_t s_task1;
static mu_task_t s_task2;
static mu_task_t s_task3;
static task_ctx_t s_ctx1;
static task_ctx_t s_ctx2;
static task_ctx_t s_ctx3;

// *****************************************************************************
// Public code

void mu_access_mgr_test() {

  // =====
  // mu_access_mgr_t *mu_access_mgr_init(mu_access_mgr_t *mgr);
  // init returns access_mgr
  reset();
  ASSERT(mu_access_mgr_init(&s_mgr) == &s_mgr);
  ASSERT(s_ctx1.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task1) == false);
  ASSERT(s_ctx2.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task2) == false);
  ASSERT(s_ctx3.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task3) == false);

  // =====
  // mu_access_mgr_err_t mu_access_mgr_request_ownership(mu_access_mgr_t *mgr,
  //                                                  mu_task_t *task);
  // ordinary use...
  reset();
  ASSERT(mu_access_mgr_request_ownership(&s_mgr, &s_task1) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(s_ctx1.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task1) == true);
  ASSERT(mu_access_mgr_request_ownership(&s_mgr, &s_task2) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(s_ctx2.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task2) == false);
  ASSERT(mu_access_mgr_request_ownership(&s_mgr, &s_task3) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(s_ctx3.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task3) == false);
  // Next task in line is invoked when owning task releases ownership
  ASSERT(mu_access_mgr_release_ownership(&s_mgr, &s_task1) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(s_ctx1.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task1) == false);
  ASSERT(s_ctx2.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task2) == true);
  ASSERT(s_ctx3.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task3) == false);
  // Next task in line is invoked when owning task releases ownership
  ASSERT(mu_access_mgr_release_ownership(&s_mgr, &s_task2) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(s_ctx1.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task1) == false);
  ASSERT(s_ctx2.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task2) == false);
  ASSERT(s_ctx3.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task3) == true);
  // There are no further tasks waiting for ownership
  ASSERT(mu_access_mgr_release_ownership(&s_mgr, &s_task3) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(s_ctx1.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task1) == false);
  ASSERT(s_ctx2.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task2) == false);
  ASSERT(s_ctx3.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task3) == false);

  // =====
  // void mu_access_mgr_reset(mu_access_mgr_t *mgr);
  //
  // ordinary use...
  reset();
  ASSERT(mu_access_mgr_request_ownership(&s_mgr, &s_task1) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(mu_access_mgr_request_ownership(&s_mgr, &s_task2) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(mu_access_mgr_request_ownership(&s_mgr, &s_task3) ==
         MU_ACCESS_MGR_ERR_NONE);

  mu_access_mgr_reset(&s_mgr);

  // task1 now no longer owns resource, other tasks invoked without granting
  ASSERT(s_ctx1.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task1) == false);
  ASSERT(s_ctx2.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task2) == false);
  ASSERT(s_ctx3.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task3) == false);

  // =====
  // mu_access_mgr_err_t mu_access_mgr_release_ownership(mu_access_mgr_t *mgr,
  //                                                  mu_task_t *task);
  // releasing ownership before being granted ownership

  reset();
  ASSERT(mu_access_mgr_request_ownership(&s_mgr, &s_task1) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(mu_access_mgr_request_ownership(&s_mgr, &s_task2) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(mu_access_mgr_request_ownership(&s_mgr, &s_task3) ==
         MU_ACCESS_MGR_ERR_NONE);
  // releasing second in line...
  ASSERT(mu_access_mgr_release_ownership(&s_mgr, &s_task2) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(s_ctx1.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task1) == true);
  ASSERT(s_ctx2.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task2) == false);
  ASSERT(s_ctx3.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task3) == false);
  // Now when task1 releases ownership, task3 is called...
  ASSERT(mu_access_mgr_release_ownership(&s_mgr, &s_task1) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(s_ctx1.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task1) == false);
  ASSERT(s_ctx2.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task2) == false);
  ASSERT(s_ctx3.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task3) == true);
  // Now when task3 releases ownership, no further action...
  ASSERT(mu_access_mgr_release_ownership(&s_mgr, &s_task3) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(s_ctx1.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task1) == false);
  ASSERT(s_ctx2.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task2) == false);
  ASSERT(s_ctx3.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task3) == false);

  reset();
  ASSERT(mu_access_mgr_request_ownership(&s_mgr, &s_task1) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(mu_access_mgr_request_ownership(&s_mgr, &s_task2) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(mu_access_mgr_request_ownership(&s_mgr, &s_task3) ==
         MU_ACCESS_MGR_ERR_NONE);
  // releasing last in line...
  ASSERT(mu_access_mgr_release_ownership(&s_mgr, &s_task3) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(s_ctx1.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task1) == true);
  ASSERT(s_ctx2.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task2) == false);
  ASSERT(s_ctx3.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task3) == false);
  // Now when task1 releases ownership, task2 is called...
  ASSERT(mu_access_mgr_release_ownership(&s_mgr, &s_task1) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(s_ctx1.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task1) == false);
  ASSERT(s_ctx2.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task2) == true);
  ASSERT(s_ctx3.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task3) == false);
  // Now when task2 releases ownership, no further action...
  ASSERT(mu_access_mgr_release_ownership(&s_mgr, &s_task2) ==
         MU_ACCESS_MGR_ERR_NONE);
  ASSERT(s_ctx1.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task1) == false);
  ASSERT(s_ctx2.call_count == 1);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task2) == false);
  ASSERT(s_ctx3.call_count == 0);
  ASSERT(mu_access_mgr_has_ownership(&s_mgr, &s_task3) == false);

  // =====
  // Error cases
}

// *****************************************************************************
// Local (private, static) code

static void reset() {
  mu_access_mgr_init(&s_mgr);
  mu_task_init(&s_task1, task_fn, &s_ctx1);
  mu_task_init(&s_task2, task_fn, &s_ctx2);
  mu_task_init(&s_task3, task_fn, &s_ctx3);
  s_ctx1.call_count = 0;
  s_ctx2.call_count = 0;
  s_ctx3.call_count = 0;
}

static void task_fn(void *ctx, void *arg) {
  task_ctx_t *self = (task_ctx_t *)ctx;
  (void)arg;
  self->call_count += 1;
}
