/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
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

package rure

// #include <rure.h>
import "C"

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: -lrure"
)

// -----------------------------------------------------------------------------

// Rure is the type of a compiled regular expression.
//
// An Rure can be safely used from multiple threads simultaneously.
type Rure C.rure

// RureSet is the type of a set of compiled regular expressions.
//
// An Rure can be safely used from multiple threads simultaneously.
type RureSet C.rure_set

// Options is the set of non-flag configuration options for compiling a regular
// expression. Currently, only two options are available: setting the size limit
// of the compiled program and setting the size limit of the cache of states
// that the DFA uses while searching.
//
// For most uses, the default settings will work fine, and nil can be passed
// wherever a *Options is expected.
type Options C.rure_options

// The flags listed below can be used in Compile to set the default flags. All
// flags can otherwise be toggled in the expression itself using standard
// syntax, e.g., `(?i)` turns case insensitive matching on and `(?-i)` disables
// it.
const (
	FLAG_CASEI      = C.RURE_FLAG_CASEI      // The case insensitive (i) flag.
	FLAG_MULTI      = C.RURE_FLAG_MULTI      // The multi-line matching (m) flag. (^ and $ match new line boundaries.)
	FLAG_DOTNL      = C.RURE_FLAG_DOTNL      // The any character (s) flag. (. matches new line.)
	FLAG_SWAP_GREED = C.RURE_FLAG_SWAP_GREED // The greedy swap (U) flag. (e.g., + is ungreedy and +? is greedy.)
	FLAG_SPACE      = C.RURE_FLAG_SPACE      // The ignore whitespace (x) flag.
	FLAG_UNICODE    = C.RURE_FLAG_UNICODE    // The Unicode (u) flag.
	DEFAULT_FLAGS   = C.RURE_DEFAULT_FLAGS   // The default set of flags enabled when no flags are set.
)

// Match corresponds to the location of a single match in a haystack.
type Match C.rure_match

// Captures represents storage for sub-capture locations of a match.
//
// Computing the capture groups of a match can carry a significant performance
// penalty, so their use in the API is optional.
//
// A Captures value can be reused in multiple calls to FindCaptures, so long as
// it is used with the compiled regular expression that created it.
//
// A Captures value may outlive its corresponding rure and can be freed
// independently.
//
// It is not safe to use from multiple threads simultaneously.
type Captures C.rure_captures

// Iter is an iterator over successive non-overlapping matches in a particular
// haystack.
//
// An Iter value may not outlive its corresponding rure and should be freed
// before its corresponding rure is freed.
//
// It is not safe to use from multiple threads simultaneously.
type Iter C.rure_iter

// IterCaptureNames is an iterator over the list of capture group names in this
// particular rure.
//
// An IterCaptureNames value may not outlive its corresponding rure, and should
// be freed before its corresponding rure is freed.
//
// It is not safe to use from multiple threads simultaneously.
type IterCaptureNames C.rure_iter_capture_names

// Error is an error that caused compilation to fail.
//
// Most errors are syntax errors but an error can be returned if the compiled
// regular expression would be too big.
//
// Whenever a function accepts an *Error, it is safe to pass nil. (But you will
// not get access to the error if one occurred.)
//
// It is not safe to use from multiple threads simultaneously.
type Error C.rure_error

// -----------------------------------------------------------------------------

// CompileMust compiles the given pattern into a regular expression. If
// compilation fails for any reason, an error message is printed to stderr and
// the process is aborted.
//
// The pattern given should be in UTF-8. For convenience, this accepts a C
// string, which means the pattern cannot usefully contain NUL. If your pattern
// may contain NUL, consider using a regular expression escape sequence, or
// just use Compile.
//
// This uses DEFAULT_FLAGS.
//
// The compiled expression returned may be used from multiple threads
// simultaneously.
//
//go:linkname CompileMust C.rure_compile_must
func CompileMust(char *c.Char) *Rure { return nil }

