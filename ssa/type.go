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
	"go/types"

	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------

type valueKind = int

const (
	vkInvalid valueKind = iota
	vkSigned
	vkUnsigned
	vkFloat
	vkComplex
	vkString
	vkBool
	vkFunc
	vkTuple
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

func indexType(t types.Type) types.Type {
	switch t := t.(type) {
	case *types.Slice:
		return t.Elem()
	case *types.Pointer:
		switch t := t.Elem().(type) {
		case *types.Array:
			return t.Elem()
		}
	case *types.Array:
		return t.Elem()
	}
	panic("index: type doesn't support index - " + t.String())
}

// convert method to func
func methodToFunc(sig *types.Signature) *types.Signature {
	if recv := sig.Recv(); recv != nil {
		tParams := sig.Params()
		nParams := tParams.Len()
		params := make([]*types.Var, nParams+1)
		params[0] = recv
		for i := 0; i < nParams; i++ {
			params[i+1] = tParams.At(i)
		}
		return types.NewSignatureType(
			nil, nil, nil, types.NewTuple(params...), sig.Results(), sig.Variadic())
	}
	return sig
}

// -----------------------------------------------------------------------------

type aType struct {
	ll   llvm.Type
	t    types.Type
	kind valueKind
}

type Type = *aType

func (p Program) Pointer(typ Type) Type {
	return p.Type(types.NewPointer(typ.t))
}

func (p Program) Elem(typ Type) Type {
	elem := typ.t.(*types.Pointer).Elem()
	return p.Type(elem)
}

func (p Program) Index(typ Type) Type {
	return p.Type(indexType(typ.t))
}

func (p Program) Type(typ types.Type) Type {
	if v := p.typs.At(typ); v != nil {
		return v.(Type)
	}
	ret := p.toLLVMType(typ)
	p.typs.Set(typ, ret)
	return ret
}

func (p Program) llvmSignature(sig *types.Signature) Type {
	sig = methodToFunc(sig)
	if v := p.typs.At(sig); v != nil {
		return v.(Type)
	}
	ret := p.toLLVMFunc(sig)
	p.typs.Set(sig, ret)
	return ret
}

func (p Program) tyVoidPtr() llvm.Type {
	if p.voidPtrTy.IsNil() {
		p.voidPtrTy = llvm.PointerType(p.tyVoid(), 0)
	}
	return p.voidPtrTy
}

func (p Program) tyVoid() llvm.Type {
	if p.voidType.IsNil() {
		p.voidType = p.ctx.VoidType()
	}
	return p.voidType
}

func (p Program) tyInt1() llvm.Type {
	if p.int1Type.IsNil() {
		p.int1Type = p.ctx.Int1Type()
	}
	return p.int1Type
}

func (p Program) tyInt() llvm.Type {
	if p.intType.IsNil() {
		p.intType = llvmIntType(p.ctx, p.td.PointerSize())
	}
	return p.intType
}

func llvmIntType(ctx llvm.Context, size int) llvm.Type {
	if size <= 4 {
		return ctx.Int32Type()
	}
	return ctx.Int64Type()
}

func (p Program) tyInt8() llvm.Type {
	if p.int8Type.IsNil() {
		p.int8Type = p.ctx.Int8Type()
	}
	return p.int8Type
}

func (p Program) tyInt16() llvm.Type {
	if p.int16Type.IsNil() {
		p.int16Type = p.ctx.Int16Type()
	}
	return p.int16Type
}

func (p Program) tyInt32() llvm.Type {
	if p.int32Type.IsNil() {
		p.int32Type = p.ctx.Int32Type()
	}
	return p.int32Type
}

func (p Program) tyInt64() llvm.Type {
	if p.int64Type.IsNil() {
		p.int64Type = p.ctx.Int64Type()
	}
	return p.int64Type
}

func (p Program) toLLVMType(typ types.Type) Type {
	switch t := typ.(type) {
	case *types.Basic:
		switch t.Kind() {
		case types.Int:
			return &aType{p.tyInt(), typ, vkSigned}
		case types.Uint, types.Uintptr:
			return &aType{p.tyInt(), typ, vkUnsigned}
		case types.Bool:
			return &aType{p.tyInt1(), typ, vkBool}
		case types.Uint8:
			return &aType{p.tyInt8(), typ, vkUnsigned}
		case types.Int8:
			return &aType{p.tyInt8(), typ, vkSigned}
		case types.Int16:
			return &aType{p.tyInt16(), typ, vkSigned}
		case types.Uint16:
			return &aType{p.tyInt16(), typ, vkUnsigned}
		case types.Int32:
			return &aType{p.tyInt32(), typ, vkSigned}
		case types.Uint32:
			return &aType{p.tyInt32(), typ, vkUnsigned}
		case types.Int64:
			return &aType{p.tyInt64(), typ, vkSigned}
		case types.Uint64:
			return &aType{p.tyInt64(), typ, vkUnsigned}
		case types.Float32:
			return &aType{p.ctx.FloatType(), typ, vkFloat}
		case types.Float64:
			return &aType{p.ctx.DoubleType(), typ, vkFloat}
		case types.Complex64:
		case types.Complex128:
		case types.String:
		case types.UnsafePointer:
			return &aType{p.tyVoidPtr(), typ, vkInvalid}
		}
	case *types.Pointer:
		elem := p.Type(t.Elem())
		return &aType{llvm.PointerType(elem.ll, 0), typ, vkInvalid}
	case *types.Slice:
	case *types.Map:
	case *types.Struct:
		return p.toLLVMStruct(t)
	case *types.Named:
		return p.toLLVMNamed(t)
	case *types.Signature:
		return p.toLLVMFunc(t)
	case *types.Array:
		elem := p.Type(t.Elem())
		return &aType{llvm.ArrayType(elem.ll, int(t.Len())), typ, vkInvalid}
	case *types.Chan:
	}
	panic(fmt.Sprintf("toLLVMType: todo - %T\n", typ))
}

func (p Program) toLLVMNamedStruct(name string, typ *types.Struct) llvm.Type {
	t := p.ctx.StructCreateNamed(name)
	fields := p.toLLVMFields(typ)
	t.StructSetBody(fields, false)
	return t
}

func (p Program) toLLVMStruct(typ *types.Struct) Type {
	fields := p.toLLVMFields(typ)
	return &aType{p.ctx.StructType(fields, false), typ, vkInvalid}
}

func (p Program) toLLVMFields(typ *types.Struct) (fields []llvm.Type) {
	n := typ.NumFields()
	if n > 0 {
		fields = make([]llvm.Type, n)
		for i := 0; i < n; i++ {
			fields[i] = p.Type(typ.Field(i).Type()).ll
		}
	}
	return
}

func (p Program) toLLVMTuple(t *types.Tuple) llvm.Type {
	return p.ctx.StructType(p.toLLVMTypes(t, t.Len()), false)
}

func (p Program) toLLVMTypes(t *types.Tuple, n int) (ret []llvm.Type) {
	if n > 0 {
		ret = make([]llvm.Type, n)
		for i := 0; i < n; i++ {
			ret[i] = p.Type(t.At(i).Type()).ll
		}
	}
	return
}

func (p Program) toLLVMFunc(sig *types.Signature) Type {
	tParams := sig.Params()
	n := tParams.Len()
	hasVArg := HasVArg(tParams, n)
	if hasVArg {
		n--
	}
	params := p.toLLVMTypes(tParams, n)
	out := sig.Results()
	var ret llvm.Type
	switch nret := out.Len(); nret {
	case 0:
		ret = p.tyVoid()
	case 1:
		ret = p.Type(out.At(0).Type()).ll
	default:
		ret = p.toLLVMTuple(out)
	}
	ft := llvm.FunctionType(ret, params, hasVArg)
	return &aType{ft, sig, vkFunc}
}

func (p Program) retType(sig *types.Signature) Type {
	out := sig.Results()
	switch n := out.Len(); n {
	case 0:
		return p.Void()
	case 1:
		return p.Type(out.At(0).Type())
	default:
		return &aType{p.toLLVMTuple(out), out, vkTuple}
	}
}

func (p Program) toLLVMNamed(typ *types.Named) Type {
	switch t := typ.Underlying().(type) {
	case *types.Struct:
		name := typ.Obj().Name()
		return &aType{p.toLLVMNamedStruct(name, t), typ, vkInvalid}
	default:
		return p.Type(t)
	}
}

// -----------------------------------------------------------------------------
