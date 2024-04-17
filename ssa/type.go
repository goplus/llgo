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

	"github.com/goplus/llvm"
)

/*
// A Type is a Member of a Package representing a package-level named type.
type Type struct {
	impl llvm.Type
}
*/

func (p *TyProgram) llvmType(typ types.Type) llvm.Type {
	if v := p.typs.At(typ); v != nil {
		return v.(llvm.Type)
	}
	ret := p.toLLVMType(typ)
	p.typs.Set(typ, ret)
	return ret
}

func (p *TyProgram) llvmSignature(sig *types.Signature) llvm.Type {
	if v := p.typs.At(sig); v != nil {
		return v.(llvm.Type)
	}
	ret := p.toLLVMFunc(sig)
	p.typs.Set(sig, ret)
	return ret
}

func (p *TyProgram) tyVoidPtr() llvm.Type {
	if p.voidPtrTy.IsNil() {
		p.voidPtrTy = llvm.PointerType(p.tyVoid(), 0)
	}
	return p.voidPtrTy
}

func (p *TyProgram) tyVoid() llvm.Type {
	if p.voidType.IsNil() {
		p.voidType = p.ctx.VoidType()
	}
	return p.voidType
}

func (p *TyProgram) tyInt() llvm.Type {
	if p.intType.IsNil() {
		p.intType = llvmIntType(p.ctx, p.td.PointerSize())
	}
	return p.intType
}

func (p *TyProgram) tyInt8() llvm.Type {
	if p.int8Type.IsNil() {
		p.int8Type = p.ctx.Int8Type()
	}
	return p.int8Type
}

func (p *TyProgram) tyInt16() llvm.Type {
	if p.int16Type.IsNil() {
		p.int16Type = p.ctx.Int16Type()
	}
	return p.int16Type
}

func (p *TyProgram) tyInt32() llvm.Type {
	if p.int32Type.IsNil() {
		p.int32Type = p.ctx.Int32Type()
	}
	return p.int32Type
}

func (p *TyProgram) tyInt64() llvm.Type {
	if p.int64Type.IsNil() {
		p.int64Type = p.ctx.Int64Type()
	}
	return p.int64Type
}

func (p *TyProgram) toLLVMType(typ types.Type) llvm.Type {
	switch t := typ.(type) {
	case *types.Basic:
		switch t.Kind() {
		case types.Int, types.Uint, types.Uintptr:
			return p.tyInt()
		case types.Bool, types.Uint8, types.Int8:
			return p.tyInt8()
		case types.Int16, types.Uint16:
			return p.tyInt16()
		case types.Int32, types.Uint32:
			return p.tyInt32()
		case types.Int64, types.Uint64:
			return p.tyInt64()
		case types.Float32:
			return p.ctx.FloatType()
		case types.Float64:
			return p.ctx.DoubleType()
		case types.Complex64:
		case types.Complex128:
		case types.String:
		case types.UnsafePointer:
			return p.tyVoidPtr()
		}
	case *types.Pointer:
		elem := p.llvmType(t.Elem())
		return llvm.PointerType(elem, 0)
	case *types.Slice:
	case *types.Map:
	case *types.Struct:
		return p.toLLVMStruct(t)
	case *types.Named:
		return p.toLLVMNamed(t)
	case *types.Signature:
		return p.toLLVMFunc(t)
	case *types.Array:
		elem := p.llvmType(t.Elem())
		return llvm.ArrayType(elem, int(t.Len()))
	case *types.Chan:
	}
	panic("todo")
}

func llvmIntType(ctx llvm.Context, size int) llvm.Type {
	if size <= 4 {
		return ctx.Int32Type()
	}
	return ctx.Int64Type()
}

func (p *TyProgram) toLLVMNamedStruct(name string, typ *types.Struct) llvm.Type {
	t := p.ctx.StructCreateNamed(name)
	fields := p.toLLVMFields(typ)
	t.StructSetBody(fields, false)
	return t
}

func (p *TyProgram) toLLVMStruct(typ *types.Struct) llvm.Type {
	fields := p.toLLVMFields(typ)
	return p.ctx.StructType(fields, false)
}

func (p *TyProgram) toLLVMFields(typ *types.Struct) []llvm.Type {
	n := typ.NumFields()
	fields := make([]llvm.Type, n)
	for i := 0; i < n; i++ {
		fields[i] = p.llvmType(typ.Field(i).Type())
	}
	return fields
}

func (p *TyProgram) toLLVMTuple(t *types.Tuple) llvm.Type {
	return p.ctx.StructType(p.toLLVMTypes(t), false)
}

func (p *TyProgram) toLLVMTypes(t *types.Tuple) []llvm.Type {
	n := t.Len()
	ret := make([]llvm.Type, n)
	for i := 0; i < n; i++ {
		ret[i] = p.llvmType(t.At(i).Type())
	}
	return ret
}

func (p *TyProgram) toLLVMFunc(sig *types.Signature) llvm.Type {
	params := p.toLLVMTypes(sig.Params())
	results := sig.Results()
	var ret llvm.Type
	switch nret := results.Len(); nret {
	case 0:
		ret = p.tyVoid()
	case 1:
		ret = p.llvmType(results.At(0).Type())
	default:
		ret = p.toLLVMTuple(results)
	}
	return llvm.FunctionType(ret, params, sig.Variadic())
}

func (p *TyProgram) toLLVMNamed(typ *types.Named) llvm.Type {
	name := typ.Obj().Name()
	switch typ := typ.Underlying().(type) {
	case *types.Struct:
		return p.toLLVMNamedStruct(name, typ)
	}
	panic("todo")
}