// Compile compiles the given pattern into a regular expression. The pattern
// must be valid UTF-8 and the length corresponds to the number of bytes in the
// pattern.
//
// flags is a bitfield. Valid values are constants declared with prefix FLAG_.
//
// options contains non-flag configuration settings. If it's nil, default
// settings are used. options may be freed immediately after a call to Compile.
//
// error is set if there was a problem compiling the pattern (including if the
// pattern is not valid UTF-8). If error is nil, then no error information is
// returned. In all cases, if an error occurs, nil is returned.
//
// The compiled expression returned may be used from multiple threads
// simultaneously.
//
//go:linkname Compile C.rure_compile
func Compile(pattern *c.Char, length uintptr, flags c.Uint, options *Options, error *Error) *Rure {
	return nil
}

// Free frees the given compiled regular expression.
//
// This must be called at most once for any rure.
//
// llgo:link (*Rure).Free C.rure_free
func (re *Rure) Free() {}

// IsMatch returns true if and only if re matches anywhere in haystack.
//
// haystack may contain arbitrary bytes, but ASCII compatible text is more
// useful. UTF-8 is even more useful. Other text encodings aren't supported.
// length should be the number of bytes in haystack.
//
// start is the position at which to start searching. Note that setting the
// start position is distinct from incrementing the pointer, since the regex
// engine may look at bytes before the start position to determine match
// information. For example, if the start position is greater than 0, then the
// \A ("begin text") anchor can never match.
//
// IsMatch should be preferred to Find since it may be faster.
//
// N.B. The performance of this search is not impacted by the presence of
// capturing groups in your regular expression.
//
// llgo:link (*Rure).IsMatch C.rure_is_match
func (re *Rure) IsMatch(haystack *c.Char, length, start uintptr) bool { return false }

// Find returns true if and only if re matches anywhere in haystack.
// If a match is found, then its start and end offsets (in bytes) are set
// on the match pointer given.
//
// haystack may contain arbitrary bytes, but ASCII compatible text is more
// useful. UTF-8 is even more useful. Other text encodings aren't supported.
// length should be the number of bytes in haystack.
//
// start is the position at which to start searching. Note that setting the
// start position is distinct from incrementing the pointer, since the regex
// engine may look at bytes before the start position to determine match
// information. For example, if the start position is greater than 0, then the
// \A ("begin text") anchor can never match.
//
// Find should be preferred to FindCaptures since it may be faster.
//
// N.B. The performance of this search is not impacted by the presence of
// capturing groups in your regular expression.
//
// llgo:link (*Rure).Find C.rure_find
func (re *Rure) Find(haystack *c.Char, length, start uintptr, match *Match) bool { return false }

// FindCaptures returns true if and only if re matches anywhere in haystack. If
// a match is found, then all of its capture locations are stored in the
// captures pointer given.
//
// haystack may contain arbitrary bytes, but ASCII compatible text is more
// useful. UTF-8 is even more useful. Other text encodings aren't supported.
// length should be the number of bytes in haystack.
//
// start is the position at which to start searching. Note that setting the
// start position is distinct from incrementing the pointer, since the regex
// engine may look at bytes before the start position to determine match
// information. For example, if the start position is greater than 0, then the
// \A ("begin text") anchor can never match.
//
// Only use this function if you specifically need access to capture locations.
// It is not necessary to use this function just because your regular
// expression contains capturing groups.
//
// Capture locations can be accessed using the Captures.* functions.
//
// N.B. The performance of this search can be impacted by the number of
// capturing groups. If you're using this function, it may be beneficial to use
// non-capturing groups (e.g., `(?:re)`) where possible.
//
// llgo:link (*Rure).FindCaptures C.rure_find_captures
func (re *Rure) FindCaptures(haystack *c.Char, length, start uintptr, captures *Captures) bool {
	return false
}

