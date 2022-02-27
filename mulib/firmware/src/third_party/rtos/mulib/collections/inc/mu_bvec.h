/**
 * @file
 *
 * @brief Support for bit vectors.
 *
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

#ifndef _MU_BVEC_H_
#define _MU_BVEC_H_

#ifdef __cplusplus
extern "C" {
#endif

// =============================================================================
// includes

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// =============================================================================
// types and definitions

/**
 * @brief Compute the number of bytes required to hold the given number of bits.
 */
#define MU_BVEC_COUNT_TO_BYTE_COUNT(_bit_count) (((_bit_count - 1) / 8) + 1)

/**
 * @brief A bit vector is an array of bytes.
 */
typedef uint8_t mu_bvec_t;

// =============================================================================
// declarations

size_t mu_bvec_byte_index(size_t bit_index);
uint8_t mu_bvec_byte_mask(size_t bit_index);

// Low-level operations that assume you have byte_index and byte_mask
void mu_bvec_set_(mu_bvec_t *store, size_t byte_index, uint8_t byte_mask);
void mu_bvec_clear_(mu_bvec_t *store, size_t byte_index, uint8_t byte_mask);
void mu_bvec_invert_(mu_bvec_t *store, size_t byte_index, uint8_t byte_mask);
void mu_bvec_write_(mu_bvec_t *store,
                    size_t byte_index,
                    uint8_t byte_mask,
                    bool value);
bool mu_bvec_read_(mu_bvec_t *store, size_t byte_index, uint8_t byte_mask);

// Same, but take bit index instead
void mu_bvec_set(mu_bvec_t *store, size_t bit_index);
void mu_bvec_clear(mu_bvec_t *store, size_t bit_index);
void mu_bvec_invert(mu_bvec_t *store, size_t bit_index);
void mu_bvec_write(mu_bvec_t *store, size_t bit_index, bool value);
bool mu_bvec_read(mu_bvec_t *store, size_t bit_index);

// Queries for bit vectors
bool mu_bvec_is_all_ones(mu_bvec_t *store, size_t bit_count);
bool mu_bvec_is_all_zeros(mu_bvec_t *store, size_t bit_count);

size_t mu_bvec_count_ones(mu_bvec_t *store, size_t bit_count);
size_t mu_bvec_count_zeros(mu_bvec_t *store, size_t bit_count);

// Returns SIZE_MAX if not found
size_t mu_bvec_find_first_one(mu_bvec_t *store, size_t bit_count);
size_t mu_bvec_find_first_zero(mu_bvec_t *store, size_t bit_count);
// size_t mu_bvec_find_last_one(mu_bvec_t *store, size_t bit_count);
// size_t mu_bvec_find_last_zero(mu_bvec_t *store, size_t bit_count);

// modify all bits in a bit vector
void mu_bvec_set_all(mu_bvec_t *store, size_t bit_count);
void mu_bvec_clear_all(mu_bvec_t *store, size_t bit_count);
void mu_bvec_invert_all(mu_bvec_t *store, size_t bit_count);
void mu_bvec_write_all(mu_bvec_t *store, size_t bit_count, bool value);

// If bit_index is already set, return false.  Else set it and return true.
bool mu_bvec_did_set(mu_bvec_t *store, size_t bit_index);

// If bit_index is already cleared, return false.  Else clear it and return true.
bool mu_bvec_did_clear(mu_bvec_t *store, size_t bit_index);

// Consider
// rotate and shift operations
// operations on sub-ranges

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_BVEC_H_ */
