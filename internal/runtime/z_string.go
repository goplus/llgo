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

// EmptyString returns an empty string.
func EmptyString() String {
	return String{nil, 0}
}

// NewString creates a new string.
func NewString(data unsafe.Pointer, len int) String {
	return String{data, len}
}

// StringLen returns the length of a string.
func StringLen(s Slice) int {
	return s.len
}

// StringData returns the data pointer of a string.
func StringData(s String) unsafe.Pointer {
	return s.data
}

// StringCat concatenates strings.
func StringCat(args ...String) (ret String) {
	n := 0
	for _, v := range args {
		n += v.len
	}
	dest := Alloc(uintptr(n))
	ret.data = dest
	ret.len = n
	for _, v := range args {
		c.Memcpy(dest, v.data, uintptr(v.len))
		dest = c.Advance(dest, v.len)
	}
	return
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
	dest := Alloc(uintptr(s.len + 1))
	return CStrCopy(dest, s)
}

// -----------------------------------------------------------------------------