// ShortestMatch returns true if and only if re matches anywhere in haystack. If
// a match is found, then its end location is stored in the pointer given. The
// end location is the place at which the regex engine determined that a match
// exists, but may occur before the end of the proper leftmost-first match.
//
// haystack may contain arbitrary bytes, but ASCII compatible text is more
// useful. UTF-8 is even more useful. Other text encodings aren't supported.
// length should be the number of bytes in haystack.
//
// start is the position at which to start searching. Note that setting the
// start position is distinct from incrementing the pointer, since the regex
// engine may look at bytes before the start position to determine match
// information. For example, if the start position is greater than 0, then the
// \A ("begin text") anchor can never match.
//
// ShortestMatch should be preferred to Find since it may be faster.
//
// N.B. The performance of this search is not impacted by the presence of
// capturing groups in your regular expression.
//
// llgo:link (*Rure).ShortestMatch C.rure_shortest_match
func (re *Rure) ShortestMatch(haystack *c.Char, length, start, end uintptr) bool { return false }

// CaptureNameIndex returns the capture index for the name given. If no such
// named capturing group exists in re, then -1 is returned.
//
// The capture index may be used with Captures.At.
//
// This function never returns 0 since the first capture group always
// corresponds to the entire match and is always unnamed.
//
// llgo:link (*Rure).CaptureNameIndex C.rure_capture_name_index
func (re *Rure) CaptureNameIndex(name *c.Char) c.Int { return 0 }

// -----------------------------------------------------------------------------

// IterCaptureNamesNew creates a new CaptureNames iterator.
//
// An iterator will report all successive capture group names of re.
//
// llgo:link (*Rure).IterCaptureNamesNew C.rure_iter_capture_names_new
func (re *Rure) IterCaptureNamesNew() *IterCaptureNames { return nil }

// Free frees the iterator given.
//
// It must be called at most once.
//
// llgo:link (*IterCaptureNames).Free C.rure_iter_capture_names_free
func (it *IterCaptureNames) Free() {}

// Next advances the iterator and returns true if and only if another capture
// group name exists.
//
// The value of the capture group name is written to the provided pointer.
//
// llgo:link (*IterCaptureNames).Next C.rure_iter_capture_names_next
func (it *IterCaptureNames) Next(name **c.Char) bool { return false }

// -----------------------------------------------------------------------------

// IterNew creates a new iterator.
//
// An iterator will report all successive non-overlapping matches of re. When
// calling iterator functions, the same haystack and length must be supplied to
// all invocations. (Strict pointer equality is, however, not required.)
//
// llgo:link (*Rure).IterNew C.rure_iter_new
func (re *Rure) IterNew() *Iter { return nil }

// Free frees the iterator given.
//
// It must be called at most once.
//
// llgo:link (*Iter).Free C.rure_iter_free
func (it *Iter) Free() {}

// Next advances the iterator and returns true if and only if a match was found.
// If a match is found, then the match pointer is set with the start and end
// location of the match, in bytes.
//
// If no match is found, then subsequent calls will return false indefinitely.
//
// haystack may contain arbitrary bytes, but ASCII compatible text is more
// useful. UTF-8 is even more useful. Other text encodings aren't supported.
// length should be the number of bytes in haystack. The given haystack must be
// logically equivalent to all other haystacks given to this iterator.
//
// Next should be preferred to Iter.NextCaptures since it may be faster.
//
// N.B. The performance of this search is not impacted by the presence of
// capturing groups in your regular expression.
//
// llgo:link (*Iter).Next C.rure_iter_next
func (it *Iter) Next(haystack *c.Char, length uintptr, match *Match) bool { return false }

// NextCaptures advances the iterator and returns true if and only if a match
// was found. If a match is found, then all of its capture locations are stored
// in the captures pointer given.
//
// If no match is found, then subsequent calls will return false indefinitely.
//
// haystack may contain arbitrary bytes, but ASCII compatible text is more
// useful. UTF-8 is even more useful. Other text encodings aren't supported.
// length should be the number of bytes in haystack. The given haystack must be
// logically equivalent to all other haystacks given to this iterator.
//
// Only use this function if you specifically need access to capture locations.
// It is not necessary to use this function just because your regular
// expression contains capturing groups.
//
// Capture locations can be accessed using the Captures.* functions.
//
// N.B. The performance of this search can be impacted by the number of
// capturing groups. If you're using this function, it may be beneficial to use
// non-capturing groups (e.g., `(?:re)`) where possible.
//
// llgo:link (*Iter).NextCaptures C.rure_iter_next_captures
func (it *Iter) NextCaptures(haystack *c.Char, length uintptr, captures *Captures) bool { return false }

