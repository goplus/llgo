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
	"fmt"
	"go/token"
	"go/types"
	"unsafe"
)

// -----------------------------------------------------------------------------

type goTypes struct {
	typs  map[unsafe.Pointer]unsafe.Pointer
	typbg map[string]Background
}

func newGoTypes() goTypes {
	typs := make(map[unsafe.Pointer]unsafe.Pointer)
	typbk := make(map[string]Background)
	return goTypes{typs, typbk}
}

type Background int

const (
	inUnknown Background = iota
	InGo
	InC
	InPython
)

// Type convert a Go/C type into raw type.
// C type = raw type
// Go type: convert to raw type (because of closure)
func (p Program) Type(typ types.Type, bg Background) Type {
	if bg == InGo {
		typ, _ = p.gocvt.cvtType(typ)
	}
	return p.rawType(typ)
}

// FuncDecl converts a Go/C function declaration into raw type.
func (p Program) FuncDecl(sig *types.Signature, bg Background) Type {
	recv := sig.Recv()
	if bg == InGo {
		sig = p.gocvt.cvtFunc(sig, recv)
	} else if recv != nil { // even in C, we need to add ctx for method
		sig = FuncAddCtx(recv, sig)
	}
	return &aType{p.toLLVMFunc(sig), rawType{sig}, vkFuncDecl}
}

// Closure creates a closture type for a function.
func (p Program) Closure(fn Type) Type {
	sig := fn.raw.Type.(*types.Signature)
	closure := p.gocvt.cvtClosure(sig)
	return p.rawType(closure)
}

func (p goTypes) cvtType(typ types.Type) (raw types.Type, cvt bool) {
	switch t := typ.(type) {
	case *types.Basic:
	case *types.Pointer:
		if elem, cvt := p.cvtType(t.Elem()); cvt {
			return types.NewPointer(elem), true
		}
	case *types.Interface:
		return p.cvtInterface(t)
	case *types.Slice:
		if elem, cvt := p.cvtType(t.Elem()); cvt {
			return types.NewSlice(elem), true
		}
	case *types.Map:
		key, cvt1 := p.cvtType(t.Key())
		elem, cvt2 := p.cvtType(t.Elem())
		if cvt1 || cvt2 {
			return types.NewMap(key, elem), true
		}
	case *types.Struct:
		return p.cvtStruct(t)
	case *types.Named:
		if p.typbg[t.String()] == InC {
			break
		}
		return p.cvtNamed(t)
	case *types.Signature:
		return p.cvtClosure(t), true
	case *types.Array:
		if elem, cvt := p.cvtType(t.Elem()); cvt {
			return types.NewArray(elem, t.Len()), true
		}
	case *types.Chan:
		if elem, cvt := p.cvtType(t.Elem()); cvt {
			return types.NewChan(t.Dir(), elem), true
		}
	default:
		panic(fmt.Sprintf("cvtType: unexpected type - %T", typ))
	}
	return typ, false
}

func (p goTypes) cvtNamed(t *types.Named) (raw *types.Named, cvt bool) {
	if v, ok := p.typs[unsafe.Pointer(t)]; ok {
		raw = (*types.Named)(v)
		cvt = t != raw
		return
	}
	n := t.NumMethods()
	methods := make([]*types.Func, n)
	for i := 0; i < n; i++ {
		m := t.Method(i) // don't need to convert method signature
		methods[i] = m
	}
	named := types.NewNamed(t.Obj(), types.Typ[types.Int], methods)
	if tp := t.TypeParams(); tp != nil {
		list := make([]*types.TypeParam, tp.Len())
		for i := 0; i < tp.Len(); i++ {
			param := tp.At(i)
			list[i] = types.NewTypeParam(param.Obj(), param.Constraint())
		}
		named.SetTypeParams(list)
	}
	p.typs[unsafe.Pointer(t)] = unsafe.Pointer(named)
	if tund, cvt := p.cvtType(t.Underlying()); cvt {
		named.SetUnderlying(tund)
		if tp := t.TypeArgs(); tp != nil {
			targs := make([]types.Type, tp.Len())
			for i := 0; i < tp.Len(); i++ {
				targs[i] = tp.At(i)
			}
			typ, err := types.Instantiate(nil, named, targs, true)
			if err != nil {
				panic(fmt.Errorf("cvtNamed error: %v", err))
			}
			named = typ.(*types.Named)
			p.typs[unsafe.Pointer(t)] = unsafe.Pointer(named)
		}
		return named, true
	}
	p.typs[unsafe.Pointer(t)] = unsafe.Pointer(t)
	return t, false
}

