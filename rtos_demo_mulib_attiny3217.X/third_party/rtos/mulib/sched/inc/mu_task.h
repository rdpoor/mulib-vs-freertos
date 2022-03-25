/**
 * MIT License
 *
 * Copyright (c) 2020-2022 R. D. Poor <rdpoor@gmail.com>
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

#ifndef _MU_TASK_H_
#define _MU_TASK_H_

// *****************************************************************************
// Includes

#include "mu_list.h"

// =============================================================================
// C++ compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

/**
 * A `mu_task` is a function that can be called later.  It comprises a
 * function pointer (`mu_task_fn`) and a context (`void *ctx`).  When
 * called, the function is passed the ctx argument and a caller-supplied `void
 * *` argument.
 *
 * mu_task objects may be linked together into a mu_seqquece.  See
 * mu_sequence.h for more information.
 */

// forward decls to avoid circular dependencies
struct _mu_task_list;

// The signature of a mu_task function.
typedef void (*mu_task_fn)(void *ctx, void *arg);

typedef struct {
  mu_task_fn fn;                    // function to call
  void *ctx;                        // context to pass when called
  mu_list_t _link;                  // link field to next mu_task
  struct _mu_task_list *_task_list; // back pointer to mu_task_list
} mu_task_t;

// *****************************************************************************
// Public declarations

/**
 * @brief Initialize a task object with its function and context.
 */
mu_task_t *mu_task_init(mu_task_t *task, mu_task_fn fn, void *ctx);

/**
 * @brief Return the function of this task.
 */
mu_task_fn mu_task_get_fn(mu_task_t *task);

/**
 * @brief Return the context of this task.
 */
void *mu_task_get_ctx(mu_task_t *task);

/**
 * @brief Invoke the deferred function.
 *
 * Note: for convenience task may be null, in which case this is a no-op.
 */
void mu_task_call(mu_task_t *task, void *arg);

// The following accessors are reserved for use by mu_task_list

/**
 * @brief Return the link to the next task in this tasks task_list.
 */
struct _mu_list *mu_task_get_link(mu_task_t *task);

/**
 * @brief Return this task's task_list, or NULL if it's not part of a task_list.
 */
struct _mu_task_list *mu_task_get_task_list(mu_task_t *task);

#ifdef __cplusplus
}
#endif

#endif // #ifndef _MU_TASK_H_