// -----------------------------------------------------------------------------

// CapturesNew allocates storage for all capturing groups in re.
//
// A Captures value may be reused on subsequent calls to FindCaptures or
// Iter.NextCaptures.
//
// A Captures value may be freed independently of re, although any particular
// Captures should be used only with the re given here.
//
// It is not safe to use a Captures value from multiple threads simultaneously.
//
// llgo:link (*Rure).CapturesNew C.rure_captures_new
func (re *Rure) CapturesNew() *Captures { return nil }

// Free frees the given captures.
//
// This must be called at most once.
//
// llgo:link (*Captures).Free C.rure_captures_free
func (c *Captures) Free() {}

// At returns true if and only if the capturing group at the
// index given was part of a match. If so, the given match pointer is populated
// with the start and end location (in bytes) of the capturing group.
//
// If no capture group with the index i exists, then false is returned. (A
// capturing group exists if and only if i is less than Captures.Len().)
//
// Note that index 0 corresponds to the full match.
//
// llgo:link (*Captures).At C.rure_captures_at
func (c *Captures) At(i uintptr, match *Match) bool { return false }

// Len returns the number of capturing groups in the given captures.
//
// llgo:link (*Captures).Len C.rure_captures_len
func (c *Captures) Len() uintptr { return 0 }

// -----------------------------------------------------------------------------

// OptionsNew allocates space for options.
//
// Options may be freed immediately after a call to Compile, but otherwise may
// be freely used in multiple calls to Compile.
//
// It is not safe to set options from multiple threads simultaneously. It is
// safe to call Compile from multiple threads simultaneously using the same
// options pointer.
//
//go:linkname OptionsNew C.rure_options_new
func OptionsNew() *Options { return nil }

// Free frees the given options.
//
// This must be called at most once.
//
// llgo:link (*Options).Free C.rure_options_free
func (o *Options) Free() {}

// SizeLimit sets the approximate size limit of the compiled regular expression.
//
// This size limit roughly corresponds to the number of bytes occupied by a
// single compiled program. If the program would exceed this number, then a
// compilation error will be returned from Compile.
//
// llgo:link (*Options).SizeLimit C.rure_options_size_limit
func (o *Options) SizeLimit(limit uintptr) {}

// DFASizeLimit sets the approximate size of the cache used by the DFA during
// search.
//
// This roughly corresponds to the number of bytes that the DFA will use while
// searching.
//
// Note that this is a *per thread* limit. There is no way to set a global
// limit. In particular, if a regular expression is used from multiple threads
// simultaneously, then each thread may use up to the number of bytes
// specified here.
//
// llgo:link (*Options).DFASizeLimit C.rure_options_dfa_size_limit
func (o *Options) DFASizeLimit(limit uintptr) {}

// -----------------------------------------------------------------------------

// CompileSet compiles the given list of patterns into a single regular
// expression which can be matched in a linear-scan. Each pattern in patterns
// must be valid UTF-8 and the length of each pattern in patterns corresponds to
// a byte length in patterns_lengths.
//
// The number of patterns to compile is specified by patterns_count. patterns
// must contain at least this many entries.
//
// flags is a bitfield. Valid values are constants declared with prefix FLAG_.
//
// options contains non-flag configuration settings. If it's nil, default
// settings are used. options may be freed immediately after a call to Compile.
//
// error is set if there was a problem compiling the pattern.
//
// The compiled expression set returned may be used from multiple threads.
//
//go:linkname CompileSet C.rure_compile_set
func CompileSet(patterns **c.Char, patterns_lengths *uintptr, patterns_count uintptr, flags c.Uint, options *Options, error *Error) *RureSet {
	return nil
}

// Free frees the given compiled regular expression set.
//
// This must be called at most once for any RureSet.
//
// llgo:link (*RureSet).Free C.rure_set_free
func (re *RureSet) Free() {}

