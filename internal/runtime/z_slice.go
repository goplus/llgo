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

// Slice is the runtime representation of a slice.
type Slice struct {
	data unsafe.Pointer
	len  int
	cap  int
}

// NilSlice returns a nil slice.
func NilSlice() Slice {
	return Slice{nil, 0, 0}
}

// NewSlice creates a new slice.
func NewSlice(data unsafe.Pointer, len, cap int) Slice {
	return Slice{data, len, cap}
}

// SliceLen returns the length of a slice.
func SliceLen(s Slice) int {
	return s.len
}

// SliceCap returns the capacity of a slice.
func SliceCap(s Slice) int {
	return s.cap
}

// SliceData returns the data pointer of a slice.
func SliceData(s Slice) unsafe.Pointer {
	return s.data
}

func NewSlice3(base unsafe.Pointer, eltSize, cap, i, j, k int) (s Slice) {
	if i < 0 || j < i || k < j || k > cap {
		panic("slice index out of bounds")
	}
	s.len = j - i
	s.cap = k - i
	if k-i > 0 {
		s.data = c.Advance(base, i*eltSize)
	} else {
		s.data = base
	}
	return
}

// -----------------------------------------------------------------------------
