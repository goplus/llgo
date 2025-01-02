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

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/debug"
	"github.com/goplus/llgo/runtime/internal/clite/pthread"
	"github.com/goplus/llgo/runtime/internal/clite/signal"
	"github.com/goplus/llgo/runtime/internal/clite/syscall"
	"github.com/goplus/llgo/runtime/internal/ffi"
)

// -----------------------------------------------------------------------------

// Defer presents defer statements in a function.
type Defer struct {
	Addr unsafe.Pointer // sigjmpbuf
	Bits uintptr
	Link *Defer
	Reth unsafe.Pointer // block address after Rethrow
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
			TracePanic(*(*any)(ptr))
			debug.StackTrace(0, func(fr *debug.Frame) bool {
				var info debug.Info
				debug.Addrinfo(unsafe.Pointer(fr.PC), &info)
				c.Fprintf(c.Stderr, c.Str("[0x%08X %s+0x%x, SP = 0x%x]\n"), fr.PC, fr.Name, fr.Offset, fr.SP)
				return true
			})

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
func TracePanic(v any) {
	print("panic: ")
	printany(v)
	println("\n")
}

/*
func stringTracef(fp c.FilePtr, format *c.Char, s String) {
	cs := c.Alloca(uintptr(s.len) + 1)
	c.Fprintf(fp, format, CStrCopy(cs, s))
}
*/

// -----------------------------------------------------------------------------

// New allocates memory and initializes it to zero.
func New(t *Type) unsafe.Pointer {
	return AllocZ(t.Size_)
}

// NewArray allocates memory for an array and initializes it to zero.
func NewArray(t *Type, n int) unsafe.Pointer {
	return AllocZ(uintptr(n) * t.Size_)
}

// -----------------------------------------------------------------------------

// TODO(xsw): check this
// must match declarations in runtime/map.go.
const MaxZero = 1024

var ZeroVal [MaxZero]byte

func init() {
	signal.Signal(c.Int(syscall.SIGSEGV), func(v c.Int) {
		switch syscall.Signal(v) {
		case syscall.SIGSEGV:
			panic(errorString("invalid memory address or nil pointer dereference"))
		default:
			var buf [20]byte
			panic(errorString("unexpected signal value: " + string(itoa(buf[:], uint64(v)))))
		}
	})
}

func WrapFunc(fn interface{}, wrap ffi.WrapFuncType) unsafe.Pointer {
	return ffi.WrapFunc(fn, wrap)
}

// -----------------------------------------------------------------------------
