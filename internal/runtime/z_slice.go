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

// SliceData returns the data pointer of a slice.
func SliceData(s Slice) unsafe.Pointer {
	return s.data
}

// -----------------------------------------------------------------------------
