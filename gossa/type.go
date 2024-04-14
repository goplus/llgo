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

package gossa

import (
	"go/types"

	"github.com/goplus/llvm"
)

// A Type is a Member of a Package representing a package-level named type.
type Type struct {
}

func (p *Program) llvmType(typ types.Type) llvm.Type {
	if v := p.typs.At(typ); v != nil {
		return v.(llvm.Type)
	}
	ret := p.toLLVMType(p.ctx, typ)
	p.typs.Set(typ, ret)
	return ret
}

func (p *Program) tyInt() llvm.Type {
	if p.intType.IsNil() {
		p.intType = llvmIntType(p.ctx, p.td.PointerSize())
	}
	return p.intType
}

func (p *Program) tyInt8() llvm.Type {
	if p.int8Type.IsNil() {
		p.int8Type = p.ctx.Int8Type()
	}
	return p.int8Type
}

func (p *Program) tyInt16() llvm.Type {
	if p.int16Type.IsNil() {
		p.int16Type = p.ctx.Int16Type()
	}
	return p.int16Type
}

func (p *Program) tyInt32() llvm.Type {
	if p.int32Type.IsNil() {
		p.int32Type = p.ctx.Int32Type()
	}
	return p.int32Type
}

func (p *Program) tyInt64() llvm.Type {
	if p.int64Type.IsNil() {
		p.int64Type = p.ctx.Int64Type()
	}
	return p.int64Type
}

func (p *Program) toLLVMType(ctx llvm.Context, typ types.Type) llvm.Type {
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
			return ctx.FloatType()
		case types.Float64:
			return ctx.DoubleType()
		case types.Complex64:
		case types.Complex128:
		case types.String:
		case types.UnsafePointer:
			return llvm.PointerType(ctx.VoidType(), 0)
		}
	}
	panic("todo")
}

func llvmIntType(ctx llvm.Context, size int) llvm.Type {
	if size <= 4 {
		return ctx.Int32Type()
	}
	return ctx.Int64Type()
}
