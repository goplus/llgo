//go:build !nogc
// +build !nogc

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
	"github.com/goplus/llgo/c/bdwgc"
)

// AllocU allocates uninitialized memory.
func AllocU(size uintptr) unsafe.Pointer {
	return bdwgc.Malloc(size)
}

// AllocZ allocates zero-initialized memory.
func AllocZ(size uintptr) unsafe.Pointer {
	ret := bdwgc.Malloc(size)
	return c.Memset(ret, 0, size)
}

// Realloc reallocates memory.
func Realloc(ptr unsafe.Pointer, size uintptr) unsafe.Pointer {
	return bdwgc.Realloc(ptr, size)
}

// Free frees memory.
func Free(ptr unsafe.Pointer) {
	bdwgc.Free(ptr)
}

// -----------------------------------------------------------------------------

type finalizerFunc func(unsafe.Pointer)

func finalizerCallback(ptr unsafe.Pointer, cd unsafe.Pointer) {
	iface := [2]unsafe.Pointer{cd, nil}
	fn := *(*finalizerFunc)((c.Pointer)(&iface))
	fn(ptr)
}

// obj and finalizer must pointer
func SetFinalizer(obj any, finalizer any) {
	iface := (*[2]unsafe.Pointer)(unsafe.Pointer(&obj))
	p := iface[1]
	// Convert finalizer to unsafe.Pointer
	iface = (*[2]unsafe.Pointer)(unsafe.Pointer(&finalizer))
	cd := iface[1]
	bdwgc.RegisterFinalizer(p, finalizerCallback, cd, nil, nil)
}

func GC() {
	bdwgc.Gcollect()
}
