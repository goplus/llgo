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
	"go/token"
	"go/types"
	"log"

	"github.com/goplus/llgo/ssa/abi"
	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------

// abiBasic returns the abi type of the specified basic kind.
func (b Builder) abiBasic(t *types.Basic) Expr {
	name := abi.BasicName(t)
	g := b.Pkg.NewVarFrom(name, b.Prog.AbiTypePtrPtr())
	return b.Load(g.Expr)
}

// abiStruct returns the abi type of the specified struct type.
func (b Builder) abiStruct(t *types.Struct) Expr {
	pkg := b.Pkg
	name, _ := pkg.abi.StructName(t)
	g := pkg.VarOf(name)
	if g == nil {
		prog := b.Prog
		g := pkg.doNewVar(name, prog.AbiTypePtrPtr())
		g.Init(prog.Null(g.Type))
	}
	pkg.abitys = append(pkg.abitys, func() {
		tabi := b.structOf(t)
		b.Store(g.Expr, tabi)
	})
	return b.Load(g.Expr)
}

// func Struct(size uintptr, pkgPath string, fields []abi.StructField) *abi.Type
func (b Builder) structOf(t *types.Struct) Expr {
	pkg := b.Pkg
	prog := b.Prog
	n := t.NumFields()
	flds := make([]Expr, n)
	strucAbi := pkg.rtFunc("Struct")
	sfAbi := pkg.rtFunc("StructField")
	typ := prog.rawType(t)
	for i := 0; i < n; i++ {
		f := t.Field(i)
		off := uintptr(prog.OffsetOf(typ, i))
		flds[i] = b.structField(sfAbi, prog, f, off, t.Tag(i))
	}
	pkgPath := prog.Val(pkg.abi.Pkg)
	params := strucAbi.raw.Type.(*types.Signature).Params()
	tSlice := prog.rawType(params.At(params.Len() - 1).Type().(*types.Slice))
	fldSlice := b.SliceLit(tSlice, flds...)
	return b.Call(strucAbi, pkgPath, fldSlice)
}

// func StructField(name string, typ *abi.Type, off uintptr, tag string, exported, embedded bool) abi.StructField
func (b Builder) structField(sfAbi Expr, prog Program, f *types.Var, offset uintptr, tag string) Expr {
	name := prog.Val(f.Name())
	typ := b.abiType(f.Type())
	exported := prog.Val(f.Exported())
	embedded := prog.Val(f.Embedded())
	return b.Call(sfAbi, name, typ, prog.Val(offset), prog.Val(tag), exported, embedded)
}

// abiType returns the abi type of the specified type.
func (b Builder) abiType(raw types.Type) Expr {
	switch tx := raw.(type) {
	case *types.Basic:
		return b.abiBasic(tx)
	case *types.Struct:
		return b.abiStruct(tx)
	}
	panic("todo")
}

// unsafeEface(t *abi.Type, data unsafe.Pointer) Eface
func (b Builder) unsafeEface(t, data llvm.Value) llvm.Value {
	return aggregateValue(b.impl, b.Prog.rtEface(), t, data)
}

// -----------------------------------------------------------------------------

// MakeInterface constructs an instance of an interface type from a
// value of a concrete type.
//
// Use Program.MethodSets.MethodSet(X.Type()) to find the method-set
// of X, and Program.MethodValue(m) to find the implementation of a method.
//
// To construct the zero value of an interface type T, use:
//
//	NewConst(constant.MakeNil(), T, pos)
//
// Example printed form:
//
//	t1 = make interface{} <- int (42:int)
//	t2 = make Stringer <- t0
func (b Builder) MakeInterface(tinter Type, x Expr) (ret Expr) {
	rawIntf := tinter.raw.Type.Underlying().(*types.Interface)
	if debugInstr {
		log.Printf("MakeInterface %v, %v\n", rawIntf, x.impl)
	}
	prog := b.Prog
	typ := x.Type
	switch tx := typ.raw.Type.Underlying().(type) {
	case *types.Basic:
		kind := tx.Kind()
		switch {
		case kind >= types.Bool && kind <= types.Uintptr:
			if prog.is32Bits && (kind == types.Int64 || kind == types.Uint64) {
				return b.makeIntfAlloc(tinter, rawIntf, typ, x)
			}
			return b.makeIntfByIntptr(tinter, rawIntf, typ, x.impl)
		case kind == types.Float32:
			i32 := llvm.CreateBitCast(b.impl, x.impl, prog.tyInt32())
			return b.makeIntfByIntptr(tinter, rawIntf, typ, i32)
		case kind == types.Float64:
			if prog.is32Bits {
				return b.makeIntfAlloc(tinter, rawIntf, typ, x)
			}
			i64 := llvm.CreateBitCast(b.impl, x.impl, prog.tyInt64())
			return b.makeIntfByIntptr(tinter, rawIntf, typ, i64)
		case kind == types.String:
			return Expr{b.InlineCall(b.Pkg.rtFunc("MakeAnyString"), x).impl, tinter}
		}
	case *types.Struct:
		size := int(prog.SizeOf(typ))
		if size > prog.PointerSize() {
			return b.makeIntfAlloc(tinter, rawIntf, typ, x)
		}
		tv := prog.ctx.IntType(size * 8)
		iv := llvm.CreateBitCast(b.impl, x.impl, tv)
		return b.makeIntfByIntptr(tinter, rawIntf, typ, iv)
	}
	panic("todo")
}

