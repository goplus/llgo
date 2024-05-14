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

// -----------------------------------------------------------------------------

type Kind = abi.Kind
type Type = abi.Type

func Basic(kind Kind) *Type {
	return basicTypes[kind]
}

var (
	basicTypes = [...]*Type{
		abi.Bool:       basicType(abi.Bool),
		abi.Int:        basicType(abi.Int),
		abi.Int8:       basicType(abi.Int8),
		abi.Int16:      basicType(abi.Int16),
		abi.Int32:      basicType(abi.Int32),
		abi.Int64:      basicType(abi.Int64),
		abi.Uint:       basicType(abi.Uint),
		abi.Uint8:      basicType(abi.Uint8),
		abi.Uint16:     basicType(abi.Uint16),
		abi.Uint32:     basicType(abi.Uint32),
		abi.Uint64:     basicType(abi.Uint64),
		abi.Uintptr:    basicType(abi.Uintptr),
		abi.Float32:    basicType(abi.Float32),
		abi.Float64:    basicType(abi.Float64),
		abi.Complex64:  basicType(abi.Complex64),
		abi.Complex128: basicType(abi.Complex128),
		abi.String:     basicType(abi.String),
	}
)

var (
	sizeBasicTypes = [...]uintptr{
		abi.Bool:       unsafe.Sizeof(false),
		abi.Int:        unsafe.Sizeof(0),
		abi.Int8:       1,
		abi.Int16:      2,
		abi.Int32:      4,
		abi.Int64:      8,
		abi.Uint:       unsafe.Sizeof(uint(0)),
		abi.Uint8:      1,
		abi.Uint16:     2,
		abi.Uint32:     4,
		abi.Uint64:     8,
		abi.Uintptr:    unsafe.Sizeof(uintptr(0)),
		abi.Float32:    4,
		abi.Float64:    8,
		abi.Complex64:  8,
		abi.Complex128: 16,
		abi.String:     unsafe.Sizeof(String{}),
	}
)

func basicType(kind abi.Kind) *Type {
	return &Type{
		Size_: sizeBasicTypes[kind],
		Hash:  uint32(kind), // TODO(xsw): hash
		Kind_: uint8(kind),
	}
}

// function for comparing objects of type kind
// (ptr to object A, ptr to object B) -> ==?
func EqualBasic(a unsafe.Pointer, b unsafe.Pointer) bool {
	return a == b
}

// -----------------------------------------------------------------------------

// StructField returns a struct field.
func StructField(name string, typ *Type, off uintptr, tag string, exported, embedded bool) abi.StructField {
	n := abi.NewName(name, tag, exported, embedded)
	return abi.StructField{
		Name:   n,
		Typ:    typ,
		Offset: off,
	}
}

// Struct returns a struct type.
func Struct(size uintptr, pkgPath string, fields ...abi.StructField) *Type {
	npkg := abi.NewName(pkgPath, "", false, false)
	ret := &abi.StructType{
		Type: Type{
			Size_: size,
			Hash:  uint32(abi.Struct), // TODO(xsw): hash
			Kind_: uint8(abi.Struct),
		},
		PkgPath: npkg,
		Fields:  fields,
	}
	return &ret.Type
}

// -----------------------------------------------------------------------------