// IsMatch returns true if and only if any regexes within the set match anywhere
// in the haystack. Once a match has been located, the matching engine will quit
// immediately.
//
// haystack may contain arbitrary bytes, but ASCII compatible text is more
// useful. UTF-8 is even more useful. Other text encodings aren't supported.
// length should be the number of bytes in haystack.
//
// start is the position at which to start searching. Note that setting the
// start position is distinct from incrementing the pointer, since the regex
// engine may look at bytes before the start position to determine match
// information. For example, if the start position is greater than 0, then the
// \A ("begin text") anchor can never match.
//
// llgo:link (*RureSet).IsMatch C.rure_set_is_match
func (re *RureSet) IsMatch(haystack *c.Char, length, start uintptr) bool { return false }

// Matches compares each regex in the set against the haystack and modifies
// matches with the match result of each pattern. Match results are ordered in
// the same way as the RureSet was compiled. For example, index 0 of matches
// corresponds to the first pattern passed to CompileSet.
//
// haystack may contain arbitrary bytes, but ASCII compatible text is more
// useful. UTF-8 is even more useful. Other text encodings aren't supported.
// length should be the number of bytes in haystack.
//
// start is the position at which to start searching. Note that setting the
// start position is distinct from incrementing the pointer, since the regex
// engine may look at bytes before the start position to determine match
// information. For example, if the start position is greater than 0, then the
// \A ("begin text") anchor can never match.
//
// matches must be greater than or equal to the number of patterns the RureSet
// was compiled with.
//
// Only use this function if you specifically need to know which regexes
// matched within the set. To determine if any of the regexes matched without
// caring which, use RureSet.IsMatch.
//
// llgo:link (*RureSet).Matches C.rure_set_matches
func (re *RureSet) Matches(haystack *c.Char, length, start uintptr, matches *bool) {}

// Len returns the number of patterns RureSet was compiled with.
//
// llgo:link (*RureSet).Len C.rure_set_len
func (re *RureSet) Len() uintptr { return 0 }

// -----------------------------------------------------------------------------

// ErrorNew allocates space for an error.
//
// If error information is desired, then ErrorNew should be called to create an
// Error pointer, and that pointer can be passed to Compile. If an error
// occurred, then Compile will return nil and the error pointer will be set. A
// message can then be extracted.
//
// It is not safe to use errors from multiple threads simultaneously. An error
// value may be reused on subsequent calls to Compile.
//
// llgo:link ErrorNew C.rure_error_new
func ErrorNew() *Error { return nil }

// Free frees the error given.
//
// This must be called at most once.
//
// llgo:link (*Error).Free C.rure_error_free
func (e *Error) Free() {}

// Message returns a NUL terminated string that describes the error message.
//
// The pointer returned must not be freed. Instead, it will be freed when
// Error.Free is called. If err is used in subsequent calls to Compile, then
// this pointer may change or become invalid.
//
// llgo:link (*Error).Message C.rure_error_message
func (e *Error) Message() *c.Char { return nil }

// -----------------------------------------------------------------------------

// EscapeMust returns a NUL terminated string where all meta characters have
// been escaped. If escaping fails for any reason, an error message is printed
// to stderr and the process is aborted.
//
// The pattern given should be in UTF-8. For convenience, this accepts a C
// string, which means the pattern cannot contain a NUL byte. These correspond
// to the only two failure conditions of this function. That is, if the caller
// guarantees that the given pattern is valid UTF-8 and does not contain a NUL
// byte, then this is guaranteed to succeed (modulo out-of-memory errors).
//
// The pointer returned must not be freed directly. Instead, it should be freed
// by calling CstringFree.
//
//go:linkname EscapeMust C.rure_escape_must
func EscapeMust(pattern *c.Char) *c.Char { return nil }

// CstringFree frees the string given.
//
// This must be called at most once per string.
//
//go:linkname CstringFree C.rure_cstring_free
func CstringFree(s *c.Char) {}

// -----------------------------------------------------------------------------
