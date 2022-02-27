/**
 * MIT License
 *
 * Copyright (c) 2021 R. D. Poor <rdpoor@gmail.com>
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

/**
 * @file template.h
 *
 * @brief Platform-specific support for absolute and relative time.
 */

#ifndef _MU_TIME_H_
#define _MU_TIME_H_

// ****************************************************************************=
// Includes

#include <stdint.h>
#include <stdbool.h>

// ****************************************************************************=
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// ****************************************************************************=
// Public types and definitions

typedef uint32_t mu_time_abs_t;
typedef int32_t mu_time_rel_t;

// ****************************************************************************=
// Public declarations

void mu_time_init(void);

/**
 * @brief Add a time and a duration.
 *
 * `mu_time_offset` adds an absolute time and a relative time to produce a new
 * absolute time.
 *
 * @param t1 a time object
 * @param dt a duration object
 * @return t1 offset by dt
 */
mu_time_abs_t mu_time_offset(mu_time_abs_t t, mu_time_rel_t dt);

/**
 * @brief Take the difference between two time objects
 *
 * `mu_time_difference` subtracts absolute time t2 from absolute time t1 to
 * produce a relative time.
 *
 * @param t1 A time object
 * @param t2 A time object
 * @return (t1-t2) as a relative time
 */
mu_time_rel_t mu_time_difference(mu_time_abs_t t1, mu_time_abs_t t2);

/**
 * @brief Return true if t1 is strictly before t2
 *
 * Note that if you want to know if t1 is before or equal to t2, you can use the
 * construct `!mu_time_follows(t2, t1)``
 *
 * @param t1 A time object
 * @param t2 A time object
 * @return true if t1 is strictly before t2, false otherwise.
 */
bool mu_time_precedes(mu_time_abs_t t1, mu_time_abs_t t2);

/**
 * @brief Return true if t1 is equal to t2
 *
 * @param t1 A time object
 * @param t2 A time object
 * @return true if t1 equals t2, false otherwise.
 */
bool mu_time_equals(mu_time_abs_t t1, mu_time_abs_t t2);

/**
 * @brief Return true if t1 is strictly after t2
 *
 * Note that if you want to know if t1 is equal to or after t2, you can use the
 * construct `!mu_time_precedes(t2, t1)``
 *
 * @param t1 A time object
 * @param t2 A time object
 * @return true if t1 is strictly after t2, false otherwise.
 */
bool mu_time_follows(mu_time_abs_t t1, mu_time_abs_t t2);

/**
 * @brief Convert a mu_time_rel_t to milliseconds;
 *
 * @param dt A relative time object
 * @return dt converted to milliseconds
 */
uint32_t mu_time_rel_to_ms(mu_time_rel_t dt);

/**
 * @brief Convert milliseconds to a mu_time_rel_t
 *
 * @param ms A quantity of milliseconds.
 * @return ms converted to mu_time_rel_t
 */
mu_time_rel_t mu_time_ms_to_rel(uint32_t ms);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_TIME_H_ */
