/*
 * Copyright (c) 2022 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package scanner

import (
	"fmt"
	"go/token"
	"unicode"
	"unicode/utf8"
)

// An ErrorHandler may be provided to Scanner.Init. If a syntax error is
// encountered and a handler was installed, the handler is called with a
// position and an error message. The position points to the beginning of
// the offending token.
type ErrorHandler func(pos token.Position, msg string)

// A Scanner holds the scanner's internal state while processing
// a given text. It can be allocated as part of another data
// structure but must be initialized via Init before use.
type Scanner struct {
	// immutable state
	src string

	// scanning state
	ch       rune // current character
	offset   int  // character offset
	rdOffset int  // reading offset (position after current character)

	// public state - ok to modify
	ErrorCount int // number of errors encountered
	OnErr      func(msg string)
}

const (
	bom = 0xFEFF // byte order mark, only permitted as very first character
	eof = -1     // end of file
)

// Read the next Unicode char into s.ch.
// s.ch < 0 means end-of-file.
//
// For optimization, there is some overlap between this method and
// s.scanIdentifier.
func (s *Scanner) next() {
	if s.rdOffset < len(s.src) {
		s.offset = s.rdOffset
		r, w := rune(s.src[s.rdOffset]), 1
		switch {
		case r == 0:
			s.error("illegal character NUL")
		case r >= utf8.RuneSelf:
			// not ASCII
			r, w = utf8.DecodeRuneInString(s.src[s.rdOffset:])
			if r == utf8.RuneError && w == 1 {
				s.error("illegal UTF-8 encoding")
			} else if r == bom && s.offset > 0 {
				s.error("illegal byte order mark")
			}
		}
		s.rdOffset += w
		s.ch = r
	} else {
		s.offset = len(s.src)
		s.ch = eof
	}
}

// peek returns the byte following the most recently read character without
// advancing the scanner. If the scanner is at EOF, peek returns 0.
func (s *Scanner) peek() byte {
	if s.rdOffset < len(s.src) {
		return s.src[s.rdOffset]
	}
	return 0
}

func (s *Scanner) Init(src string) {
	s.src = src
	s.ch = ' '
	s.offset = 0
	s.rdOffset = 0
	s.ErrorCount = 0

	s.next()
	if s.ch == bom {
		s.next() // ignore BOM at file beginning
	}
}

func (s *Scanner) Source() string {
	return s.src
}

func (s *Scanner) error(msg string) {
	if s.OnErr != nil {
		s.OnErr(msg)
	}
	s.ErrorCount++
}

func (s *Scanner) errorf(format string, args ...interface{}) {
	s.error(fmt.Sprintf(format, args...))
}

func isLetter(ch rune) bool {
	return 'a' <= lower(ch) && lower(ch) <= 'z' || ch == '_' || ch >= utf8.RuneSelf && unicode.IsLetter(ch)
}

func isDigit(ch rune) bool {
	return isDecimal(ch) || ch >= utf8.RuneSelf && unicode.IsDigit(ch)
}

// scanIdentifier reads the string of valid identifier characters at s.offset.
// It must only be called when s.ch is known to be a valid letter.
//
// Be careful when making changes to this function: it is optimized and affects
// scanning performance significantly.
func (s *Scanner) scanIdentifier() string {
	offs := s.offset

	// Optimize for the common case of an ASCII identifier.
	//
	// Ranging over s.src[s.rdOffset:] lets us avoid some bounds checks, and
	// avoids conversions to runes.
	//
	// In case we encounter a non-ASCII character, fall back on the slower path
	// of calling into s.next().
	for rdOffset, b := range s.src[s.rdOffset:] {
		if 'a' <= b && b <= 'z' || 'A' <= b && b <= 'Z' || b == '_' || '0' <= b && b <= '9' {
			// Avoid assigning a rune for the common case of an ascii character.
			continue
		}
		s.rdOffset += rdOffset
		if 0 < b && b < utf8.RuneSelf {
			// Optimization: we've encountered an ASCII character that's not a letter
			// or number. Avoid the call into s.next() and corresponding set up.
			//
			// Note that s.next() does some line accounting if s.ch is '\n', so this
			// shortcut is only possible because we know that the preceding character
			// is not '\n'.
			s.ch = rune(b)
			s.offset = s.rdOffset
			s.rdOffset++
			goto exit
		}
		// We know that the preceding character is valid for an identifier because
		// scanIdentifier is only called when s.ch is a letter, so calling s.next()
		// at s.rdOffset resets the scanner state.
		s.next()
		for isLetter(s.ch) || isDigit(s.ch) {
			s.next()
		}
		goto exit
	}
	s.offset = len(s.src)
	s.rdOffset = len(s.src)
	s.ch = eof

exit:
	return string(s.src[offs:s.offset])
}

func lower(ch rune) rune     { return ('a' - 'A') | ch } // returns lower-case ch iff ch is ASCII letter
func isDecimal(ch rune) bool { return '0' <= ch && ch <= '9' }
func isHex(ch rune) bool     { return '0' <= ch && ch <= '9' || 'a' <= lower(ch) && lower(ch) <= 'f' }

func (s *Scanner) digits(base int, invalid *int) (digsep int) {
	if base <= 10 {
		max := rune('0' + base)
		for isDecimal(s.ch) {
			if s.ch >= max && *invalid < 0 {
				*invalid = s.offset // record invalid rune offset
			}
			digsep = 1
			s.next()
		}
	} else {
		for isHex(s.ch) {
			digsep = 1
			s.next()
		}
	}
	return
}

func (s *Scanner) scanNumber() (token.Token, string) {
	offs := s.offset

	base := 10        // number base
	prefix := rune(0) // one of 0 (decimal), '0' (0-octal), 'x', 'o', or 'b'
	digsep := 0       // bit 0: digit present, bit 1: '_' present
	invalid := -1     // index of invalid digit in literal, or < 0

	if s.ch == '0' {
		s.next()
		switch lower(s.ch) {
		case 'x':
			s.next()
			base, prefix = 16, 'x'
		case 'o':
			s.next()
			base, prefix = 8, 'o'
		case 'b':
			s.next()
			base, prefix = 2, 'b'
		default:
			base, prefix = 8, '0'
			digsep = 1 // leading 0
		}
	}
	digsep |= s.digits(base, &invalid)
	if digsep&1 == 0 {
		s.error(litname(prefix) + " has no digits")
	}

	lit := string(s.src[offs:s.offset])
	if invalid >= 0 {
		s.errorf("invalid digit %q in %s", lit[invalid-offs], litname(prefix))
	}
	return token.INT, lit
}

func litname(prefix rune) string {
	switch prefix {
	case 'x':
		return "hexadecimal literal"
	case 'o', '0':
		return "octal literal"
	case 'b':
		return "binary literal"
	}
	return "decimal literal"
}

func (s *Scanner) skipWhitespace() {
	for s.ch == ' ' || s.ch == '\t' || s.ch == '\n' || s.ch == '\r' {
		s.next()
	}
}

func (s *Scanner) Scan() (tok token.Token, lit string) {
	s.skipWhitespace()

	// determine token value
	switch ch := s.ch; {
	case isLetter(ch):
		lit = s.scanIdentifier()
		tok = token.IDENT
	case isDecimal(ch):
		tok, lit = s.scanNumber()
	default:
		s.next() // always make progress
		switch ch {
		case -1:
			tok = token.EOF
		case '.':
			// fractions starting with a '.' are handled by outer switch
			tok = token.PERIOD
			if s.ch == '.' && s.peek() == '.' {
				s.next()
				s.next() // consume last '.'
				tok = token.ELLIPSIS
			}
		case ',':
			tok = token.COMMA
		case '(':
			tok = token.LPAREN
		case ')':
			tok = token.RPAREN
		case '[':
			tok = token.LBRACK
		case ']':
			tok = token.RBRACK
		case '*':
			tok = token.MUL
		case '^':
			tok = token.XOR
		default:
			// next reports unexpected BOMs - don't repeat
			if ch != bom {
				s.errorf("illegal character %#U", ch)
			}
			tok = token.ILLEGAL
			lit = string(ch)
		}
	}
	return
}
