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

#include "mu_bvec.h"
#include "mu_test_utils.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
// =============================================================================
// private types and definitions

#define BIT_COUNT 10 // One byte and two bits

// =============================================================================
// private declarations

// =============================================================================
// local storage

static uint8_t s_bvec[MU_BVEC_COUNT_TO_BYTE_COUNT(BIT_COUNT)];

// =============================================================================
// public code

void mu_bvec_test() {
  ASSERT(mu_bvec_byte_index(0) == 0);
  ASSERT(mu_bvec_byte_mask(0) == 0x01);

  ASSERT(mu_bvec_byte_index(7) == 0);
  ASSERT(mu_bvec_byte_mask(7) == 0x80);

  ASSERT(mu_bvec_byte_index(8) == 1);
  ASSERT(mu_bvec_byte_mask(8) == 0x01);

  ASSERT(mu_bvec_byte_index(10) == 1);
  ASSERT(mu_bvec_byte_mask(10) == 0x04);

  for (size_t p = 0; p < BIT_COUNT; p++) {
    // mu_bvec_clear_all(s_bvec, BIT_COUNT);
    mu_bvec_clear_all(s_bvec, BIT_COUNT);
    mu_bvec_set(s_bvec, p);
    for (size_t q = 0; q < BIT_COUNT; q++) {
      if (p == q) {
        ASSERT(mu_bvec_read(s_bvec, q) == true);
      } else {
        ASSERT(mu_bvec_read(s_bvec, q) == false);
      }
    }
  }

  mu_bvec_set_all(s_bvec, BIT_COUNT);
  ASSERT(mu_bvec_is_all_zeros(s_bvec, BIT_COUNT) == false);
  ASSERT(mu_bvec_is_all_ones(s_bvec, BIT_COUNT) == true);

  mu_bvec_clear_all(s_bvec, BIT_COUNT);
  ASSERT(mu_bvec_is_all_zeros(s_bvec, BIT_COUNT) == true);
  ASSERT(mu_bvec_is_all_ones(s_bvec, BIT_COUNT) == false);

  mu_bvec_invert_all(s_bvec, BIT_COUNT);
  ASSERT(mu_bvec_is_all_zeros(s_bvec, BIT_COUNT) == false);
  ASSERT(mu_bvec_is_all_ones(s_bvec, BIT_COUNT) == true);

  mu_bvec_write_all(s_bvec, BIT_COUNT, true);
  ASSERT(mu_bvec_is_all_zeros(s_bvec, BIT_COUNT) == false);
  ASSERT(mu_bvec_is_all_ones(s_bvec, BIT_COUNT) == true);

  mu_bvec_write_all(s_bvec, BIT_COUNT, false);
  ASSERT(mu_bvec_is_all_zeros(s_bvec, BIT_COUNT) == true);
  ASSERT(mu_bvec_is_all_ones(s_bvec, BIT_COUNT) == false);

  mu_bvec_clear_all(s_bvec, BIT_COUNT);
  ASSERT(mu_bvec_count_ones(s_bvec, BIT_COUNT) == 0);
  ASSERT(mu_bvec_count_zeros(s_bvec, BIT_COUNT) == BIT_COUNT - 0);

  for (size_t p = 0; p < BIT_COUNT; p++) {
    mu_bvec_clear_all(s_bvec, BIT_COUNT);
    mu_bvec_set(s_bvec, p);
    ASSERT(mu_bvec_find_first_one(s_bvec, BIT_COUNT) == p);
  }

  for (size_t p = 0; p < BIT_COUNT; p++) {
    mu_bvec_set_all(s_bvec, BIT_COUNT);
    mu_bvec_clear(s_bvec, p);
    ASSERT(mu_bvec_find_first_zero(s_bvec, BIT_COUNT) == p);
  }

  mu_bvec_clear_all(s_bvec, BIT_COUNT);
  for (size_t p = 0; p < BIT_COUNT; p++) {
    mu_bvec_set(s_bvec, p);
    ASSERT(mu_bvec_count_ones(s_bvec, BIT_COUNT) == p + 1);
    ASSERT(mu_bvec_count_zeros(s_bvec, BIT_COUNT) == BIT_COUNT - (p + 1));
  }
}

// =============================================================================
// private code
