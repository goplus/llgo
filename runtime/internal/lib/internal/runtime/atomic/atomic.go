// Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package atomic

/*
#include "atomic.h"
*/
import "C"

import (
	"sync/atomic"
	"unsafe"
)

type Bool = atomic.Bool
type Uintptr = atomic.Uintptr
type Uint32 = atomic.Uint32
type Int32 = atomic.Int32
type Uint64 = atomic.Uint64
type Int64 = atomic.Int64
type Pointer[T any] struct {
	atomic.Pointer[T]
}

type noCopy struct{}

// Lock is a no-op used by -copylocks checker from `go vet`.
func (*noCopy) Lock()   {}
func (*noCopy) Unlock() {}

type Uint8 struct {
	noCopy noCopy
	value  uint8
}

//go:linkname Load C.atomic_Load
func Load(addr *uint32) uint32

//go:linkname Loadp C.atomic_Loadp
func Loadp(addr unsafe.Pointer) unsafe.Pointer

//go:linkname Load64 C.atomic_Load64
func Load64(addr *uint64) uint64

//go:linkname Loaduintptr C.atomic_Loaduintptr
func Loaduintptr(addr *uintptr) uintptr

//go:linkname LoadAcq C.atomic_LoadAcq
func LoadAcq(addr *uint32) uint32

//go:linkname LoadAcq64 C.atomic_LoadAcq64
func LoadAcq64(addr *uint64) uint64

func LoadAcquintptr(addr *C.uintptr_t) C.uintptr_t {
	return C.atomic_LoadAcquintptr(addr)
}

//go:linkname Load8 C.atomic_Load8
func Load8(addr *uint8) uint8

//go:linkname Xadd C.atomic_Xadd
func Xadd(val *uint32, delta int32) uint32

//go:linkname Xadd64 C.atomic_Xadd64
func Xadd64(val *uint64, delta int64) uint64

//go:linkname Xadduintptr C.atomic_Xadduintptr
func Xadduintptr(val *uintptr, delta uintptr) uintptr

//go:linkname Xchg C.atomic_Xchg
func Xchg(addr *uint32, new uint32) uint32

//go:linkname Xchg64 C.atomic_Xchg64
func Xchg64(addr *uint64, new uint64) uint64

//go:linkname Xchguintptr C.atomic_Xchguintptr
func Xchguintptr(addr *uintptr, new uintptr) uintptr

//go:linkname And8 C.atomic_And8
func And8(val *uint8, mask uint8)

//go:linkname Or8 C.atomic_Or8
func Or8(val *uint8, mask uint8)

//go:linkname And C.atomic_And
func And(val *uint32, mask uint32)

//go:linkname Or C.atomic_Or
func Or(val *uint32, mask uint32)

//go:linkname And32 C.atomic_And32
func And32(val *uint32, mask uint32) uint32

//go:linkname Or32 C.atomic_Or32
func Or32(val *uint32, mask uint32) uint32

//go:linkname And64 C.atomic_And64
func And64(val *uint64, mask uint64) uint64

//go:linkname Or64 C.atomic_Or64
func Or64(val *uint64, mask uint64) uint64

//go:linkname Anduintptr C.atomic_Anduintptr
func Anduintptr(val *uintptr, mask uintptr) uintptr

//go:linkname Oruintptr C.atomic_Oruintptr
func Oruintptr(val *uintptr, mask uintptr) uintptr

//go:linkname Cas64 C.atomic_Cas64
func Cas64(addr *uint64, old, new uint64) bool

//go:linkname CasRel C.atomic_CasRel
func CasRel(addr *uint32, old, new uint32) bool

//go:linkname Store C.atomic_Store
func Store(addr *uint32, val uint32)

//go:linkname Store8 C.atomic_Store8
func Store8(addr *uint8, val uint8)

//go:linkname Store64 C.atomic_Store64
func Store64(addr *uint64, val uint64)

//go:linkname StoreRel C.atomic_StoreRel
func StoreRel(addr *uint32, val uint32)

//go:linkname StoreRel64 C.atomic_StoreRel64
func StoreRel64(addr *uint64, val uint64)

func StoreReluintptr(addr *C.uintptr_t, val C.uintptr_t) {
	C.atomic_StoreReluintptr(addr, val)
}

//go:linkname StorepNoWB C.atomic_StorepNoWB
func StorepNoWB(addr unsafe.Pointer, val unsafe.Pointer)