func (b Builder) makeIntfAlloc(tinter Type, rawIntf *types.Interface, typ Type, x Expr) (ret Expr) {
	vptr := b.AllocU(typ)
	b.Store(vptr, x)
	return b.makeIntfByPtr(tinter, rawIntf, typ, vptr)
}

func (b Builder) makeIntfByPtr(tinter Type, rawIntf *types.Interface, typ Type, vptr Expr) (ret Expr) {
	if rawIntf.Empty() {
		return Expr{b.unsafeEface(b.abiType(typ.raw.Type).impl, vptr.impl), tinter}
	}
	panic("todo")
}

func (b Builder) makeIntfByIntptr(tinter Type, rawIntf *types.Interface, typ Type, x llvm.Value) (ret Expr) {
	if rawIntf.Empty() {
		tptr := b.Prog.Uintptr()
		x = llvm.CreateIntCast(b.impl, x, tptr.ll)
		impl := b.InlineCall(b.Pkg.rtFunc("MakeAnyIntptr"), b.abiType(typ.raw.Type), Expr{x, tptr}).impl
		return Expr{impl, tinter}
	}
	panic("todo")
}

// The TypeAssert instruction tests whether interface value X has type
// AssertedType.
//
// If !CommaOk, on success it returns v, the result of the conversion
// (defined below); on failure it panics.
//
// If CommaOk: on success it returns a pair (v, true) where v is the
// result of the conversion; on failure it returns (z, false) where z
// is AssertedType's zero value.  The components of the pair must be
// accessed using the Extract instruction.
//
// If Underlying: tests whether interface value X has the underlying
// type AssertedType.
//
// If AssertedType is a concrete type, TypeAssert checks whether the
// dynamic type in interface X is equal to it, and if so, the result
// of the conversion is a copy of the value in the interface.
//
// If AssertedType is an interface, TypeAssert checks whether the
// dynamic type of the interface is assignable to it, and if so, the
// result of the conversion is a copy of the interface value X.
// If AssertedType is a superinterface of X.Type(), the operation will
// fail iff the operand is nil.  (Contrast with ChangeInterface, which
// performs no nil-check.)
//
// Type() reflects the actual type of the result, possibly a
// 2-types.Tuple; AssertedType is the asserted type.
//
// Depending on the TypeAssert's purpose, Pos may return:
//   - the ast.CallExpr.Lparen of an explicit T(e) conversion;
//   - the ast.TypeAssertExpr.Lparen of an explicit e.(T) operation;
//   - the ast.CaseClause.Case of a case of a type-switch statement;
//   - the Ident(m).NamePos of an interface method value i.m
//     (for which TypeAssert may be used to effect the nil check).
//
// Example printed form:
//
//	t1 = typeassert t0.(int)
//	t3 = typeassert,ok t2.(T)
func (b Builder) TypeAssert(x Expr, assertedTyp Type, commaOk bool) (ret Expr) {
	if debugInstr {
		log.Printf("TypeAssert %v, %v, %v\n", x.impl, assertedTyp.raw.Type, commaOk)
	}
	// TODO(xsw)
	// if x.kind != vkEface {
	//	 panic("todo: non empty interface")
	// }
	switch assertedTyp.kind {
	case vkSigned, vkUnsigned, vkFloat, vkBool:
		pkg := b.Pkg
		fnName := "I2Int"
		if commaOk {
			fnName = "CheckI2Int"
		}
		fn := pkg.rtFunc(fnName)
		var kind types.BasicKind
		var typ Expr
		switch t := assertedTyp.raw.Type.(type) {
		case *types.Basic:
			kind = t.Kind()
			typ = b.abiBasic(t)
		default:
			panic("todo")
		}
		ret = b.InlineCall(fn, x, typ)
		if kind != types.Uintptr {
			conv := func(v llvm.Value) llvm.Value {
				switch kind {
				case types.Float32:
					v = castInt(b, v, b.Prog.Int32())
					v = llvm.CreateBitCast(b.impl, v, assertedTyp.ll)
				case types.Float64:
					v = llvm.CreateBitCast(b.impl, v, assertedTyp.ll)
				default:
					v = castInt(b, v, assertedTyp)
				}
				return v
			}
			if !commaOk {
				ret.Type = assertedTyp
				ret.impl = conv(ret.impl)
			} else {
				ret.Type = b.Prog.toTuple(
					types.NewTuple(
						types.NewVar(token.NoPos, nil, "", assertedTyp.RawType()),
						ret.Type.RawType().(*types.Tuple).At(1),
					),
				)
				val0 := conv(llvm.CreateExtractValue(b.impl, ret.impl, 0))
				val1 := llvm.CreateExtractValue(b.impl, ret.impl, 1)
				ret.impl = llvm.ConstStruct([]llvm.Value{val0, val1}, false)
			}
		}
		return
	case vkString:
		pkg := b.Pkg
		fnName := "I2String"
		if commaOk {
			fnName = "CheckI2String"
		}
		return b.InlineCall(pkg.rtFunc(fnName), x)
	case vkStruct:
	}
	panic("todo")
}

// -----------------------------------------------------------------------------

// InterfaceData returns the data pointer of an interface.
func (b Builder) InterfaceData(x Expr) Expr {
	if debugInstr {
		log.Printf("InterfaceData %v\n", x.impl)
	}
	ptr := llvm.CreateExtractValue(b.impl, x.impl, 1)
	return Expr{ptr, b.Prog.VoidPtr()}
}

// -----------------------------------------------------------------------------
