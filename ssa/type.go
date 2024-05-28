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

	"github.com/goplus/llgo/ssa/abi"
	"github.com/goplus/llvm"
)

var (
	tyAny = types.NewInterfaceType(nil, nil)
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
	vkPtr
	vkFuncDecl
	vkFuncPtr
	vkClosure
	vkPyFuncRef
	vkPyVarRef
	vkTuple
	vkSlice
	vkArray
	vkMap
	vkEface
	vkIface
	vkStruct
)

// -----------------------------------------------------------------------------

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

// -----------------------------------------------------------------------------

type goProgram aProgram

// Alignof returns the alignment of a variable of type T.
// Alignof must implement the alignment guarantees required by the spec.
// The result must be >= 1.
func (p *goProgram) Alignof(T types.Type) int64 {
	return p.sizes.Alignof(T)
}

// Offsetsof returns the offsets of the given struct fields, in bytes.
// Offsetsof must implement the offset guarantees required by the spec.
// A negative entry in the result indicates that the struct is too large.
func (p *goProgram) Offsetsof(fields []*types.Var) []int64 {
	return p.sizes.Offsetsof(fields)
}

// Sizeof returns the size of a variable of type T.
// Sizeof must implement the size guarantees required by the spec.
// A negative result indicates that T is too large.
func (p *goProgram) Sizeof(T types.Type) int64 {
	return p.sizes.Sizeof(T)
}

// -----------------------------------------------------------------------------

type rawType struct {
	Type types.Type
}

type aType struct {
	ll   llvm.Type
	raw  rawType
	kind valueKind // value kind of llvm.Type
}

type Type = *aType

// RawType returns the raw type.
func (t Type) RawType() types.Type {
	return t.raw.Type
}

// TypeSizes returns the sizes of the types.
func (p Program) TypeSizes(sizes types.Sizes) types.Sizes {
	p.sizes = sizes
	return (*goProgram)(p)
}

// TODO(xsw):
// how to generate platform independent code?
func (p Program) SizeOf(typ Type, n ...int64) uint64 {
	size := p.td.TypeAllocSize(typ.ll)
	if len(n) != 0 {
		size *= uint64(n[0])
	}
	return size
}

// OffsetOf returns the offset of a field in a struct.
func (p Program) OffsetOf(typ Type, i int) uint64 {
	return p.td.ElementOffset(typ.ll, i)
}

// SizeOf returns the size of a type.
func SizeOf(prog Program, t Type, n ...int64) Expr {
	size := prog.SizeOf(t, n...)
	return prog.IntVal(size, prog.Uintptr())
}

func OffsetOf(prog Program, t Type, i int) Expr {
	offset := prog.OffsetOf(t, i)
	return prog.IntVal(offset, prog.Uintptr())
}

func (p Program) PointerSize() int {
	return p.td.PointerSize()
}

func (p Program) Slice(typ Type) Type {
	return p.rawType(types.NewSlice(typ.raw.Type))
}

func (p Program) Pointer(typ Type) Type {
	return p.rawType(types.NewPointer(typ.raw.Type))
}

func (p Program) Elem(typ Type) Type {
	elem := typ.raw.Type.(interface {
		Elem() types.Type
	}).Elem()
	return p.rawType(elem)
}

func (p Program) Index(typ Type) Type {
	return p.rawType(indexType(typ.raw.Type))
}

func (p Program) Field(typ Type, i int) Type {
	var fld *types.Var
	switch t := typ.raw.Type.(type) {
	case *types.Tuple:
		fld = t.At(i)
	default:
		fld = t.Underlying().(*types.Struct).Field(i)
	}
	return p.rawType(fld.Type())
}

