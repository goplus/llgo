// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package atomic

import "unsafe"

//go:linkname Cas C.atomic_Cas
func Cas(ptr *uint32, old, v uint32) bool

//go:linkname Casp1 C.atomic_Casp1
func Casp1(ptr *unsafe.Pointer, old, v unsafe.Pointer) bool

//go:linkname Casint32 C.atomic_Casint32
func Casint32(ptr *int32, old, v int32) bool

//go:linkname Casint64 C.atomic_Casint64
func Casint64(ptr *int64, old, v int64) bool

//go:linkname Casuintptr C.atomic_Casuintptr
func Casuintptr(ptr *uintptr, old, v uintptr) bool

//go:linkname Storeint32 C.atomic_Storeint32
func Storeint32(ptr *int32, v int32)

//go:linkname Storeint64 C.atomic_Storeint64
func Storeint64(ptr *int64, v int64)

//go:linkname Storeuintptr C.atomic_Storeuintptr
func Storeuintptr(ptr *uintptr, v uintptr)

//go:linkname Loaduint C.atomic_Loaduint
func Loaduint(ptr *uint) uint

// TODO(matloob): Should these functions have the go:noescape annotation?

//go:linkname Loadint32 C.atomic_Loadint32
func Loadint32(ptr *int32) int32

//go:linkname Loadint64 C.atomic_Loadint64
func Loadint64(ptr *int64) int64

//go:linkname Xaddint32 C.atomic_Xaddint32
func Xaddint32(ptr *int32, delta int32) int32

//go:linkname Xaddint64 C.atomic_Xaddint64
func Xaddint64(ptr *int64, delta int64) int64

//go:linkname Xchgint32 C.atomic_Xchgint32
func Xchgint32(ptr *int32, v int32) int32

//go:linkname Xchgint64 C.atomic_Xchgint64
func Xchgint64(ptr *int64, v int64) int64
