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

// Slice is the runtime representation of a slice.
type Slice struct {
	data unsafe.Pointer
	len  int
	cap  int
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

// SliceAppend append elem data and returns a slice.
func SliceAppend(src Slice, data unsafe.Pointer, num, etSize int) Slice {
	if etSize == 0 {
		return src
	}
	oldLen := src.len
	newLen := src.len + num
	if newLen > src.cap {
		newCap := nextslicecap(newLen, src.cap)
		p := AllocZ(uintptr(newCap * etSize))
		if oldLen != 0 {
			c.Memcpy(p, src.data, uintptr(oldLen*etSize))
		}
		src.data = p
		src.cap = newCap
	}
	src.len = newLen
	c.Memcpy(c.Advance(src.data, oldLen*etSize), data, uintptr(num*etSize))
	return src
}

// SliceCopy copy data to slice and returns a slice.
func SliceCopy(dst Slice, data unsafe.Pointer, num int, etSize int) int {
	n := dst.len
	if n > num {
		n = num
	}
	if n > 0 {
		c.Memmove(dst.data, data, uintptr(n*etSize))
	}
	return n
}

// -----------------------------------------------------------------------------