func (p Program) rawType(raw types.Type) Type {
	if v := p.typs.At(raw); v != nil {
		return v.(Type)
	}
	ret := p.toType(raw)
	p.typs.Set(raw, ret)
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

/*
func (p Program) toTuple(typ *types.Tuple) Type {
	return &aType{p.toLLVMTuple(typ), rawType{typ}, vkTuple}
}
*/

func (p Program) toType(raw types.Type) Type {
	typ := rawType{raw}
	switch t := raw.(type) {
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
			return &aType{p.rtString(), typ, vkString}
		case types.UnsafePointer:
			return &aType{p.tyVoidPtr(), typ, vkPtr}
		}
	case *types.Pointer:
		elem := p.rawType(t.Elem())
		return &aType{llvm.PointerType(elem.ll, 0), typ, vkPtr}
	case *types.Interface:
		if t.Empty() {
			return &aType{p.rtEface(), typ, vkEface}
		}
		return &aType{p.rtIface(), typ, vkIface}
	case *types.Slice:
		return &aType{p.rtSlice(), typ, vkSlice}
	case *types.Map:
		return &aType{p.rtMap(), typ, vkMap}
	case *types.Struct:
		ll, kind := p.toLLVMStruct(t)
		return &aType{ll, typ, kind}
	case *types.Named:
		return p.toNamed(t)
	case *types.Signature: // represents a C function pointer in raw type
		return &aType{p.toLLVMFuncPtr(t), typ, vkFuncPtr}
	case *types.Tuple:
		return &aType{p.toLLVMTuple(t), typ, vkTuple}
	case *types.Array:
		elem := p.rawType(t.Elem())
		return &aType{llvm.ArrayType(elem.ll, int(t.Len())), typ, vkArray}
	case *types.Chan:
	}
	panic(fmt.Sprintf("toLLVMType: todo - %T\n", raw))
}

func (p Program) toLLVMNamedStruct(name string, raw *types.Struct) llvm.Type {
	if typ, ok := p.named[name]; ok {
		return typ
	}
	t := p.ctx.StructCreateNamed(name)
	p.named[name] = t
	fields := p.toLLVMFields(raw)
	t.StructSetBody(fields, false)
	return t
}

func (p Program) toLLVMStruct(raw *types.Struct) (ret llvm.Type, kind valueKind) {
	fields := p.toLLVMFields(raw)
	ret = p.ctx.StructType(fields, false)
	if isClosure(raw) {
		kind = vkClosure
	} else {
		kind = vkStruct
	}
	return
}

func isClosure(raw *types.Struct) bool {
	n := raw.NumFields()
	if n == 2 {
		if _, ok := raw.Field(0).Type().(*types.Signature); ok {
			return raw.Field(1).Type() == types.Typ[types.UnsafePointer]
		}
	}
	return false
}

func (p Program) toLLVMFields(raw *types.Struct) (fields []llvm.Type) {
	n := raw.NumFields()
	if n > 0 {
		fields = make([]llvm.Type, n)
		for i := 0; i < n; i++ {
			fields[i] = p.rawType(raw.Field(i).Type()).ll
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
			ret[i] = p.rawType(t.At(i).Type()).ll
		}
	}
	return
}

func (p Program) toLLVMFunc(sig *types.Signature) llvm.Type {
	tParams := sig.Params()
	n := tParams.Len()
	hasVArg := sig.Variadic()
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
		ret = p.rawType(out.At(0).Type()).ll
	default:
		ret = p.toLLVMTuple(out)
	}
	return llvm.FunctionType(ret, params, hasVArg)
}

func (p Program) toLLVMFuncPtr(sig *types.Signature) llvm.Type {
	ft := p.toLLVMFunc(sig)
	return llvm.PointerType(ft, 0)
}

func (p Program) retType(raw *types.Signature) Type {
	out := raw.Results()
	switch n := out.Len(); n {
	case 0:
		return p.Void()
	case 1:
		return p.rawType(out.At(0).Type())
	default:
		return &aType{p.toLLVMTuple(out), rawType{out}, vkTuple}
	}
}

func (p Program) toNamed(raw *types.Named) Type {
	switch t := raw.Underlying().(type) {
	case *types.Struct:
		name := NameOf(raw)
		return &aType{p.toLLVMNamedStruct(name, t), rawType{raw}, vkStruct}
	default:
		typ := p.rawType(t)
		return &aType{typ.ll, rawType{raw}, typ.kind}
	}
}

// NameOf returns the full name of a named type.
func NameOf(typ *types.Named) string {
	return abi.TypeName(typ.Obj())
}

// FullName returns the full name of a package member.
func FullName(pkg *types.Package, name string) string {
	return abi.FullName(pkg, name)
}

// PathOf returns the package path of the specified package.
func PathOf(pkg *types.Package) string {
	return abi.PathOf(pkg)
}

// FuncName:
// - func: pkg.name
// - method: (pkg.T).name, (*pkg.T).name
func FuncName(pkg *types.Package, name string, recv *types.Var) string {
	if recv != nil {
		var tName string
		t := recv.Type()
		if tp, ok := t.(*types.Pointer); ok {
			t, tName = tp.Elem(), "*"
		}
		tName += NameOf(t.(*types.Named))
		return "(" + tName + ")." + name
	}
	ret := FullName(pkg, name)
	if ret == "main.main" {
		ret = "main"
	}
	return ret
}

// -----------------------------------------------------------------------------
