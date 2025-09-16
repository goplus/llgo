//go:build !nogc && baremetal

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

// don't import clite here, because gc may not be initalized

//go:linkname memset C.memset
func memset(unsafe.Pointer, int, uintptr) unsafe.Pointer

//go:linkname memcpy C.memcpy
func memcpy(unsafe.Pointer, unsafe.Pointer, uintptr)

// AllocU allocates uninitialized memory.
func AllocU(size uintptr) unsafe.Pointer {
	return alloc(size)
}

// AllocZ allocates zero-initialized memory.
func AllocZ(size uintptr) unsafe.Pointer {
	ptr := alloc(size)
	return memset(ptr, 0, size)
}
