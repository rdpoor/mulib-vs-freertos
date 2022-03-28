/**
 * MIT License
 *
 * Copyright (c) 2020 R. D. Poor <rdpoor@gmail.com>
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
// Includes

#include "mu_ansi_term.h"
#include "mu_kbd_io.h"
#include <stdio.h>
#include <stdlib.h>

#include <fcntl.h>
#include <sys/ioctl.h>
#include <termios.h>
#include <unistd.h>

// =============================================================================
// Local types and definitions
#define DEFAULT_TERM_NCOLS 80
#define DEFAULT_TERM_NROWS 24

/**
 * Uncomment if your platform has <signal.h>
 */
#define HAS_SIGNAL                                                             \
  (1) // THIS SHOULD GO go into a platform-specific .h instead...

#ifdef HAS_SIGNAL
#include <signal.h>
#endif

// =============================================================================
// Local storage

static mu_ansi_term_color_t s_fg_color;
static mu_ansi_term_color_t s_bg_color;

#undef ANSI_TERM_COLOR
#define ANSI_TERM_COLOR(MU_ANSI_TERM__name, _fg, _bg) _fg,
static const uint8_t s_fg_colormap[] = {DEFINE_ANSI_TERM_COLORS};

#undef ANSI_TERM_COLOR
#define ANSI_TERM_COLOR(MU_ANSI_TERM__name, _fg, _bg) _bg,
static const uint8_t s_bg_colormap[] = {DEFINE_ANSI_TERM_COLORS};

static int term_cols = DEFAULT_TERM_NCOLS;
static int term_rows = DEFAULT_TERM_NROWS;

// =============================================================================
// Local (forward) declarations

static bool has_ansi_term();
static char getint(uint8_t *val);
static uint8_t map_fg_color(mu_ansi_term_color_t color);
static uint8_t map_bg_color(mu_ansi_term_color_t color);
static void read_ttysize();

// =============================================================================
// Public code

void mu_ansi_term_init(void) {
  read_ttysize(); // POSIX lets use query the width and height of the terminal
#ifdef HAS_SIGNAL
  signal(SIGWINCH, read_ttysize); // POSIX lets us detect changes to the width
                                  // and height of the terminal
#endif
  // printf("mu_has_ansi_term: %s\n", has_ansi_term() ? "true" : "false");
  mu_ansi_term_set_colors(MU_ANSI_TERM_DEFAULT_COLOR,
                          MU_ANSI_TERM_DEFAULT_COLOR);
}

void mu_ansi_term_terminal_bell() {
  if (!has_ansi_term())
    return;
  printf("\a"); // ansi terminal bell / flash
}

void mu_ansi_term_reset() {
  if (!has_ansi_term())
    return;
  printf(
      "%s%s", MU_ANSI_TERM_ESC, MU_ANSI_TERM_RESET); // undo any color settings
}

void mu_ansi_term_restore_colors_and_cursor() {
  if (!has_ansi_term())
    return;
  mu_ansi_term_reset();
  mu_ansi_term_set_cursor_visible(true);
}

void mu_ansi_term_set_cursor_visible(bool isVisible) {
  if (!has_ansi_term())
    return;
  printf("%s%s",
         MU_ANSI_TERM_ESC,
         (isVisible ? MU_ANSI_SHOW_CURSOR : MU_ANSI_HIDE_CURSOR));
}

/**
 * @brief Move cursor to 0, 0
 */
void mu_ansi_term_home(void) {
  if (!has_ansi_term())
    return;
  puts(MU_ANSI_TERM_ESC "H");
}

/**
 * @brief Erase screen and scrollback
 */
void mu_ansi_term_clear_buffer(void) {
  if (!has_ansi_term())
    return;
  puts(MU_ANSI_TERM_ESC "3J");
}
/**
 * @brief Erase screen
 */
void mu_ansi_term_clear_screen(void) {
  if (!has_ansi_term())
    return;
  puts(MU_ANSI_TERM_ESC "2J");
}

/**
 * @brief Erase screen from current cursor position
 */
void mu_ansi_term_clear_to_end_of_screen(void) {
  if (!has_ansi_term())
    return;
  puts(MU_ANSI_TERM_ESC "J");
}

/**
 * @brief Erase current line
 */
