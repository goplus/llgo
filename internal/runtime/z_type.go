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

func Basic(kind Kind) *Type {
	return &Type{
		Size_: basicTypeSize(kind),
		Hash:  uint32(kind), // TODO(xsw): hash
		Kind_: uint8(kind),
	}
}

func basicTypeSize(kind abi.Kind) uintptr {
	switch kind {
	case abi.Bool:
		return unsafe.Sizeof(false)
	case abi.Int:
		return unsafe.Sizeof(0)
	case abi.Int8:
		return 1
	case abi.Int16:
		return 2
	case abi.Int32:
		return 4
	case abi.Int64:
		return 8
	case abi.Uint:
		return unsafe.Sizeof(uint(0))
	case abi.Uint8:
		return 1
	case abi.Uint16:
		return 2
	case abi.Uint32:
		return 4
	case abi.Uint64:
		return 8
	case abi.Uintptr:
		return unsafe.Sizeof(uintptr(0))
	case abi.Float32:
		return 4
	case abi.Float64:
		return 8
	case abi.Complex64:
		return 8
	case abi.Complex128:
		return 16
	case abi.String:
		return unsafe.Sizeof(String{})
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
		},
		PkgPath_: pkgPath,
		Fields:   fields,
	}
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

func newPointer(elem *Type) *Type {
	ptr := &abi.PtrType{
		Type: Type{
			Size_: unsafe.Sizeof(uintptr(0)),
			Hash:  uint32(abi.Pointer), // TODO(xsw): hash
			Kind_: uint8(abi.Pointer),
		},
		Elem: elem,
	}
	return &ptr.Type
}

// SliceOf returns the slice type with element elem.
func SliceOf(elem *Type) *Type {
	ret := &abi.SliceType{
		Type: Type{
			Size_: unsafe.Sizeof([]int{}),
			Hash:  uint32(abi.Slice),
			Kind_: uint8(abi.Slice),
		},
		Elem: elem,
	}
	return &ret.Type
}

// ArrayOf returns the array type with element elem and length.
func ArrayOf(length uintptr, elem *Type) *Type {
	ret := &abi.ArrayType{
		Type: Type{
			Size_: length * elem.Size_,
			Hash:  uint32(abi.Array),
			Kind_: uint8(abi.Array),
		},
		Elem:  elem,
		Slice: SliceOf(elem),
		Len:   length,
	}
	return &ret.Type
}

// -----------------------------------------------------------------------------
