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

	"github.com/goplus/llgo/internal/abi"
)

type Kind = abi.Kind
type Type = abi.Type

// -----------------------------------------------------------------------------
var (
	tyBasic [abi.UnsafePointer + 1]*Type
)

func Basic(kind Kind) *Type {
	if tyBasic[kind] == nil {
		name, size, align := basicTypeInfo(kind)
		tyBasic[kind] = &Type{
			Size_:       size,
			Hash:        uint32(kind), // TODO(xsw): hash
			Align_:      uint8(align),
			FieldAlign_: uint8(align),
			Kind_:       uint8(kind),
			Str_:        name,
		}
	}
	return tyBasic[kind]
}

func basicTypeInfo(kind abi.Kind) (string, uintptr, uintptr) {
	switch kind {
	case abi.Bool:
		return "bool", unsafe.Sizeof(false), unsafe.Alignof(false)
	case abi.Int:
		return "int", unsafe.Sizeof(0), unsafe.Alignof(0)
	case abi.Int8:
		return "int8", 1, 1
	case abi.Int16:
		return "int16", 2, 2
	case abi.Int32:
		return "int32", 4, 4
	case abi.Int64:
		return "int64", 8, 8
	case abi.Uint:
		return "uint", unsafe.Sizeof(uint(0)), unsafe.Alignof(uint(0))
	case abi.Uint8:
		return "uint8", 1, 1
	case abi.Uint16:
		return "uint16", 2, 2
	case abi.Uint32:
		return "uint32", 4, 4
	case abi.Uint64:
		return "uint64", 8, 8
	case abi.Uintptr:
		return "uintptr", unsafe.Sizeof(uintptr(0)), unsafe.Alignof(uintptr(0))
	case abi.Float32:
		return "float32", 4, 4
	case abi.Float64:
		return "float64", 8, 8
	case abi.Complex64:
		return "complex64", 8, 4
	case abi.Complex128:
		return "complex128", 16, 8
	case abi.String:
		return "string", unsafe.Sizeof(String{}), unsafe.Alignof("")
	case abi.UnsafePointer:
		return "unsafe.Pointer", unsafe.Sizeof(unsafe.Pointer(nil)), unsafe.Alignof(unsafe.Pointer(nil))
	}
	panic("unreachable")
}

// -----------------------------------------------------------------------------

// StructField returns a struct field.
func StructField(name string, typ *Type, off uintptr, tag string, embedded bool) abi.StructField {
	return abi.StructField{
		Name_:     name,
		Typ:       typ,
		Offset:    off,
		Tag_:      tag,
		Embedded_: embedded,
	}
}

// Struct returns a struct type.
func Struct(pkgPath string, size uintptr, fields ...abi.StructField) *Type {
	ret := &abi.StructType{
		Type: Type{
			Size_: size,
			Hash:  uint32(abi.Struct), // TODO(xsw): hash
			Kind_: uint8(abi.Struct),
			Str_:  "struct {...}",
		},
		PkgPath_: pkgPath,
		Fields:   fields,
	}
	var typalign uint8
	for _, f := range fields {
		ft := f.Typ
		if ft.Align_ > typalign {
			typalign = ft.Align_
		}
	}
	ret.Align_ = typalign
	ret.FieldAlign_ = typalign
	return &ret.Type
}

// -----------------------------------------------------------------------------

// PointerTo returns the pointer type with element elem.
func PointerTo(elem *Type) *Type {
	ret := elem.PtrToThis_
	if ret == nil {
		ret = newPointer(elem)
		elem.PtrToThis_ = ret
	}
	return ret
}

const pointerAlign = uint8(unsafe.Alignof(uintptr(0)))

func newPointer(elem *Type) *Type {
	ptr := &abi.PtrType{
		Type: Type{
			Size_:       unsafe.Sizeof(uintptr(0)),
			Hash:        uint32(abi.Pointer), // TODO(xsw): hash
			Align_:      pointerAlign,
			FieldAlign_: pointerAlign,
			Kind_:       uint8(abi.Pointer),
		},
		Elem: elem,
	}
	if (elem.TFlag & abi.TFlagExtraStar) != 0 {
		ptr.Str_ = "**" + elem.Str_
	} else {
		ptr.TFlag = abi.TFlagExtraStar
		ptr.Str_ = elem.Str_
	}
	return &ptr.Type
}

// SliceOf returns the slice type with element elem.
func SliceOf(elem *Type) *Type {
	ret := &abi.SliceType{
		Type: Type{
			Size_:       unsafe.Sizeof([]int{}),
			Hash:        uint32(abi.Slice),
			Align_:      pointerAlign,
			FieldAlign_: pointerAlign,
			Kind_:       uint8(abi.Slice),
			Str_:        "[]" + elem.String(),
		},
		Elem: elem,
	}
	return &ret.Type
}

// ArrayOf returns the array type with element elem and length.
func ArrayOf(length uintptr, elem *Type) *Type {
	ret := &abi.ArrayType{
		Type: Type{
			Size_:       length * elem.Size_,
			Hash:        uint32(abi.Array),
			Align_:      elem.Align_,
			FieldAlign_: elem.FieldAlign_,
			Kind_:       uint8(abi.Array),
			Str_:        "[...]" + elem.String(), // TODO(xsw): itoa
		},
		Elem:  elem,
		Slice: SliceOf(elem),
		Len:   length,
	}
	return &ret.Type
}

func ChanOf(dir int, strChan string, elem *Type) *Type {
	ret := &abi.ChanType{
		Type: Type{
			Size_:       8,
			Hash:        uint32(abi.Chan),
			Align_:      pointerAlign,
			FieldAlign_: pointerAlign,
			Kind_:       uint8(abi.Chan),
			Str_:        strChan + " " + elem.String(),
		},
		Elem: elem,
		Dir:  abi.ChanDir(dir),
	}
	return &ret.Type
}

// -----------------------------------------------------------------------------
