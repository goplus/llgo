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
	"github.com/goplus/llgo/internal/runtime/c"
)

type (
	Eface = eface
	Iface = iface
	Itab  = itab
)

type Kind = abi.Kind
type Type = abi.Type

type FuncType = abi.FuncType
type InterfaceType = abi.InterfaceType

// -----------------------------------------------------------------------------

// Func returns a function type.
func Func(in, out []*Type, variadic bool) *FuncType {
	const (
		funcTypeHdrSize = unsafe.Sizeof(abi.FuncType{})
		pointerSize     = unsafe.Sizeof(uintptr(0))
	)

	n := len(in) + len(out)
	ptr := AllocU(funcTypeHdrSize + uintptr(n)*pointerSize)
	c.Memset(ptr, 0, funcTypeHdrSize)

	ret := (*abi.FuncType)(ptr)
	ret.Size_ = pointerSize
	ret.Hash = uint32(abi.Func) // TODO(xsw): hash
	ret.Kind_ = uint8(abi.Func)
	ret.InCount = uint16(len(in))
	ret.OutCount = uint16(len(out))
	if variadic {
		ret.OutCount |= 1 << 15
	}

	data := (**Type)(c.Advance(ptr, int(funcTypeHdrSize)))
	params := unsafe.Slice(data, n)
	copy(params, in)
	copy(params[len(in):], out)
	return ret
}

// Imethod returns an interface method.
func Imethod(name string, typ *FuncType, exported bool) abi.Imethod {
	n := abi.NewName(name, "", exported, false)
	return abi.Imethod{
		Name_: n,
		Typ_:  typ,
	}
}

// Method returns a method.
func Method(name string, typ *FuncType, fn abi.Text, exported bool) abi.Method {
	n := abi.NewName(name, "", exported, false)
	return abi.Method{
		Name_: n,
		Mtyp_: typ,
		Ifn_:  fn,
		Tfn_:  fn,
	}
}

// -----------------------------------------------------------------------------

// Named returns a named type.
func Named(name string, typ *Type) *Type {
	ret := *typ // TODO(xsw): named type
	return &ret
}

// Interface returns an interface type.
func Interface(pkgPath string) *Type {
	// TODO(xsw): pkgPath
	// npkg := abi.NewName(pkgPath, "", false, false)
	ret := &abi.InterfaceType{
		Type: Type{
			Size_: unsafe.Sizeof(eface{}),
			Hash:  uint32(abi.Interface), // TODO(xsw): hash
			Kind_: uint8(abi.Interface),
		},
		//PkgPath: npkg,
		Methods: nil,
	}
	return &ret.Type
}

// NewItab returns a new itab.
func NewItab(inter *InterfaceType, typ *Type) *Itab {
	return &itab{
		inter: inter,
		_type: typ,
		hash:  typ.Hash,
		//fun: nil, TODO(xsw)
	}
}

// -----------------------------------------------------------------------------

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
	// TODO(xsw): pkgPath
	// npkg := abi.NewName(pkgPath, "", false, false)
	ret := &abi.StructType{
		Type: Type{
			Size_: size,
			Hash:  uint32(abi.Struct), // TODO(xsw): hash
			Kind_: uint8(abi.Struct),
		},
		// PkgPath: npkg,
		Fields: fields,
	}
	return &ret.Type
}

// Pointer returns a pointer type.
func Pointer(elem *Type) *Type {
	ret := &abi.PtrType{
		Type: Type{
			Size_: unsafe.Sizeof(uintptr(0)),
			Hash:  uint32(abi.Pointer), // TODO(xsw): hash
			Kind_: uint8(abi.Pointer),
		},
		Elem: elem,
	}
	return &ret.Type
}

// -----------------------------------------------------------------------------
