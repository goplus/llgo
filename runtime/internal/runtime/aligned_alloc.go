/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
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

import "unsafe"

// AllocUAligned allocates GC-owned storage with a power-of-two alignment.
// Like LocalPackage, it returns an interior pointer; both supported collectors
// retain the entire allocation through interior pointers. This is not an
// AllocRoot/FreeRoot allocation and must not be passed to a native free.
func AllocUAligned(size, alignment uintptr) unsafe.Pointer {
	if alignment == 0 || alignment&(alignment-1) != 0 {
		panic("runtime: invalid allocation alignment")
	}
	if alignment <= unsafe.Sizeof(uintptr(0)) {
		return AllocU(size)
	}
	// Keep even a zero-sized result inside its allocation.
	if size == 0 {
		size = 1
	}
	padding := alignment - 1
	if padding > maxAlloc || size > maxAlloc-padding {
		panic("runtime: allocation size out of range")
	}
	p := AllocU(size + padding)
	return unsafe.Add(p, -uintptr(p)&padding)
}

// AllocZAligned is the zero-initialized counterpart of AllocUAligned.
func AllocZAligned(size, alignment uintptr) unsafe.Pointer {
	p := AllocUAligned(size, alignment)
	memclrNoHeapPointers(p, size)
	return p
}
