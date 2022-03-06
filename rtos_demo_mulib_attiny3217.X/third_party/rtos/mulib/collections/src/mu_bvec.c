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
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <string.h>

// =============================================================================
// local types and definitions

// =============================================================================
// local (forward) declarations

/**
 * @brief Return the number of one bits in v.
 */
static uint8_t count_one_bits(uint8_t v);

/**
 * @brief Return the lowest power of 2 p such that v & (1<<p) != 0.
 *
 * Returns 8 if v is all zeros.
 */
static uint8_t find_first_one(uint8_t v);

// =============================================================================
// local storage

static const uint8_t s_byte_masks[] =
    {0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80};

static const uint8_t s_byte_rmasks[] =
    {0x00, 0x01, 0x03, 0x07, 0x0f, 0x1f, 0x3f, 0x7f};

// =============================================================================
// public code

size_t mu_bvec_byte_index(size_t bit_index) {
  return bit_index >> 3; // Assume compiler is good at this
}

uint8_t mu_bvec_byte_mask(size_t bit_index) {
  return s_byte_masks[bit_index & 7];
}

// Low-level operations that assume you have byte_index and byte_mask
void mu_bvec_set_(mu_bvec_t *store, size_t byte_index, uint8_t byte_mask) {
  store[byte_index] |= byte_mask;
}

void mu_bvec_clear_(mu_bvec_t *store, size_t byte_index, uint8_t byte_mask) {
  store[byte_index] &= ~byte_mask;
}

void mu_bvec_invert_(mu_bvec_t *store, size_t byte_index, uint8_t byte_mask) {
  store[byte_index] ^= byte_mask;
}

void mu_bvec_write_(mu_bvec_t *store,
                    size_t byte_index,
                    uint8_t byte_mask,
                    bool value) {
  if (value) {
    mu_bvec_set_(store, byte_index, byte_mask);
  } else {
    mu_bvec_clear_(store, byte_index, byte_mask);
  }
}

bool mu_bvec_read_(mu_bvec_t *store, size_t byte_index, uint8_t byte_mask) {
  return (store[byte_index] & byte_mask) != 0;
}

// Same, but take bit index instead
void mu_bvec_set(mu_bvec_t *store, size_t bit_index) {
  mu_bvec_set_(store,
               mu_bvec_byte_index(bit_index),
               mu_bvec_byte_mask(bit_index));
}

void mu_bvec_clear(mu_bvec_t *store, size_t bit_index) {
  mu_bvec_clear_(store,
                 mu_bvec_byte_index(bit_index),
                 mu_bvec_byte_mask(bit_index));
}

void mu_bvec_invert(mu_bvec_t *store, size_t bit_index) {
  mu_bvec_invert_(store,
                  mu_bvec_byte_index(bit_index),
                  mu_bvec_byte_mask(bit_index));
}

void mu_bvec_write(mu_bvec_t *store, size_t bit_index, bool value) {
  size_t byte_index = mu_bvec_byte_index(bit_index);
  uint8_t byte_mask = mu_bvec_byte_mask(bit_index);
  if (value) {
    mu_bvec_set_(store, byte_index, byte_mask);
  } else {
    mu_bvec_clear_(store, byte_index, byte_mask);
  }
}

bool mu_bvec_read(mu_bvec_t *store, size_t bit_index) {
  return mu_bvec_read_(store,
                       mu_bvec_byte_index(bit_index),
                       mu_bvec_byte_mask(bit_index));
}

// Queries for bit vectors
bool mu_bvec_is_all_ones(mu_bvec_t *store, size_t bit_count) {
  size_t byte_index;
  size_t bits_remain;
  for (byte_index = 0, bits_remain = bit_count; bits_remain >= 8;
       byte_index += 1, bits_remain -= 8) {
    if (store[byte_index] != 0xff) {
      return false;
    }
  }
  // 0 <= bits_remain < 8
  if (bits_remain == 0) {
    return true;
  } else {
    uint8_t rmask = s_byte_rmasks[bits_remain];
    return (store[byte_index] & rmask) == rmask;
  }
}

bool mu_bvec_is_all_zeros(mu_bvec_t *store, size_t bit_count) {
  size_t byte_index;
  size_t bits_remain;
  for (byte_index = 0, bits_remain = bit_count; bits_remain >= 8;
       byte_index += 1, bits_remain -= 8) {
    if (store[byte_index] != 0x00) {
      return false;
    }
  }
  // 0 <= bits_remain < 8
  if (bits_remain == 0) {
    return true;
  } else {
    uint8_t rmask = s_byte_rmasks[bits_remain];
    return (store[byte_index] & rmask) == 0;
  }
}

size_t mu_bvec_count_ones(mu_bvec_t *store, size_t bit_count) {
  size_t count = 0;
  size_t byte_index;
  size_t bits_remain;
  for (byte_index = 0, bits_remain = bit_count; bits_remain >= 8;
       byte_index += 1, bits_remain -= 8) {
    count += count_one_bits(store[byte_index]);
  }
  // 0 <= bits_remain < 8
  if (bits_remain > 0) {
    uint8_t rmask = s_byte_rmasks[bits_remain];
    count += count_one_bits(store[byte_index] & rmask);
  }
  return count;
}

size_t mu_bvec_count_zeros(mu_bvec_t *store, size_t bit_count) {
  return bit_count - mu_bvec_count_ones(store, bit_count);
}

