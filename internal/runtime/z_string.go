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

	"github.com/goplus/llgo/internal/runtime/c"
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
	arr := (*[1 << 30]int8)(dest)
	arr[n] = 0
	return (*int8)(dest)
}

func CStrDup(s String) *int8 {
	dest := AllocU(uintptr(s.len + 1))
	return CStrCopy(dest, s)
}

func NewStringSlice(base String, i, j int) String {
	if i < 0 || j < i || j > base.len {
		panic("string slice index out of bounds")
	}
	if i < base.len {
		return String{c.Advance(base.data, i), j - i}
	}
	return String{nil, 0}
}

// -----------------------------------------------------------------------------
