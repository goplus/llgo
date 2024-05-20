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

	"github.com/goplus/llgo/internal/abi"
	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------

// abiBasic returns the abi type of the specified basic kind.
func (b Builder) abiBasic(kind types.BasicKind) Expr {
	return b.InlineCall(b.Pkg.rtFunc("Basic"), b.Prog.Val(int(kind)))
}

/*
// abiStruct returns the abi type of the specified struct type.
func (b Builder) abiStruct(t *types.Struct) Expr {
	// name := "__llgo_" + b.Prog.abi.StructName(t)
}
*/

// AbiType returns the abi type of the specified type.
func (b Builder) AbiType(t Type) Expr {
	switch tx := t.raw.Type.(type) {
	case *types.Basic:
		return b.abiBasic(tx.Kind())
		//case *types.Struct:
		//	return b.abiStruct(tx)
	}
	panic("todo")
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
		/* case *types.Struct:
		size := int(prog.SizeOf(typ))
		if size > prog.PointerSize() {
			return b.makeIntfAlloc(tinter, rawIntf, typ, x)
		}
		tv := prog.ctx.IntType(size * 8)
		iv := llvm.CreateBitCast(b.impl, x.impl, tv)
		return b.makeIntfByIntptr(tinter, rawIntf, typ, iv) */
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
		ret = b.InlineCall(b.Pkg.rtFunc("MakeAny"), b.AbiType(typ), vptr)
		ret.Type = tinter
		return
	}
	panic("todo")
}

func (b Builder) makeIntfByIntptr(tinter Type, rawIntf *types.Interface, typ Type, x llvm.Value) (ret Expr) {
	if rawIntf.Empty() {
		tptr := b.Prog.Uintptr()
		x = llvm.CreateIntCast(b.impl, x, tptr.ll)
		impl := b.InlineCall(b.Pkg.rtFunc("MakeAnyIntptr"), b.AbiType(typ), Expr{x, tptr}).impl
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
	switch assertedTyp.kind {
	case vkSigned, vkUnsigned, vkFloat, vkBool:
		pkg := b.Pkg
		fnName := "I2Int"
		if commaOk {
			fnName = "CheckI2Int"
		}
		fn := pkg.rtFunc(fnName)
		var kind types.BasicKind
		switch t := assertedTyp.raw.Type.(type) {
		case *types.Basic:
			kind = t.Kind()
		default:
			panic("todo")
		}
		typ := b.InlineCall(pkg.rtFunc("Basic"), b.Prog.Val(int(kind)))
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
		fn := pkg.rtFunc(fnName)
		typ := b.InlineCall(pkg.rtFunc("Basic"), b.Prog.Val(int(abi.String)))
		return b.InlineCall(fn, x, typ)
	}
	panic("todo")
}

// -----------------------------------------------------------------------------