// Returns SIZE_MAX if not found
size_t mu_bvec_find_first_one(mu_bvec_t *store, size_t bit_count) {
  size_t position = 0;
  size_t byte_index;
  size_t bits_remain;
  for (byte_index = 0, bits_remain = bit_count; bits_remain >= 8;
       byte_index += 1, bits_remain -= 8) {
    uint8_t v = store[byte_index];
    uint8_t p = find_first_one(v);
    // p = 8 if no one bit found
    position += p;
    if (p != 8) {
      return position;
    }
  }
  // 0 <= bits_remain < 8
  if (bits_remain > 0) {
    uint8_t rmask = s_byte_rmasks[bits_remain];
    uint8_t v = store[byte_index] & rmask;
    uint8_t p = find_first_one(v & rmask);
    position += p;
    if (p != 8) {
      return position;
    }
  }
  return SIZE_MAX;
}

size_t mu_bvec_find_first_zero(mu_bvec_t *store, size_t bit_count) {
  size_t position = 0;
  size_t byte_index;
  size_t bits_remain;
  for (byte_index = 0, bits_remain = bit_count; bits_remain >= 8;
       byte_index += 1, bits_remain -= 8) {
    uint8_t v = store[byte_index];
    uint8_t p = find_first_one(~v);
    // p = 8 if no one bit found
    position += p;
    if (p != 8) {
      return position;
    }
  }
  // 0 <= bits_remain < 8
  if (bits_remain > 0) {
    uint8_t rmask = s_byte_rmasks[bits_remain];
    uint8_t v = store[byte_index] & rmask;
    uint8_t p = find_first_one(~v & rmask);
    position += p;
    if (p != 8) {
      return position;
    }
  }
  return SIZE_MAX;
}

// modify all bits in a bit vector
void mu_bvec_set_all(mu_bvec_t *store, size_t bit_count) {
  size_t byte_count = mu_bvec_byte_index(bit_count);
  size_t remainder = bit_count & 0x07;
  memset(store, 0xff, byte_count);
  store[byte_count] |= s_byte_rmasks[remainder];
}

void mu_bvec_clear_all(mu_bvec_t *store, size_t bit_count) {
  size_t byte_count = mu_bvec_byte_index(bit_count);
  size_t remainder = bit_count & 0x07;
  memset(store, 0, byte_count);
  store[byte_count] &= ~s_byte_rmasks[remainder];
}

void mu_bvec_invert_all(mu_bvec_t *store, size_t bit_count) {
  size_t byte_index;
  size_t bits_remain;
  for (byte_index = 0, bits_remain = bit_count; bits_remain >= 8;
       byte_index += 1, bits_remain -= 8) {
    store[byte_index] ^= 0xff;
  }
  // 0 <= bits_remain < 8
  if (bits_remain > 0) {
    uint8_t rmask = s_byte_rmasks[bits_remain];
    store[byte_index] ^= rmask;
  }
}

void mu_bvec_write_all(mu_bvec_t *store, size_t bit_count, bool value) {
  if (value) {
    mu_bvec_set_all(store, bit_count);
  } else {
    mu_bvec_clear_all(store, bit_count);
  }
}

bool mu_bvec_did_set(mu_bvec_t *store, size_t bit_index) {
  size_t index = mu_bvec_byte_index(bit_index);
  uint8_t mask = mu_bvec_byte_mask(bit_index);

  if (!mu_bvec_read_(store, index, mask)) {
    // Bit was clear: set it and return true.
    mu_bvec_set_(store, index, mask);
    return true;
  } else {
    // Bit was already set: return false
    return false;
  }
}

bool mu_bvec_did_clear(mu_bvec_t *store, size_t bit_index) {
  size_t index = mu_bvec_byte_index(bit_index);
  uint8_t mask = mu_bvec_byte_mask(bit_index);

  if (mu_bvec_read_(store, index, mask)) {
    // Bit was set: clear it and return true;
    mu_bvec_clear_(store, index, mask);
    return true;
  } else {
    // Bit was already cleared: return false
    return false;
  }
}

// =============================================================================
// local (static) code

// Take your pick of count_one_bits() implementation -- they're both good, but
// one may have an advantage over the other on specific architectures.
#if 1
// For an explanation of this implementation, see:
// http://graphics.stanford.edu/~seander/bithacks.html#CountBitsSetParallel
// https://groups.google.com/g/comp.graphics.algorithms/c/ZKSegl2sr4c/m/QYTwoPSx30MJ
// http://bit-hack.blogspot.com/2006/10/binary-magic-numbers-for-counting-bits.html

static uint8_t count_one_bits(uint8_t v) {
  uint8_t c = v - ((v >> 1) & 0x55);
  c = ((c >> 2) & 0x33) + (c & 0x33);
  c = ((c >> 4) + c) & 0x0f;
  return c;
}
#else

static uint8_t count_one_bits(uint8_t v) {
  static const uint8_t nibble_count[] = {
      0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4};
  return nibble_count[v & 0x0f] + nibble_count[v >> 4];
}
#endif

static uint8_t find_first_one(uint8_t v) {
  if (v == 0) {
    return 8;
  } else {
    uint8_t c = 7;
    if (v & 0x0f) {
      c -= 4;
    }
    if (v & 0x33) {
      c -= 2;
    }
    if (v & 0x55) {
      c -= 1;
    }
    return c;
  }
}
