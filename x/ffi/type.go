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

package ffi

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/ffi"
)

type BasicKind int

const (
	Void BasicKind = iota // type is invalid

	// predeclared types
	Bool
	Int
	Int8
	Int16
	Int32
	Int64
	Uint
	Uint8
	Uint16
	Uint32
	Uint64
	Uintptr
	Float32
	Float64
	Complex64
	Complex128
	String
	UnsafePointer
	Interface
	Slice

	// aliases
	Byte = Uint8
	Rune = Int32
)

const (
	_64bit   = 1 << (^uintptr(0) >> 63) / 2
	_Int     = _64bit*ffi.Sint64 + (1-_64bit)*ffi.Sint32
	_Uint    = _64bit*ffi.Uint64 + (1-_64bit)*ffi.Uint32
	_sizei   = unsafe.Sizeof(0)
	_aligni  = uint16(unsafe.Alignof(0))
	_sizeci  = unsafe.Sizeof(c.Int(0))
	_alignci = uint16(unsafe.Alignof(c.Int(0)))
	_sizes   = unsafe.Sizeof("")
	_aligns  = uint16(unsafe.Alignof(""))
)

var (
	TypeVoid       = &Type{1, 1, ffi.Void, nil}
	TypeBool       = &Type{1, 1, ffi.Uint8, nil}
	TypeInt8       = &Type{1, 1, ffi.Sint8, nil}
	TypeInt16      = &Type{2, 2, ffi.Sint16, nil}
	TypeInt32      = &Type{4, 4, ffi.Sint32, nil}
	TypeInt64      = &Type{8, 8, ffi.Sint64, nil}
	TypeUint8      = &Type{1, 1, ffi.Uint8, nil}
	TypeUint16     = &Type{2, 2, ffi.Uint16, nil}
	TypeUint32     = &Type{4, 4, ffi.Uint32, nil}
	TypeUint64     = &Type{8, 8, ffi.Uint64, nil}
	TypeFloat32    = &Type{4, 4, ffi.Float, nil}
	TypeFloat64    = &Type{8, 8, ffi.Double, nil}
	TypeComplex64  = &Type{8, 4, ffi.Complex, &[]*Type{TypeFloat32, nil}[0]}
	TypeComplex128 = &Type{16, 8, ffi.Complex, &[]*Type{TypeFloat64, nil}[0]}
	TypeInt        = &Type{_sizei, _aligni, _Int, nil}
	TypeUint       = &Type{_sizei, _aligni, _Uint, nil}
	TypeUintptr    = &Type{_sizei, _aligni, _Uint, nil}
	TypePointer    = &Type{_sizei, _aligni, ffi.Pointer, nil}
	TypeString     = StructOf(TypePointer, TypeInt)
	TypeInterface  = StructOf(TypePointer, TypePointer)
	TypeSlice      = StructOf(TypePointer, TypeInt, TypeInt)
)

var Typ = []*Type{
	Void:          TypeVoid,
	Bool:          TypeBool,
	Int:           TypeInt,
	Int8:          TypeInt8,
	Int16:         TypeInt16,
	Int32:         TypeInt32,
	Int64:         TypeInt64,
	Uint:          TypeUint,
	Uint8:         TypeUint8,
	Uint16:        TypeUint16,
	Uint32:        TypeUint32,
	Uint64:        TypeUint64,
	Uintptr:       TypeUintptr,
	Float32:       TypeFloat32,
	Float64:       TypeFloat64,
	Complex64:     TypeComplex64,
	Complex128:    TypeComplex128,
	String:        TypeString,
	UnsafePointer: TypePointer,
	Interface:     TypeInterface,
	Slice:         TypeSlice,
}

func ArrayOf(elem *Type, N int) *Type {
	fs := make([]*Type, N+1)
	for i := 0; i < N; i++ {
		fs[i] = elem
	}
	return &Type{
		0,
		0,
		ffi.Struct,
		&fs[0],
	}
}

func StructOf(fields ...*Type) *Type {
	fs := make([]*Type, len(fields)+1)
	copy(fs, fields)
	return &Type{
		0,
		0,
		ffi.Struct,
		&fs[0],
	}
}
