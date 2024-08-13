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

package bytealg

// llgo:skip init
import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/internal/runtime"
)

func IndexByte(b []byte, ch byte) int {
	ptr := unsafe.Pointer(unsafe.SliceData(b))
	ret := c.Memchr(ptr, c.Int(ch), uintptr(len(b)))
	if ret != nil {
		return int(uintptr(ret) - uintptr(ptr))
	}
	return -1
}

func IndexByteString(s string, ch byte) int {
	ptr := unsafe.Pointer(unsafe.StringData(s))
	ret := c.Memchr(ptr, c.Int(ch), uintptr(len(s)))
	if ret != nil {
		return int(uintptr(ret) - uintptr(ptr))
	}
	return -1
}

func Count(b []byte, c byte) (n int) {
	for _, x := range b {
		if x == c {
			n++
		}
	}
	return
}

func CountString(s string, c byte) (n int) {
	for i := 0; i < len(s); i++ {
		if s[i] == c {
			n++
		}
	}
	return
}

// Index returns the index of the first instance of b in a, or -1 if b is not present in a.
// Requires 2 <= len(b) <= MaxLen.
func Index(a, b []byte) int {
	for i := 0; i <= len(a)-len(b); i++ {
		if equal(a[i:i+len(b)], b) {
			return i
		}
	}
	return -1
}

func equal(a, b []byte) bool {
	if n := len(a); n == len(b) {
		return c.Memcmp(unsafe.Pointer(unsafe.SliceData(a)), unsafe.Pointer(unsafe.SliceData(b)), uintptr(n)) == 0
	}
	return false
}

// IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
// Requires 2 <= len(b) <= MaxLen.
func IndexString(a, b string) int {
	for i := 0; i <= len(a)-len(b); i++ {
		if a[i:i+len(b)] == b {
			return i
		}
	}
	return -1
}

// MakeNoZero makes a slice of length and capacity n without zeroing the bytes.
// It is the caller's responsibility to ensure uninitialized bytes
// do not leak to the end user.
func MakeNoZero(n int) (r []byte) {
	s := (*sliceHead)(unsafe.Pointer(&r))
	s.data = runtime.AllocU(uintptr(n))
	s.len = n
	s.cap = n
	return
}

type sliceHead struct {
	data unsafe.Pointer
	len  int
	cap  int
}

func LastIndexByte(s []byte, c byte) int {
	for i := len(s) - 1; i >= 0; i-- {
		if s[i] == c {
			return i
		}
	}
	return -1
}

func LastIndexByteString(s string, c byte) int {
	for i := len(s) - 1; i >= 0; i-- {
		if s[i] == c {
			return i
		}
	}
	return -1
}