func (p goTypes) cvtClosure(sig *types.Signature) *types.Struct {
	ctx := types.NewParam(token.NoPos, nil, closureCtx, types.Typ[types.UnsafePointer])
	raw := p.cvtFunc(sig, ctx)
	flds := []*types.Var{
		types.NewField(token.NoPos, nil, "f", raw, false),
		types.NewField(token.NoPos, nil, "data", types.Typ[types.UnsafePointer], false),
	}
	return types.NewStruct(flds, nil)
}

func (p goTypes) cvtFunc(sig *types.Signature, recv *types.Var) (raw *types.Signature) {
	if recv != nil {
		sig = FuncAddCtx(recv, sig)
	}
	params, cvt1 := p.cvtTuple(sig.Params())
	results, cvt2 := p.cvtTuple(sig.Results())
	if cvt1 || cvt2 || sig.Variadic() {
		// variadic always is false in raw type for Go function
		return types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return sig
}

func (p goTypes) cvtTuple(t *types.Tuple) (*types.Tuple, bool) {
	n := t.Len()
	vars := make([]*types.Var, n)
	needcvt := false
	for i := 0; i < n; i++ {
		v := t.At(i)
		if t, cvt := p.cvtType(v.Type()); cvt {
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

func (p goTypes) cvtExplicitMethods(typ *types.Interface) ([]*types.Func, bool) {
	n := typ.NumExplicitMethods()
	methods := make([]*types.Func, n)
	needcvt := false
	for i := 0; i < n; i++ {
		m := typ.ExplicitMethod(i)
		sig := m.Type().(*types.Signature)
		if raw := p.cvtFunc(sig, nil); sig != raw {
			m = types.NewFunc(m.Pos(), m.Pkg(), m.Name(), raw)
			needcvt = true
		}
		methods[i] = m
	}
	return methods, needcvt
}

func (p goTypes) cvtEmbeddedTypes(typ *types.Interface) ([]types.Type, bool) {
	n := typ.NumEmbeddeds()
	embeddeds := make([]types.Type, n)
	needcvt := false
	for i := 0; i < n; i++ {
		t := typ.EmbeddedType(i)
		if raw, cvt := p.cvtType(t); cvt {
			t = raw
			needcvt = true
		}
		embeddeds[i] = t
	}
	return embeddeds, needcvt
}

func (p goTypes) cvtInterface(typ *types.Interface) (raw *types.Interface, cvt bool) {
	if v, ok := p.typs[unsafe.Pointer(typ)]; ok {
		raw = (*types.Interface)(v)
		cvt = typ != raw
		return
	}
	defer func() {
		p.typs[unsafe.Pointer(typ)] = unsafe.Pointer(raw)
	}()
	methods, cvt1 := p.cvtExplicitMethods(typ)
	embeddeds, cvt2 := p.cvtEmbeddedTypes(typ)
	if cvt1 || cvt2 {
		return types.NewInterfaceType(methods, embeddeds), true
	}
	return typ, false
}

func (p goTypes) cvtStruct(typ *types.Struct) (raw *types.Struct, cvt bool) {
	if v, ok := p.typs[unsafe.Pointer(typ)]; ok {
		raw = (*types.Struct)(v)
		cvt = typ != raw
		return
	}
	defer func() {
		p.typs[unsafe.Pointer(typ)] = unsafe.Pointer(raw)
	}()
	n := typ.NumFields()
	flds := make([]*types.Var, n)
	needcvt := false
	for i := 0; i < n; i++ {
		f := typ.Field(i)
		if t, cvt := p.cvtType(f.Type()); cvt {
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

// FuncAddCtx adds a ctx to a function signature.
func FuncAddCtx(ctx *types.Var, sig *types.Signature) *types.Signature {
	tParams := sig.Params()
	nParams := tParams.Len()
	params := make([]*types.Var, nParams+1)
	params[0] = ctx
	for i := 0; i < nParams; i++ {
		params[i+1] = tParams.At(i)
	}
	return types.NewSignatureType(
		nil, nil, nil, types.NewTuple(params...), sig.Results(), sig.Variadic())
}

// -----------------------------------------------------------------------------
