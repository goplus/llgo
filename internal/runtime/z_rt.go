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
	"github.com/goplus/llgo/c/bitcast"
	"github.com/goplus/llgo/c/pthread"
	"github.com/goplus/llgo/internal/abi"
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
			TracePanic(*(*any)(ptr))
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

func unpackEface(i any) *eface {
	return (*eface)(unsafe.Pointer(&i))
}

// TracePanic prints panic message.
func TracePanic(v any) {
	print("panic: ")
	switch e := v.(type) {
	case nil:
		println("nil")
		return
	case (interface{ Error() string }):
		println(e.Error())
		return
	case (interface{ String() string }):
		println(e.String())
		return
	}
	e := unpackEface(v)
	switch e.Kind() {
	case abi.Int, abi.Int8, abi.Int16, abi.Int32, abi.Int64:
		if isDirectIface(e._type) {
			println(int64(uintptr(e.data)))
		} else {
			println(*(*int64)(e.data))
		}
	case abi.Uint, abi.Uint8, abi.Uint16, abi.Uint32, abi.Uint64, abi.Uintptr:
		if isDirectIface(e._type) {
			println(uint64(uintptr(e.data)))
		} else {
			println(*(*uint64)(e.data))
		}
	case abi.Float32:
		if isDirectIface(e._type) {
			println(bitcast.ToFloat32((uintptr(e.data))))
		} else {
			println(*(*float32)(e.data))
		}
	case abi.Float64:
		if isDirectIface(e._type) {
			println(bitcast.ToFloat64(uintptr(e.data)))
		} else {
			println(*(*float64)(e.data))
		}
	case abi.Complex64:
		println(*(*complex64)(e.data))
	case abi.Complex128:
		println(*(*complex128)(e.data))
	case abi.String:
		println(*(*string)(e.data))
	default:
		// TODO kind to e._type.Str_
		print("(", e.Kind(), ") ")
		println(e.data)
	}
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
