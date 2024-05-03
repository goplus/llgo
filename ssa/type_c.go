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

package ssa

import (
	"go/types"

	"github.com/goplus/llgo/internal/typeutil"
)

// -----------------------------------------------------------------------------

const (
	NameValist = "__llgo_va_list"
)

func VArg() *types.Var {
	return types.NewParam(0, nil, NameValist, types.Typ[types.Invalid])
}

func IsVArg(arg *types.Var) bool {
	return arg.Name() == NameValist
}

func HasVArg(t *types.Tuple, n int) bool {
	return n > 0 && IsVArg(t.At(n-1))
}

// -----------------------------------------------------------------------------

// CFuncPtr represents a C function pointer.
type CFuncPtr types.Signature

func (t *CFuncPtr) String() string         { return (*types.Signature)(t).String() }
func (t *CFuncPtr) Underlying() types.Type { return (*types.Signature)(t) }

func (t *CFuncPtr) Hash(h typeutil.Hasher) uint32 {
	return typeutil.HashSig(h, (*types.Signature)(t))*13 + 97
}

// -----------------------------------------------------------------------------

// CType convert a C type into Go.
func CType(typ types.Type) types.Type {
	t, _ := cvtCType(typ)
	return t
}

// CFuncDecl convert a C function decl into Go signature.
func CFuncDecl(sig *types.Signature) *types.Signature {
	hasVArg := sig.Variadic()
	params, cvt1 := cvtTuple(sig.Params(), hasVArg)
	results, cvt2 := cvtTuple(sig.Results(), false)
	if cvt1 || cvt2 {
		return types.NewSignatureType(nil, nil, nil, params, results, hasVArg)
	}
	return sig
}

func cvtCType(typ types.Type) (types.Type, bool) {
	switch t := typ.(type) {
	case *types.Basic:
	case *types.Pointer:
		if elem, cvt := cvtCType(t.Elem()); cvt {
			return types.NewPointer(elem), true
		}
	case *types.Struct:
		return cvtCStruct(t)
	case *types.Named:
		if _, cvt := cvtCType(t.Underlying()); cvt {
			panic("todo: named type")
		}
	case *types.Signature:
		t = CFuncDecl(t)
		return (*CFuncPtr)(t), true
	case *types.Array:
		if elem, cvt := cvtCType(t.Elem()); cvt {
			return types.NewArray(elem, t.Len()), true
		}
	default:
		panic("unreachable")
	}
	return typ, false
}

func cvtTuple(t *types.Tuple, hasVArg bool) (*types.Tuple, bool) {
	n := t.Len()
	vars := make([]*types.Var, n)
	needcvt := false
	if hasVArg {
		n--
		vars[n] = t.At(n)
	}
	for i := 0; i < n; i++ {
		v := t.At(i)
		if t, cvt := cvtCType(v.Type()); cvt {
			v = types.NewParam(v.Pos(), v.Pkg(), v.Name(), t)
			needcvt = true
		}
		vars[i] = v
	}
	if needcvt {
		return types.NewTuple(vars...), true
	}
	return t, false
}

func cvtCStruct(typ *types.Struct) (*types.Struct, bool) {
	n := typ.NumFields()
	flds := make([]*types.Var, n)
	needcvt := false
	for i := 0; i < n; i++ {
		f := typ.Field(i)
		if t, cvt := cvtCType(f.Type()); cvt {
			f = types.NewField(f.Pos(), f.Pkg(), f.Name(), t, f.Anonymous())
			needcvt = true
		}
		flds[i] = f
	}
	if needcvt {
		return types.NewStruct(flds, nil), true
	}
	return typ, false
}

// -----------------------------------------------------------------------------
