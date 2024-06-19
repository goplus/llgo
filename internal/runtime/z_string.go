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

package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

// -----------------------------------------------------------------------------

// String is the runtime representation of a string.
// It cannot be used safely or portably and its representation may
// change in a later release.
//
// Unlike reflect.StringHeader, its Data field is sufficient to guarantee the
// data it references will not be garbage collected.
type String struct {
	data unsafe.Pointer
	len  int
}

// StringCat concatenates two strings.
func StringCat(a, b String) String {
	n := a.len + b.len
	dest := AllocU(uintptr(n))
	c.Memcpy(dest, a.data, uintptr(a.len))
	c.Memcpy(c.Advance(dest, a.len), b.data, uintptr(b.len))
	return String{dest, n}
}

// -----------------------------------------------------------------------------

// CStrCopy copies a Go string to a C string buffer and returns it.
func CStrCopy(dest unsafe.Pointer, s String) *int8 {
	n := s.len
	c.Memcpy(dest, s.data, uintptr(n))
	*(*int8)(c.Advance(dest, n)) = 0
	return (*int8)(dest)
}

func CStrDup(s String) *int8 {
	dest := AllocU(uintptr(s.len + 1))
	return CStrCopy(dest, s)
}

func StringSlice(base String, i, j int) String {
	if i < 0 || j < i || j > base.len {
		panic("string slice index out of bounds")
	}
	if i < base.len {
		return String{c.Advance(base.data, i), j - i}
	}
	return String{nil, 0}
}

type StringIter struct {
	s   string
	pos int
}

func NewStringIter(s string) *StringIter {
	return &StringIter{s, 0}
}

func StringIterNext(it *StringIter) (ok bool, k int, v rune) {
	if it.pos >= len(it.s) {
		return false, 0, 0
	}
	k = it.pos
	if c := it.s[it.pos]; c < runeSelf {
		it.pos++
		v = rune(c)
	} else {
		v, it.pos = decoderune(it.s, it.pos)
	}
	ok = true
	return
}

func StringToBytes(s String) []byte {
	if s.len == 0 {
		return nil
	}
	data := make([]byte, s.len)
	c.Memcpy(unsafe.Pointer(&data[0]), s.data, uintptr(s.len))
	return data
}

func StringToRunes(s string) []rune {
	if len(s) == 0 {
		return nil
	}
	data := make([]rune, len(s))
	var index uint
	for i := 0; i < len(s); {
		if c := s[i]; c < runeSelf {
			data[index] = rune(c)
			i++
		} else {
			data[index], i = decoderune(s, i)
		}
		index++
	}
	return data[:index:index]
}

func StringFromCStr(cstr *int8) (s String) {
	return StringFrom(unsafe.Pointer(cstr), int(c.Strlen(cstr)))
}

func StringFromBytes(b Slice) (s String) {
	return StringFrom(b.data, b.len)
}

func StringFrom(data unsafe.Pointer, n int) (s String) {
	if n == 0 {
		return
	}
	s.len = n
	s.data = AllocU(uintptr(n))
	c.Memcpy(s.data, data, uintptr(n))
	return
}

func StringFromRunes(rs []rune) (s String) {
	if len(rs) == 0 {
		return
	}
	data := make([]byte, len(rs)*4)
	var index int
	for _, r := range rs {
		n := encoderune(data[index:], r)
		index += n
	}
	s.len = index
	s.data = unsafe.Pointer(&data[0])
	return
}

func StringFromRune(r rune) (s String) {
	var buf [4]byte
	n := encoderune(buf[:], r)
	s.len = n
	s.data = unsafe.Pointer(&buf[0])
	return
}

func StringEqual(x, y String) bool {
	if x.len != y.len {
		return false
	}
	if x.data != y.data {
		for i := 0; i < x.len; i++ {
			if *(*byte)(c.Advance(x.data, i)) != *(*byte)(c.Advance(y.data, i)) {
				return false
			}
		}
	}
	return true
}

func StringLess(x, y String) bool {
	n := x.len
	if n > y.len {
		n = y.len
	}
	for i := 0; i < n; i++ {
		ix := *(*byte)(c.Advance(x.data, i))
		iy := *(*byte)(c.Advance(y.data, i))
		if ix < iy {
			return true
		} else if ix > iy {
			return false
		}
	}
	return x.len < y.len
}

// -----------------------------------------------------------------------------
