/*
 * Copyright (c) 2022 The GoPlus Authors (goplus.org). All rights reserved.
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

package types

import (
	"go/token"
	"go/types"
	"unsafe"

	"github.com/goplus/gogen"
)

// -----------------------------------------------------------------------------

var (
	Void          = types.Typ[types.UntypedNil]
	UnsafePointer = types.Typ[types.UnsafePointer]

	Int     = types.Typ[types.Int32]
	Uint    = types.Typ[types.Uint32]
	Long    = types.Typ[uintptr(types.Int32)+unsafe.Sizeof(0)>>3]  // int32/int64
	Ulong   = types.Typ[uintptr(types.Uint32)+unsafe.Sizeof(0)>>3] // uint32/uint64
	NotImpl = UnsafePointer

	LongDouble = types.Typ[types.Float64]
)

func NotVoid(t types.Type) bool {
	return t != Void
}

func MangledName(tag, name string) string {
	return tag + "_" + name // TODO: use sth to replace _
}

// -----------------------------------------------------------------------------

var (
	ValistTag types.Type
	Valist    types.Type = types.NewSlice(gogen.TyEmptyInterface)
)

func init() {
	vaTag := types.NewTypeName(token.NoPos, types.Unsafe, MangledName("struct", "__va_list_tag"), nil)
	ValistTag = types.NewNamed(vaTag, types.NewStruct(nil, nil), nil)
	types.Universe.Insert(vaTag)
}

// -----------------------------------------------------------------------------

func NewFunc(params, results *types.Tuple, variadic bool) *types.Signature {
	panic("todo")
}

func NewPointer(typ types.Type) types.Type {
	panic("todo")
}

/*
func NewPointer(typ types.Type) types.Type {
	switch t := typ.(type) {
	case *types.Basic:
		if t == Void {
			return types.Typ[types.UnsafePointer]
		}
	case *types.Signature:
		if gogen.IsCSignature(t) {
			return types.NewSignatureType(nil, nil, nil, t.Params(), t.Results(), t.Variadic())
		}
	case *types.Named:
		if typ == ValistTag {
			return Valist
		}
	}
	return types.NewPointer(typ)
}

func IsFunc(typ types.Type) bool {
	sig, ok := typ.(*types.Signature)
	if ok {
		ok = gogen.IsCSignature(sig)
	}
	return ok
}

func Identical(typ1, typ2 types.Type) bool {
	return types.Identical(typ1, typ2)
}
*/

// -----------------------------------------------------------------------------
