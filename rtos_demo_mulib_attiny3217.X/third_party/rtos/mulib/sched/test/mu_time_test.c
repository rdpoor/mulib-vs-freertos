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

#include "mu_test_utils.h"
#include "mu_time.h"
#include <unistd.h>

#include <stdio.h>
// =============================================================================
// private types and definitions

// =============================================================================
// private declarations

// =============================================================================
// local storage

// =============================================================================
// public code

void mu_time_test() {
  mu_time_abs_t t1;
  mu_time_abs_t t2;

  t1 = 1;
  t2 = mu_time_offset(t1, 0);
  ASSERT(mu_time_difference(t1, t2) == 0);
  ASSERT(mu_time_precedes(t1, t2) == false);
  ASSERT(mu_time_equals(t1, t2) == true);
  ASSERT(mu_time_follows(t1, t2) == false);

  t1 = 1;
  t2 = mu_time_offset(t1, 2);
  ASSERT(mu_time_difference(t1, t2) == -2);
  ASSERT(mu_time_precedes(t1, t2) == true);
  ASSERT(mu_time_equals(t1, t2) == false);
  ASSERT(mu_time_follows(t1, t2) == false);

  t1 = 1;
  t2 = mu_time_offset(t1, -2);
  ASSERT(mu_time_difference(t1, t2) == 2);
  ASSERT(mu_time_precedes(t1, t2) == false);
  ASSERT(mu_time_equals(t1, t2) == false);
  ASSERT(mu_time_follows(t1, t2) == true);
}

// =============================================================================
// private code
