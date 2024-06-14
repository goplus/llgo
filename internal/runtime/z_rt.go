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

	"github.com/goplus/llgo/c/pthread"
	"github.com/goplus/llgo/internal/abi"
	"github.com/goplus/llgo/internal/runtime/c"
)

// -----------------------------------------------------------------------------

// Defer presents defer statements in a function.
type Defer struct {
	Addr unsafe.Pointer // sigjmpbuf
	Bits uintptr
	Link *Defer
	Rund unsafe.Pointer // block address after RunDefers
}

// Recover recovers a panic.
func Recover() (ret any) {
	ptr := excepKey.Get()
	if ptr != nil {
		excepKey.Set(nil)
		ret = *(*any)(ptr)
		c.Free(ptr)
	}
	return
}

// Panic panics with a value.
func Panic(v any) {
	ptr := c.Malloc(unsafe.Sizeof(v))
	*(*any)(ptr) = v
	excepKey.Set(ptr)

	Rethrow((*Defer)(c.GoDeferData()))
}

// Rethrow rethrows a panic.
func Rethrow(link *Defer) {
	if ptr := excepKey.Get(); ptr != nil {
		if link == nil {
			TracePanic(*(*Eface)(ptr))
			c.Free(ptr)
			c.Exit(2)
		} else {
			c.Siglongjmp(link.Addr, 1)
		}
	}
}

var (
	excepKey pthread.Key
)

func init() {
	excepKey.Create(nil)
}

// -----------------------------------------------------------------------------

// TracePanic prints panic message.
func TracePanic(v Eface) {
	kind := v._type.Kind()
	switch {
	case kind == abi.String:
		stringTracef(c.Stderr, c.Str("panic: %s\n"), *(*String)(v.data))
	}
	// TODO(xsw): other message type
}

func stringTracef(fp c.FilePtr, format *c.Char, s String) {
	cs := c.Alloca(uintptr(s.len) + 1)
	c.Fprintf(fp, format, CStrCopy(cs, s))
}

// -----------------------------------------------------------------------------

// Zeroinit initializes memory to zero.
func Zeroinit(p unsafe.Pointer, size uintptr) unsafe.Pointer {
	return c.Memset(p, 0, size)
}

// -----------------------------------------------------------------------------
