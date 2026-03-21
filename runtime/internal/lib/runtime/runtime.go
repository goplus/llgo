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
	"github.com/goplus/llgo/runtime/internal/clite/pthread"
	"github.com/goplus/llgo/runtime/internal/runtime"
)

// llgo:skipall
type _runtime struct{}

var defaultGOROOT string // set by cmd/link

func GOROOT() string {
	return defaultGOROOT
}

var buildVersion string

func Version() string {
	return buildVersion
}

func GOMAXPROCS(n int) int {
	return int(c_maxprocs())
}

func NumCPU() int {
	return int(c_maxprocs())
}

func Gosched() {
	// LLGo maps goroutines to native threads. A tiny sleep is the closest
	// portable approximation to Go's scheduler yield and prevents tight loops
	// from starving GC/helper threads.
	c.Usleep(1)
}

func Goexit() {
	runtime.Goexit()
}

func runMain(routine func(unsafe.Pointer) unsafe.Pointer, arg unsafe.Pointer) {
	runtime.RunMain(pthread.RoutineFunc(routine), c.Pointer(arg))
}

func Breakpoint() {
	c.Exit(2)
}

//go:noinline
func KeepAlive(x any) {
	// Force the interface value to stay materialized until this call site.
	// A zero-length libc call is enough to keep the argument live without
	// otherwise affecting program behavior.
	c.Memcmp(unsafe.Pointer(&x), unsafe.Pointer(&x), 0)
}

//go:noinline
func KeepAlivePointer(p unsafe.Pointer) {
	// Pointer-only variant used by the compiler to avoid materializing an
	// interface wrapper when the KeepAlive argument is already a pointer.
	c.Memcmp(p, p, 0)
}

//go:noinline
func HiddenPointerKey(p unsafe.Pointer) uintptr {
	key := runtime.EncodeHiddenPointerKey(p)
	p = nil
	ClobberPointerRegs()
	return key
}

//go:noinline
func AllocZHidden(size uintptr) uintptr {
	ptr := runtime.AllocZ(size)
	key := runtime.EncodeHiddenPointerKey(ptr)
	ptr = nil
	ClobberPointerRegs()
	return key
}

//go:linkname ClobberPointerRegs runtime.ClobberPointerRegs
func ClobberPointerRegs()

//go:noinline
func TouchConservativeSlot(p unsafe.Pointer, size uintptr) {
	if p == nil || size == 0 {
		return
	}
	c.Memcmp(p, p, c.SizeT(size))
	p = nil
	size = 0
}

//go:noinline
func ShadowCopyPointee(dst, src unsafe.Pointer, size uintptr) {
	if src == nil {
		return
	}
	c.Memmove(dst, src, size)
	c.Memset(src, 0, size)
}

//go:linkname c_load_hidden_pointee C.llgo_load_hidden_pointee
func c_load_hidden_pointee(dst unsafe.Pointer, key uintptr, size uintptr)

//go:linkname c_advance_hidden_pointer C.llgo_advance_hidden_pointer
func c_advance_hidden_pointer(key uintptr, offset uintptr) uintptr

//go:linkname c_store_hidden_pointee C.llgo_store_hidden_pointee
func c_store_hidden_pointee(key uintptr, src unsafe.Pointer, size uintptr)

//go:linkname c_store_hidden_pointer_root C.llgo_store_hidden_pointer_root
func c_store_hidden_pointer_root(dst unsafe.Pointer, key uintptr)

//go:linkname c_load_hidden_pointer_key C.llgo_load_hidden_pointer_key
func c_load_hidden_pointer_key(key uintptr) uintptr

//go:noinline
func LoadHiddenPointee(dst unsafe.Pointer, key uintptr, size uintptr) {
	runtime.AssertNilDeref(key == runtime.HiddenNilPointerKey())
	c_load_hidden_pointee(dst, key, size)
}

//go:noinline
func LoadHiddenUint8(key uintptr) uint8 {
	runtime.AssertNilDeref(key == runtime.HiddenNilPointerKey())
	ptr := (*uint8)(runtime.DecodeHiddenPointerKey(key))
	val := *ptr
	ptr = nil
	ClobberPointerRegs()
	return val
}

//go:noinline
func AdvanceHiddenPointer(key uintptr, offset uintptr) uintptr {
	runtime.AssertNilDeref(key == runtime.HiddenNilPointerKey())
	return c_advance_hidden_pointer(key, offset)
}

//go:noinline
func StoreHiddenPointee(key uintptr, src unsafe.Pointer, size uintptr) {
	runtime.AssertNilDeref(key == runtime.HiddenNilPointerKey())
	c_store_hidden_pointee(key, src, size)
}

//go:noinline
func StoreHiddenPointerRoot(dst unsafe.Pointer, key uintptr) {
	if key == runtime.HiddenNilPointerKey() {
		*(*unsafe.Pointer)(dst) = nil
		dst = nil
		key = 0
		ClobberPointerRegs()
		return
	}
	c_store_hidden_pointer_root(dst, key)
	dst = nil
	key = 0
	ClobberPointerRegs()
}

//go:noinline
func LoadHiddenPointerKey(key uintptr) uintptr {
	runtime.AssertNilDeref(key == runtime.HiddenNilPointerKey())
	out := c_load_hidden_pointer_key(key)
	key = 0
	ClobberPointerRegs()
	return out
}

//go:linkname c_write C.write
func c_write(fd c.Int, p unsafe.Pointer, n c.SizeT) c.SsizeT

func write(fd uintptr, p unsafe.Pointer, n int32) int32 {
	return int32(c_write(c.Int(fd), p, c.SizeT(n)))
}

const heapArenaBytes = 1024 * 1024
