//go:build nogc
// +build nogc

/*
 * Copyright (c) 2024 The XGo Authors (xgo.dev). All rights reserved.
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

	c "github.com/goplus/llgo/runtime/internal/clite"
)

// AllocU allocates uninitialized memory.
func AllocU(size uintptr) unsafe.Pointer {
	if size == 0 {
		return zeroAlloc()
	}
	p := c.Malloc(size)
	afterAlloc(size)
	return p
}

// AllocZ allocates zero-initialized memory.
func AllocZ(size uintptr) unsafe.Pointer {
	if size == 0 {
		return zeroAlloc()
	}
	ret := c.Malloc(size)
	afterAlloc(size)
	return c.Memset(ret, 0, size)
}

// AddCleanupPtr is not implemented when GC is disabled.
// Cleanup functions will never be called.
func AddCleanupPtr(ptr unsafe.Pointer, cleanup func()) (cancel func()) {
	return func() {} // no-op cancel
}

// AddCleanupValuePtr is not implemented when GC is disabled.
// Cleanup functions will never be called.
func AddCleanupValuePtr(ptr unsafe.Pointer, size uintptr, cleanup func(unsafe.Pointer)) (cancel func()) {
	return func() {} // no-op cancel
}