void mu_ansi_term_clear_line(void) {
  if (!has_ansi_term())
    return;
  puts(MU_ANSI_TERM_ESC "2K");
}

/**
 * @brief Erase line from current cursor position
 */
void mu_ansi_term_clear_to_end_of_line(void) {
  if (!has_ansi_term())
    return;
  puts(MU_ANSI_TERM_ESC "K");
}

/**
 * @brief Set Cursor Position
 *
 * Note: assumes row and col are 0 based, but converts to 1 based for ANSI spec.
 */

// TODO:  This is broken

void mu_ansi_term_set_cursor_position(uint8_t row, uint8_t col) {
  if (!has_ansi_term())
    return;
  // optimize.
  if (row == 0) {
    if (col == 0) {
      puts(MU_ANSI_TERM_ESC "H");
    } else {
      printf(MU_ANSI_TERM_ESC ";%dH", col + 1);
    }
  } else {
    if (col == 0) {
      printf(MU_ANSI_TERM_ESC "%dH", row + 1);
    } else {
      printf(MU_ANSI_TERM_ESC "%d;%dH", row + 1, col + 1);
    }
  }
}

// TODO:  This is broken

bool mu_ansi_term_get_cursor_position(uint8_t *row, uint8_t *col) {
  if (!has_ansi_term())
    return false;
  char ch;
  uint8_t temp_row;
  uint8_t temp_col;

  puts(MU_ANSI_TERM_ESC
       "6n"); // device status reports.  responds with ESC[<row>;<col>R
  ch = getchar();
  if (ch != '\e') {
    ungetc(ch, 0);
    return false;
  }
  ch = getchar();
  if (ch != '[') {
    ungetc(ch, 0);
    return false;
  }
  ch = getint(&temp_row);
  if (ch != ';') {
    ungetc(ch, 0);
    return false;
  }
  ch = getint(&temp_col);
  if (ch != 'R') {
    ungetc(ch, 0);
    return false;
  }

  *row = temp_row - 1;
  *col = temp_col - 1;
  return true;
}

int mu_ansi_term_get_ncols() { return term_cols; }

int mu_ansi_term_get_nrows() { return term_rows; }

void mu_ansi_term_set_ncols(int n) { term_cols = n; }

void mu_ansi_term_set_nrows(int n) { term_rows = n; }

/**
 * @brief Set foreground and background color
 */
void mu_ansi_term_set_colors(mu_ansi_term_color_t fg, mu_ansi_term_color_t bg) {
  s_fg_color = fg;
  s_bg_color = bg;
  if (!has_ansi_term())
    return;
  printf(MU_ANSI_TERM_ESC "%d;%dm", map_fg_color(fg), map_bg_color(bg));
}

/**
 * @brief Get foreground and background color
 */
void mu_ansi_term_get_colors(mu_ansi_term_color_t *fg,
                             mu_ansi_term_color_t *bg) {
  *fg = s_fg_color;
  *bg = s_bg_color;
}

// =============================================================================
// Local (static) code

static bool has_ansi_term() {
#ifdef HAS_ANSI_TERM
  return true;
#elif
  return false;
#endif
}

static void read_ttysize() {
#ifdef TIOCGSIZE
  struct ttysize ts;
  ioctl(STDIN_FILENO, TIOCGSIZE, &ts);
  mu_ansi_term_set_ncols(ts.ts_cols);
  mu_ansi_term_set_nrows(ts.ts_lines);
#elif defined(TIOCGWINSZ)
  struct winsize ts;
  ioctl(STDIN_FILENO, TIOCGWINSZ, &ts);
  mu_ansi_term_set_ncols(ts.ws_col);
  mu_ansi_term_set_nrows(ts.ws_row);
#endif /* TIOCGSIZE */
}

static char getint(uint8_t *val) {
  char ch;
  *val = 0;
  while (1) {
    ch = getchar();
    if ((ch >= '0' && (ch <= '9'))) {
      *val = (*val * 10) + ch - '0';
    } else {
      break;
    }
  }
  return ch; // return char that terminated the run of digits
}

static uint8_t map_fg_color(mu_ansi_term_color_t color) {
  return s_fg_colormap[color];
}

static uint8_t map_bg_color(mu_ansi_term_color_t color) {
  return s_bg_colormap[color];
}
