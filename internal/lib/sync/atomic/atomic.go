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

package atomic

import (
	"unsafe"
)

const (
	LLGoPackage = true
)

type valtype interface {
	~int | ~uint | ~uintptr | ~int32 | ~uint32 | ~int64 | ~uint64 | ~unsafe.Pointer
}

//go:linkname SwapInt32 llgo.atomicXchg
func SwapInt32(addr *int32, new int32) (old int32)

//go:linkname SwapInt64 llgo.atomicXchg
func SwapInt64(addr *int64, new int64) (old int64)

//go:linkname SwapUint32 llgo.atomicXchg
func SwapUint32(addr *uint32, new uint32) (old uint32)

//go:linkname SwapUint64 llgo.atomicXchg
func SwapUint64(addr *uint64, new uint64) (old uint64)

//go:linkname SwapUintptr llgo.atomicXchg
func SwapUintptr(addr *uintptr, new uintptr) (old uintptr)

//go:linkname SwapPointer llgo.atomicXchg
func SwapPointer(addr *unsafe.Pointer, new unsafe.Pointer) (old unsafe.Pointer)

// llgo:link atomicCmpXchg llgo.atomicCmpXchg
func atomicCmpXchg[T valtype](ptr *T, old, new T) (T, bool) { return old, false }

func CompareAndSwapInt32(addr *int32, old, new int32) (swapped bool) {
	_, swapped = atomicCmpXchg(addr, old, new)
	return
}

func CompareAndSwapInt64(addr *int64, old, new int64) (swapped bool) {
	_, swapped = atomicCmpXchg(addr, old, new)
	return
}

func CompareAndSwapUint32(addr *uint32, old, new uint32) (swapped bool) {
	_, swapped = atomicCmpXchg(addr, old, new)
	return
}

func CompareAndSwapUint64(addr *uint64, old, new uint64) (swapped bool) {
	_, swapped = atomicCmpXchg(addr, old, new)
	return
}

func CompareAndSwapUintptr(addr *uintptr, old, new uintptr) (swapped bool) {
	_, swapped = atomicCmpXchg(addr, old, new)
	return
}

func CompareAndSwapPointer(addr *unsafe.Pointer, old, new unsafe.Pointer) (swapped bool) {
	_, swapped = atomicCmpXchg(addr, old, new)
	return
}

// llgo:link atomicAdd llgo.atomicAdd
func atomicAdd[T valtype](ptr *T, v T) T { return v }

func AddInt32(addr *int32, delta int32) (new int32) {
	return atomicAdd(addr, delta) + delta
}

func AddUint32(addr *uint32, delta uint32) (new uint32) {
	return atomicAdd(addr, delta) + delta
}

func AddInt64(addr *int64, delta int64) (new int64) {
	return atomicAdd(addr, delta) + delta
}

func AddUint64(addr *uint64, delta uint64) (new uint64) {
	return atomicAdd(addr, delta) + delta
}

func AddUintptr(addr *uintptr, delta uintptr) (new uintptr) {
	return atomicAdd(addr, delta) + delta
}

//go:linkname LoadInt32 llgo.atomicLoad
func LoadInt32(addr *int32) (val int32)

//go:linkname LoadInt64 llgo.atomicLoad
func LoadInt64(addr *int64) (val int64)

//go:linkname LoadUint32 llgo.atomicLoad
func LoadUint32(addr *uint32) (val uint32)

//go:linkname LoadUint64 llgo.atomicLoad
func LoadUint64(addr *uint64) (val uint64)

//go:linkname LoadUintptr llgo.atomicLoad
func LoadUintptr(addr *uintptr) (val uintptr)

//go:linkname LoadPointer llgo.atomicLoad
func LoadPointer(addr *unsafe.Pointer) (val unsafe.Pointer)

//go:linkname StoreInt32 llgo.atomicStore
func StoreInt32(addr *int32, val int32)

//go:linkname StoreInt64 llgo.atomicStore
func StoreInt64(addr *int64, val int64)

//go:linkname StoreUint32 llgo.atomicStore
func StoreUint32(addr *uint32, val uint32)

//go:linkname StoreUint64 llgo.atomicStore
func StoreUint64(addr *uint64, val uint64)

//go:linkname StoreUintptr llgo.atomicStore
func StoreUintptr(addr *uintptr, val uintptr)

//go:linkname StorePointer llgo.atomicStore
func StorePointer(addr *unsafe.Pointer, val unsafe.Pointer)
