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
	"bytes"
	"fmt"
	"go/constant"
	"go/token"
	"go/types"
	"log"

	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------

type Expr struct {
	impl llvm.Value
	Type
}

var Nil Expr // Zero value is a nil Expr

// IsNil checks if the expression is nil or not.
func (v Expr) IsNil() bool {
	return v.Type == nil
}

// -----------------------------------------------------------------------------

type pyVarTy struct {
	mod  Expr
	name string
}

func (p pyVarTy) Underlying() types.Type {
	panic("don't call")
}

func (p pyVarTy) String() string {
	return "pyVar"
}

func pyVarExpr(mod Expr, name string) Expr {
	tvar := &aType{raw: rawType{&pyVarTy{mod, name}}, kind: vkPyVarRef}
	return Expr{Type: tvar}
}

// -----------------------------------------------------------------------------

func (p Program) Zero(t Type) Expr {
	var ret llvm.Value
	switch u := t.raw.Type.Underlying().(type) {
	case *types.Basic:
		kind := u.Kind()
		switch {
		case kind >= types.Bool && kind <= types.Uintptr:
			ret = llvm.ConstInt(p.rawType(u).ll, 0, false)
		case kind == types.String:
			ret = p.Zero(p.rtType("String")).impl
		case kind == types.UnsafePointer:
			ret = llvm.ConstPointerNull(p.tyVoidPtr())
		case kind <= types.Float64:
			ret = llvm.ConstFloat(p.Float64().ll, 0)
		case kind == types.Float32:
			ret = llvm.ConstFloat(p.Float32().ll, 0)
		default:
			panic("todo")
		}
	case *types.Pointer:
		return Expr{llvm.ConstNull(t.ll), t}
	case *types.Struct:
		n := u.NumFields()
		flds := make([]llvm.Value, n)
		for i := 0; i < n; i++ {
			flds[i] = p.Zero(p.rawType(u.Field(i).Type())).impl
		}
		ret = llvm.ConstStruct(flds, false)
	case *types.Slice:
		ret = p.Zero(p.rtType("Slice")).impl
	default:
		log.Panicln("todo:", u)
	}
	return Expr{ret, t}
}

// Null returns a null constant expression.
func (p Program) Null(t Type) Expr {
	return Expr{llvm.ConstNull(t.ll), t}
}

// PyNull returns a null *PyObject constant expression.
func (p Program) PyNull() Expr {
	return p.Null(p.PyObjectPtr())
}

// BoolVal returns a boolean constant expression.
func (p Program) BoolVal(v bool) Expr {
	t := p.Bool()
	var bv uint64
	if v {
		bv = 1
	}
	ret := llvm.ConstInt(t.ll, bv, v)
	return Expr{ret, t}
}

// IntVal returns an integer constant expression.
func (p Program) IntVal(v uint64, t Type) Expr {
	ret := llvm.ConstInt(t.ll, v, false)
	return Expr{ret, t}
}

func (p Program) FloatVal(v float64, t Type) Expr {
	ret := llvm.ConstFloat(t.ll, v)
	return Expr{ret, t}
}

// Val returns a constant expression.
func (p Program) Val(v interface{}) Expr {
	switch v := v.(type) {
	case int:
		return p.IntVal(uint64(v), p.Int())
	case uintptr:
		return p.IntVal(uint64(v), p.Uintptr())
	case bool:
		return p.BoolVal(v)
	case float64:
		t := p.Float64()
		ret := llvm.ConstFloat(t.ll, v)
		return Expr{ret, t}
	}
	panic("todo")
}

// Const returns a constant expression.
func (b Builder) Const(v constant.Value, typ Type) Expr {
	prog := b.Prog
	if v == nil {
		return prog.Null(typ)
	}
	raw := typ.raw.Type
	switch t := raw.Underlying().(type) {
	case *types.Basic:
		kind := t.Kind()
		switch {
		case kind == types.Bool:
			return Expr{prog.BoolVal(constant.BoolVal(v)).impl, typ}
		case kind >= types.Int && kind <= types.Int64:
			if v, exact := constant.Int64Val(v); exact {
				return prog.IntVal(uint64(v), typ)
			}
		case kind >= types.Uint && kind <= types.Uintptr:
			if v, exact := constant.Uint64Val(v); exact {
				return prog.IntVal(v, typ)
			}
		case kind == types.Float32 || kind == types.Float64:
			if v, exact := constant.Float64Val(v); exact {
				return prog.FloatVal(v, typ)
			}
		case kind == types.String:
			return Expr{b.Str(constant.StringVal(v)).impl, typ}
		}
	}
	panic(fmt.Sprintf("unsupported Const: %v, %v", v, raw))
}

// CStr returns a c-style string constant expression.
func (b Builder) CStr(v string) Expr {
	return Expr{llvm.CreateGlobalStringPtr(b.impl, v), b.Prog.CStr()}
}

// Str returns a Go string constant expression.
func (b Builder) Str(v string) (ret Expr) {
	prog := b.Prog
	data := llvm.CreateGlobalStringPtr(b.impl, v)
	size := llvm.ConstInt(prog.tyInt(), uint64(len(v)), false)
	return Expr{aggregateValue(b.impl, prog.rtString(), data, size), prog.String()}
}

// unsafeString(data *byte, size int) string
func (b Builder) unsafeString(data, size llvm.Value) Expr {
	prog := b.Prog
	return Expr{aggregateValue(b.impl, prog.rtString(), data, size), prog.String()}
}

// unsafeSlice(data *T, size, cap int) []T
func (b Builder) unsafeSlice(data Expr, size, cap llvm.Value) Expr {
	prog := b.Prog
	tslice := prog.Slice(prog.Elem(data.Type))
	return Expr{aggregateValue(b.impl, prog.rtSlice(), data.impl, size, cap), tslice}
}

// -----------------------------------------------------------------------------

const (
	mathOpBase = token.ADD
	mathOpLast = token.REM
)

var mathOpToLLVM = []llvm.Opcode{
	int(token.ADD-mathOpBase)<<2 | vkSigned:   llvm.Add,
	int(token.ADD-mathOpBase)<<2 | vkUnsigned: llvm.Add,
	int(token.ADD-mathOpBase)<<2 | vkFloat:    llvm.FAdd,

	int(token.SUB-mathOpBase)<<2 | vkSigned:   llvm.Sub,
	int(token.SUB-mathOpBase)<<2 | vkUnsigned: llvm.Sub,
	int(token.SUB-mathOpBase)<<2 | vkFloat:    llvm.FSub,

	int(token.MUL-mathOpBase)<<2 | vkSigned:   llvm.Mul,
	int(token.MUL-mathOpBase)<<2 | vkUnsigned: llvm.Mul,
	int(token.MUL-mathOpBase)<<2 | vkFloat:    llvm.FMul,

	int(token.QUO-mathOpBase)<<2 | vkSigned:   llvm.SDiv,
	int(token.QUO-mathOpBase)<<2 | vkUnsigned: llvm.UDiv,
	int(token.QUO-mathOpBase)<<2 | vkFloat:    llvm.FDiv,

	int(token.REM-mathOpBase)<<2 | vkSigned:   llvm.SRem,
	int(token.REM-mathOpBase)<<2 | vkUnsigned: llvm.URem,
	int(token.REM-mathOpBase)<<2 | vkFloat:    llvm.FRem,
}

func mathOpIdx(op token.Token, x valueKind) int {
	return int(op-mathOpBase)<<2 | x
}

// ADD SUB MUL QUO REM          + - * / %
func isMathOp(op token.Token) bool {
	return op >= mathOpBase && op <= mathOpLast
}

const (
	logicOpBase = token.AND
	logicOpLast = token.AND_NOT
)

var logicOpToLLVM = []llvm.Opcode{
	token.AND - logicOpBase: llvm.And,
	token.OR - logicOpBase:  llvm.Or,
	token.XOR - logicOpBase: llvm.Xor,
	token.SHL - logicOpBase: llvm.Shl,
	token.SHR - logicOpBase: llvm.AShr, // Arithmetic Shift Right
}

// AND OR XOR SHL SHR AND_NOT   & | ^ << >> &^
func isLogicOp(op token.Token) bool {
	return op >= logicOpBase && op <= logicOpLast
}

const (
	predOpBase = token.EQL
	predOpLast = token.GEQ
)

var intPredOpToLLVM = []llvm.IntPredicate{
	token.EQL - predOpBase: llvm.IntEQ,
	token.NEQ - predOpBase: llvm.IntNE,
	token.LSS - predOpBase: llvm.IntSLT,
	token.LEQ - predOpBase: llvm.IntSLE,
	token.GTR - predOpBase: llvm.IntSGT,
	token.GEQ - predOpBase: llvm.IntSGE,
}

var uintPredOpToLLVM = []llvm.IntPredicate{
	token.EQL - predOpBase: llvm.IntEQ,
	token.NEQ - predOpBase: llvm.IntNE,
	token.LSS - predOpBase: llvm.IntULT,
	token.LEQ - predOpBase: llvm.IntULE,
	token.GTR - predOpBase: llvm.IntUGT,
	token.GEQ - predOpBase: llvm.IntUGE,
}

var floatPredOpToLLVM = []llvm.FloatPredicate{
	token.EQL - predOpBase: llvm.FloatOEQ,
	token.NEQ - predOpBase: llvm.FloatUNE,
	token.LSS - predOpBase: llvm.FloatOLT,
	token.LEQ - predOpBase: llvm.FloatOLE,
	token.GTR - predOpBase: llvm.FloatOGT,
	token.GEQ - predOpBase: llvm.FloatOGE,
}

var boolPredOpToLLVM = []llvm.IntPredicate{
	token.EQL - predOpBase: llvm.IntEQ,
	token.NEQ - predOpBase: llvm.IntNE,
}

// EQL NEQ LSS LEQ GTR GEQ      == != < <= < >=
func isPredOp(op token.Token) bool {
	return op >= predOpBase && op <= predOpLast
}

// The BinOp instruction yields the result of binary operation (x op y).
// op can be:
// ADD SUB MUL QUO REM          + - * / %
// AND OR XOR SHL SHR AND_NOT   & | ^ << >> &^
// EQL NEQ LSS LEQ GTR GEQ      == != < <= < >=
func (b Builder) BinOp(op token.Token, x, y Expr) Expr {
	if debugInstr {
		log.Printf("BinOp %d, %v, %v\n", op, x.impl, y.impl)
	}
	switch {
	case isMathOp(op): // op: + - * / %
		kind := x.kind
		switch kind {
		case vkString:
			if op == token.ADD {
				return Expr{b.InlineCall(b.Pkg.rtFunc("StringCat"), x, y).impl, x.Type}
			}
		case vkComplex:
		default:
			idx := mathOpIdx(op, kind)
			if llop := mathOpToLLVM[idx]; llop != 0 {
				return Expr{llvm.CreateBinOp(b.impl, llop, x.impl, y.impl), x.Type}
			}
		}
	case isLogicOp(op): // op: & | ^ << >> &^
		switch op {
		case token.AND_NOT:
			return Expr{llvm.CreateAnd(b.impl, x.impl, llvm.CreateNot(b.impl, y.impl)), x.Type}
		case token.SHL, token.SHR:
			if needsNegativeCheck(y) {
				zero := llvm.ConstInt(y.ll, 0, false)
				check := Expr{llvm.CreateICmp(b.impl, llvm.IntSLT, y.impl, zero), b.Prog.Bool()}
				b.InlineCall(b.Pkg.rtFunc("AssertNegativeShift"), check)
			}
			xsize, ysize := b.Prog.SizeOf(x.Type), b.Prog.SizeOf(y.Type)
			if xsize != ysize {
				y = b.Convert(x.Type, y)
			}
			overflows := llvm.CreateICmp(b.impl, llvm.IntUGE, y.impl, llvm.ConstInt(y.ll, xsize*8, false))
			xzero := llvm.ConstInt(x.ll, 0, false)
			if op == token.SHL {
				rhs := llvm.CreateShl(b.impl, x.impl, y.impl)
				return Expr{llvm.CreateSelect(b.impl, overflows, xzero, rhs), x.Type}
			} else {
				if x.kind == vkSigned {
					rhs := llvm.CreateSelect(b.impl, overflows, llvm.ConstInt(y.ll, 8*xsize-1, false), y.impl)
					return Expr{llvm.CreateAShr(b.impl, x.impl, rhs), x.Type}
				} else {
					rsh := llvm.CreateLShr(b.impl, x.impl, y.impl)
					return Expr{llvm.CreateSelect(b.impl, overflows, xzero, rsh), x.Type}
				}
			}
		default:
			llop := logicOpToLLVM[op-logicOpBase]
			return Expr{llvm.CreateBinOp(b.impl, llop, x.impl, y.impl), x.Type}
		}
	case isPredOp(op): // op: == != < <= < >=
		tret := b.Prog.Bool()
		kind := x.kind
		switch kind {
		case vkSigned:
			pred := intPredOpToLLVM[op-predOpBase]
			return Expr{llvm.CreateICmp(b.impl, pred, x.impl, y.impl), tret}
		case vkUnsigned, vkPtr:
			pred := uintPredOpToLLVM[op-predOpBase]
			return Expr{llvm.CreateICmp(b.impl, pred, x.impl, y.impl), tret}
		case vkFloat:
			pred := floatPredOpToLLVM[op-predOpBase]
			return Expr{llvm.CreateFCmp(b.impl, pred, x.impl, y.impl), tret}
		case vkBool:
			pred := boolPredOpToLLVM[op-predOpBase]
			return Expr{llvm.CreateICmp(b.impl, pred, x.impl, y.impl), tret}
		case vkString, vkComplex:
			switch op {
			case token.EQL:
				return b.InlineCall(b.Pkg.rtFunc("StringEqual"), x, y)
			case token.NEQ:
				ret := b.InlineCall(b.Pkg.rtFunc("StringEqual"), x, y)
				ret.impl = llvm.CreateNot(b.impl, ret.impl)
				return ret
			case token.LSS:
				return b.InlineCall(b.Pkg.rtFunc("StringLess"), x, y)
			case token.LEQ:
				ret := b.InlineCall(b.Pkg.rtFunc("StringLess"), y, x)
				ret.impl = llvm.CreateNot(b.impl, ret.impl)
				return ret
			case token.GTR:
				return b.InlineCall(b.Pkg.rtFunc("StringLess"), y, x)
			case token.GEQ:
				ret := b.InlineCall(b.Pkg.rtFunc("StringLess"), x, y)
				ret.impl = llvm.CreateNot(b.impl, ret.impl)
				return ret
			}
		}
	}
	panic("todo")
}

// The UnOp instruction yields the result of (op x).
// ARROW is channel receive.
// MUL is pointer indirection (load).
// XOR is bitwise complement.
// SUB is negation.
// NOT is logical negation.
func (b Builder) UnOp(op token.Token, x Expr) (ret Expr) {
	if debugInstr {
		log.Printf("UnOp %v, %v\n", op, x.impl)
	}
	switch op {
	case token.MUL:
		return b.Load(x)
	case token.SUB:
		switch t := x.raw.Type.Underlying().(type) {
		case *types.Basic:
			ret.Type = x.Type
			if t.Info()&types.IsInteger != 0 {
				ret.impl = llvm.CreateNeg(b.impl, x.impl)
			} else if t.Info()&types.IsFloat != 0 {
				ret.impl = llvm.CreateFNeg(b.impl, x.impl)
			} else {
				panic("todo")
			}
		default:
			panic("unreachable")
		}
	case token.NOT:
		ret.Type = x.Type
		ret.impl = llvm.CreateNot(b.impl, x.impl)
	case token.XOR:
		ret.Type = x.Type
		ret.impl = llvm.CreateXor(b.impl, x.impl, llvm.ConstInt(x.Type.ll, ^uint64(0), false))
	case token.ARROW:
		panic("todo")
	}
	return
}

// -----------------------------------------------------------------------------

func checkExpr(v Expr, t types.Type, b Builder) Expr {
	if t, ok := t.(*types.Struct); ok && isClosure(t) {
		if v.kind != vkClosure {
			return b.Pkg.closureStub(b, t, v)
		}
	}
	return v
}

func needsNegativeCheck(x Expr) bool {
	if x.kind == vkSigned {
		if rv := x.impl.IsAConstantInt(); !rv.IsNil() && rv.SExtValue() >= 0 {
			return false
		}
		return true
	}
	return false
}

func llvmParamsEx(data Expr, vals []Expr, params *types.Tuple, b Builder) (ret []llvm.Value) {
	if data.IsNil() {
		return llvmParams(0, vals, params, b)
	}
	ret = llvmParams(1, vals, params, b)
	ret[0] = data.impl
	return
}

func llvmParams(base int, vals []Expr, params *types.Tuple, b Builder) (ret []llvm.Value) {
	n := params.Len()
	if n > 0 {
		ret = make([]llvm.Value, len(vals)+base)
		for idx, v := range vals {
			i := base + idx
			if i < n {
				v = checkExpr(v, params.At(i).Type(), b)
			}
			ret[i] = v.impl
		}
	}
	return
}

func llvmFields(vals []Expr, t *types.Struct, b Builder) (ret []llvm.Value) {
	n := t.NumFields()
	if n > 0 {
		ret = make([]llvm.Value, len(vals))
		for i, v := range vals {
			if i < n {
				v = checkExpr(v, t.Field(i).Type(), b)
			}
			ret[i] = v.impl
		}
	}
	return
}

// -----------------------------------------------------------------------------

// Advance returns the pointer ptr advanced by offset.
func (b Builder) Advance(ptr Expr, offset Expr) Expr {
	if debugInstr {
		log.Printf("Advance %v, %v\n", ptr.impl, offset.impl)
	}
	var elem llvm.Type
	var prog = b.Prog
	switch t := ptr.raw.Type.(type) {
	case *types.Basic: // void
		elem = prog.tyInt8()
	default:
		elem = prog.rawType(t.(*types.Pointer).Elem()).ll
	}
	ret := llvm.CreateGEP(b.impl, elem, ptr.impl, []llvm.Value{offset.impl})
	return Expr{ret, ptr.Type}
}

// Load returns the value at the pointer ptr.
func (b Builder) Load(ptr Expr) Expr {
	if debugInstr {
		log.Printf("Load %v\n", ptr.impl)
	}
	if ptr.kind == vkPyVarRef {
		return b.pyLoad(ptr)
	}
	telem := b.Prog.Elem(ptr.Type)
	return Expr{llvm.CreateLoad(b.impl, telem.ll, ptr.impl), telem}
}

// Store stores val at the pointer ptr.
func (b Builder) Store(ptr, val Expr) Builder {
	raw := ptr.raw.Type
	if debugInstr {
		log.Printf("Store %v, %v, %v\n", raw, ptr.impl, val.impl)
	}
	val = checkExpr(val, raw.(*types.Pointer).Elem(), b)
	b.impl.CreateStore(val.impl, ptr.impl)
	return b
}

func (b Builder) aggregateAlloc(t Type, flds ...llvm.Value) llvm.Value {
	prog := b.Prog
	size := prog.SizeOf(t)
	ptr := b.InlineCall(b.Pkg.rtFunc("AllocU"), prog.IntVal(size, prog.Uintptr())).impl
	tll := t.ll
	impl := b.impl
	for i, fld := range flds {
		impl.CreateStore(fld, llvm.CreateStructGEP(impl, tll, ptr, i))
	}
	return ptr
}

// aggregateValue yields the value of the aggregate X with the fields
func (b Builder) aggregateValue(t Type, flds ...llvm.Value) Expr {
	return Expr{aggregateValue(b.impl, t.ll, flds...), t}
}

func aggregateValue(b llvm.Builder, tll llvm.Type, flds ...llvm.Value) llvm.Value {
	ptr := llvm.CreateAlloca(b, tll)
	for i, fld := range flds {
		b.CreateStore(fld, llvm.CreateStructGEP(b, tll, ptr, i))
	}
	return llvm.CreateLoad(b, tll, ptr)
}

// The MakeClosure instruction yields a closure value whose code is
// Fn and whose free variables' values are supplied by Bindings.
//
// Type() returns a (possibly named) *types.Signature.
//
// Example printed form:
//
//	t0 = make closure anon@1.2 [x y z]
//	t1 = make closure bound$(main.I).add [i]
func (b Builder) MakeClosure(fn Expr, bindings []Expr) Expr {
	if debugInstr {
		log.Printf("MakeClosure %v, %v\n", fn, bindings)
	}
	prog := b.Prog
	tfn := fn.Type
	sig := tfn.raw.Type.(*types.Signature)
	tctx := sig.Params().At(0).Type().Underlying().(*types.Pointer).Elem().(*types.Struct)
	flds := llvmFields(bindings, tctx, b)
	data := b.aggregateAlloc(prog.rawType(tctx), flds...)
	return b.aggregateValue(prog.Closure(tfn), fn.impl, data)
}

// -----------------------------------------------------------------------------

// The Alloc instruction reserves space for a variable of the given type,
// zero-initializes it, and yields its address.
//
// If heap is false, Alloc zero-initializes the same local variable in
// the call frame and returns its address; in this case the Alloc must
// be present in Function.Locals. We call this a "local" alloc.
//
// If heap is true, Alloc allocates a new zero-initialized variable
// each time the instruction is executed. We call this a "new" alloc.
//
// When Alloc is applied to a channel, map or slice type, it returns
// the address of an uninitialized (nil) reference of that kind; store
// the result of MakeSlice, MakeMap or MakeChan in that location to
// instantiate these types.
//
// Example printed form:
//
//	t0 = local int
//	t1 = new int
func (b Builder) Alloc(elem Type, heap bool) (ret Expr) {
	if debugInstr {
		log.Printf("Alloc %v, %v\n", elem.RawType(), heap)
	}
	prog := b.Prog
	pkg := b.Pkg
	size := SizeOf(prog, elem)
	if heap {
		ret = b.InlineCall(pkg.rtFunc("AllocZ"), size)
	} else {
		ret = Expr{llvm.CreateAlloca(b.impl, elem.ll), prog.VoidPtr()}
		ret.impl = b.InlineCall(pkg.rtFunc("Zeroinit"), ret, size).impl
	}
	ret.Type = prog.Pointer(elem)
	return
}

// AllocU allocates uninitialized space for n*sizeof(elem) bytes.
func (b Builder) AllocU(elem Type, n ...int64) (ret Expr) {
	prog := b.Prog
	size := SizeOf(prog, elem, n...)
	ret = b.InlineCall(b.Pkg.rtFunc("AllocU"), size)
	ret.Type = prog.Pointer(elem)
	return
}

// AllocZ allocates zero initialized space for n bytes.
func (b Builder) AllocZ(n Expr) (ret Expr) {
	return b.InlineCall(b.Pkg.rtFunc("AllocZ"), n)
}

// Alloca allocates uninitialized space for n bytes.
func (b Builder) Alloca(n Expr) (ret Expr) {
	if debugInstr {
		log.Printf("Alloca %v\n", n.impl)
	}
	prog := b.Prog
	telem := prog.tyInt8()
	ret.impl = llvm.CreateArrayAlloca(b.impl, telem, n.impl)
	ret.Type = prog.VoidPtr()
	return
}

// AllocaCStr allocates space for copy it from a Go string.
func (b Builder) AllocaCStr(gostr Expr) (ret Expr) {
	if debugInstr {
		log.Printf("AllocaCStr %v\n", gostr.impl)
	}
	n := b.StringLen(gostr)
	n1 := b.BinOp(token.ADD, n, b.Prog.Val(1))
	cstr := b.Alloca(n1)
	return b.InlineCall(b.Pkg.rtFunc("CStrCopy"), cstr, gostr)
}

/*
// ArrayAlloca reserves space for an array of n elements of type telem.
func (b Builder) ArrayAlloca(telem Type, n Expr) (ret Expr) {
	if debugInstr {
		log.Printf("ArrayAlloca %v, %v\n", telem.t, n.impl)
	}
	ret.impl = llvm.CreateArrayAlloca(b.impl, telem.ll, n.impl)
	ret.Type = b.Prog.Pointer(telem)
	return
}
*/

// ArrayAlloc allocates zero initialized space for an array of n elements of type telem.
func (b Builder) ArrayAlloc(telem Type, n Expr) (ret Expr) {
	prog := b.Prog
	elemSize := SizeOf(prog, telem)
	size := b.BinOp(token.MUL, n, elemSize)
	ret.impl = b.AllocZ(size).impl
	ret.Type = prog.Pointer(telem)
	return
}

// -----------------------------------------------------------------------------

// The ChangeType instruction applies to X a value-preserving type
// change to Type().
//
// Type changes are permitted:
//   - between a named type and its underlying type.
//   - between two named types of the same underlying type.
//   - between (possibly named) pointers to identical base types.
//   - from a bidirectional channel to a read- or write-channel,
//     optionally adding/removing a name.
//   - between a type (t) and an instance of the type (tσ), i.e.
//     Type() == σ(X.Type()) (or X.Type()== σ(Type())) where
//     σ is the type substitution of Parent().TypeParams by
//     Parent().TypeArgs.
//
// This operation cannot fail dynamically.
//
// Type changes may to be to or from a type parameter (or both). All
// types in the type set of X.Type() have a value-preserving type
// change to all types in the type set of Type().
//
// Example printed form:
//
//	t1 = changetype *int <- IntPtr (t0)
func (b Builder) ChangeType(t Type, x Expr) (ret Expr) {
	if debugInstr {
		log.Printf("ChangeType %v, %v\n", t.RawType(), x.impl)
	}
	typ := t.raw.Type
	switch typ.(type) {
	default:
		// TODO(xsw): remove instr name
		ret.impl = llvm.CreateBitCast(b.impl, x.impl, t.ll)
		ret.Type = b.Prog.rawType(typ)
		return
	}
}

// The Convert instruction yields the conversion of value X to type
// Type().  One or both of those types is basic (but possibly named).
//
// A conversion may change the value and representation of its operand.
// Conversions are permitted:
//   - between real numeric types.
//   - between complex numeric types.
//   - between string and []byte or []rune.
//   - between pointers and unsafe.Pointer.
//   - between unsafe.Pointer and uintptr.
//   - from (Unicode) integer to (UTF-8) string.
//
// A conversion may imply a type name change also.
//
// Conversions may to be to or from a type parameter. All types in
// the type set of X.Type() can be converted to all types in the type
// set of Type().
//
// This operation cannot fail dynamically.
//
// Conversions of untyped string/number/bool constants to a specific
// representation are eliminated during SSA construction.
//
// Example printed form:
//
//	t1 = convert []byte <- string (t0)
func (b Builder) Convert(t Type, x Expr) (ret Expr) {
	if debugInstr {
		log.Printf("Convert %v <- %v\n", t.RawType(), x.RawType())
	}
	typ := t.raw.Type
	ret.Type = b.Prog.rawType(typ)
	switch typ := typ.Underlying().(type) {
	case *types.Basic:
		switch typ.Kind() {
		case types.Uintptr:
			ret.impl = castUintptr(b, x.impl, t)
			return
		case types.UnsafePointer:
			ret.impl = castPtr(b.impl, x.impl, t.ll)
			return
		case types.String:
			switch xtyp := x.RawType().Underlying().(type) {
			case *types.Slice:
				if etyp, ok := xtyp.Elem().Underlying().(*types.Basic); ok {
					switch etyp.Kind() {
					case types.Byte:
						ret.impl = b.InlineCall(b.Func.Pkg.rtFunc("StringFromBytes"), x).impl
						return
					case types.Rune:
						ret.impl = b.InlineCall(b.Func.Pkg.rtFunc("StringFromRunes"), x).impl
						return
					}
				}
			case *types.Basic:
				if x.Type != b.Prog.Int32() {
					x.Type = b.Prog.Int32()
					x.impl = castInt(b, x.impl, b.Prog.Int32())
				}
				ret.impl = b.InlineCall(b.Func.Pkg.rtFunc("StringFromRune"), x).impl
				return
			}
		}
		switch xtyp := x.RawType().Underlying().(type) {
		case *types.Basic:
			if typ.Info()&types.IsInteger != 0 {
				// int <- int/float
				if xtyp.Info()&types.IsInteger != 0 {
					ret.impl = castInt(b, x.impl, t)
					return
				} else if xtyp.Info()&types.IsFloat != 0 {
					if typ.Info()&types.IsUnsigned != 0 {
						ret.impl = llvm.CreateFPToUI(b.impl, x.impl, t.ll)
					} else {
						ret.impl = llvm.CreateFPToSI(b.impl, x.impl, t.ll)
					}
					return
				}
			} else if typ.Info()&types.IsFloat != 0 {
				// float <- int/float
				if xtyp.Info()&types.IsInteger != 0 {
					if xtyp.Info()&types.IsUnsigned != 0 {
						ret.impl = llvm.CreateUIToFP(b.impl, x.impl, t.ll)
					} else {
						ret.impl = llvm.CreateSIToFP(b.impl, x.impl, t.ll)
					}
					return
				} else if xtyp.Info()&types.IsFloat != 0 {
					ret.impl = castFloat(b, x.impl, t)
					return
				}
			}
		}
	case *types.Pointer:
		ret.impl = castPtr(b.impl, x.impl, t.ll)
		return
	case *types.Slice:
		if x.kind == vkString {
			if etyp, ok := typ.Elem().Underlying().(*types.Basic); ok {
				switch etyp.Kind() {
				case types.Byte:
					ret.impl = b.InlineCall(b.Func.Pkg.rtFunc("StringToBytes"), x).impl
					return
				case types.Rune:
					ret.impl = b.InlineCall(b.Func.Pkg.rtFunc("StringToRunes"), x).impl
					return
				}
			}
		}
	}
	panic("todo")
}

func castUintptr(b Builder, x llvm.Value, typ Type) llvm.Value {
	if x.Type().TypeKind() == llvm.PointerTypeKind {
		return llvm.CreatePtrToInt(b.impl, x, typ.ll)
	}
	return castInt(b, x, typ)
}

func castInt(b Builder, x llvm.Value, typ Type) llvm.Value {
	xsize := b.Prog.td.TypeAllocSize(x.Type())
	size := b.Prog.td.TypeAllocSize(typ.ll)
	if xsize > size {
		return llvm.CreateTrunc(b.impl, x, typ.ll)
	} else if typ.kind == vkUnsigned {
		return llvm.CreateZExt(b.impl, x, typ.ll)
	} else {
		return llvm.CreateSExt(b.impl, x, typ.ll)
	}
}

func castFloat(b Builder, x llvm.Value, typ Type) llvm.Value {
	xsize := b.Prog.td.TypeAllocSize(x.Type())
	size := b.Prog.td.TypeAllocSize(typ.ll)
	if xsize > size {
		return llvm.CreateFPTrunc(b.impl, x, typ.ll)
	} else {
		return llvm.CreateFPExt(b.impl, x, typ.ll)
	}
}

func castPtr(b llvm.Builder, x llvm.Value, t llvm.Type) llvm.Value {
	if x.Type().TypeKind() == llvm.PointerTypeKind {
		return llvm.CreatePointerCast(b, x, t)
	}
	return llvm.CreateIntToPtr(b, x, t)
}

// -----------------------------------------------------------------------------

// TODO(xsw): make inline call
func (b Builder) InlineCall(fn Expr, args ...Expr) (ret Expr) {
	return b.Call(fn, args...)
}

// The Call instruction represents a function call.
//
// The Call instruction yields the function result if there is exactly
// one.  Otherwise it returns a tuple, the components of which are
// accessed via Extract.
//
// Example printed form:
//
//	t2 = println(t0, t1)
//	t4 = t3()
func (b Builder) Call(fn Expr, args ...Expr) (ret Expr) {
	if debugInstr {
		logCall("Call", fn, args)
	}
	var kind = fn.kind
	if kind == vkPyFuncRef {
		return b.pyCall(fn, args)
	}
	var ll llvm.Type
	var data Expr
	var sig *types.Signature
	var prog = b.Prog
	var raw = fn.raw.Type
	switch kind {
	case vkClosure:
		data = b.Field(fn, 1)
		fn = b.Field(fn, 0)
		raw = fn.raw.Type
		fallthrough
	case vkFuncPtr:
		sig = raw.(*types.Signature)
		ll = prog.FuncDecl(sig, InC).ll
	case vkFuncDecl:
		sig = raw.(*types.Signature)
		ll = fn.ll
	default:
		log.Panicf("unreachable: %d(%T)\n", kind, raw)
	}
	ret.Type = prog.retType(sig)
	ret.impl = llvm.CreateCall(b.impl, ll, fn.impl, llvmParamsEx(data, args, sig.Params(), b))
	return
}

func logCall(da string, fn Expr, args []Expr) {
	var b bytes.Buffer
	name := fn.impl.Name()
	if name == "" {
		name = "closure"
	}
	fmt.Fprint(&b, da, " ", fn.kind, " ", fn.raw.Type, " ", name)
	sep := ": "
	for _, arg := range args {
		fmt.Fprint(&b, sep, arg.impl)
		sep = ", "
	}
	log.Println(b.String())
}

type DoAction int

const (
	Call DoAction = iota
	Go
	Defer
)

// Do call a function with an action.
func (b Builder) Do(da DoAction, fn Expr, args ...Expr) (ret Expr) {
	switch da {
	case Call:
		return b.Call(fn, args...)
	case Go:
		b.Go(fn, args...)
	}
	return
}

// The Range instruction yields an iterator over the domain and range
// of X, which must be a string or map.
//
// Elements are accessed via Next.
//
// Type() returns an opaque and degenerate "rangeIter" type.
//
// Pos() returns the ast.RangeStmt.For.
//
// Example printed form:
//
//	t0 = range "hello":string
func (b Builder) Range(x Expr) Expr {
	switch x.kind {
	case vkString:
		return b.InlineCall(b.Pkg.rtFunc("NewStringIter"), x)
	}
	panic("todo")
}

// The Next instruction reads and advances the (map or string)
// iterator Iter and returns a 3-tuple value (ok, k, v).  If the
// iterator is not exhausted, ok is true and k and v are the next
// elements of the domain and range, respectively.  Otherwise ok is
// false and k and v are undefined.
//
// Components of the tuple are accessed using Extract.
//
// The IsString field distinguishes iterators over strings from those
// over maps, as the Type() alone is insufficient: consider
// map[int]rune.
//
// Type() returns a *types.Tuple for the triple (ok, k, v).
// The types of k and/or v may be types.Invalid.
//
// Example printed form:
//
//	t1 = next t0
func (b Builder) Next(iter Expr, isString bool) (ret Expr) {
	if isString {
		return b.InlineCall(b.Pkg.rtFunc("StringIterNext"), iter)
	}
	panic("todo")
}

// A Builtin represents a specific use of a built-in function, e.g. len.
//
// Builtins are immutable values.  Builtins do not have addresses.
//
// `fn` indicates the function: one of the built-in functions from the
// Go spec (excluding "make" and "new").
func (b Builder) BuiltinCall(fn string, args ...Expr) (ret Expr) {
	return b.BuiltinDo(Call, fn, args...)
}

// BuiltinDo call a builtin function with an action.
func (b Builder) BuiltinDo(da DoAction, fn string, args ...Expr) (ret Expr) {
	switch fn {
	case "len":
		if len(args) == 1 {
			arg := args[0]
			switch arg.kind {
			case vkSlice:
				return b.SliceLen(arg)
			case vkString:
				return b.StringLen(arg)
			}
		}
	case "cap":
		if len(args) == 1 {
			arg := args[0]
			switch arg.kind {
			case vkSlice:
				return b.SliceCap(arg)
			}
		}
	case "append":
		if len(args) == 2 {
			src := args[0]
			if src.kind == vkSlice {
				elem := args[1]
				switch elem.kind {
				case vkSlice:
					etSize := b.Prog.SizeOf(b.Prog.Elem(elem.Type))
					ret.Type = src.Type
					ret.impl = b.InlineCall(b.Pkg.rtFunc("SliceAppend"),
						src, b.SliceData(elem), b.SliceLen(elem), b.Prog.Val(int(etSize))).impl
					return
				case vkString:
					etSize := b.Prog.SizeOf(b.Prog.Byte())
					ret.Type = src.Type
					ret.impl = b.InlineCall(b.Pkg.rtFunc("SliceAppend"),
						src, b.StringData(elem), b.StringLen(elem), b.Prog.Val(int(etSize))).impl
					return
				}
			}
		}
	case "print", "println":
		return b.PrintEx(fn == "println", args...)
	case "copy":
		if len(args) == 2 {
			dst := args[0]
			if dst.kind == vkSlice {
				src := args[1]
				prog := b.Prog
				etSize := prog.Val(int(prog.SizeOf(prog.Elem(dst.Type))))
				switch src.kind {
				case vkSlice:
					return b.InlineCall(b.Pkg.rtFunc("SliceCopy"), dst, b.SliceData(src), b.SliceLen(src), etSize)
				case vkString:
					return b.InlineCall(b.Pkg.rtFunc("SliceCopy"), dst, b.StringData(src), b.StringLen(src), etSize)
				}
			}
		}
	case "String": // unsafe.String
		return b.unsafeString(args[0].impl, args[1].impl)
	case "Slice": // unsafe.Slice
		size := args[1].impl
		return b.unsafeSlice(args[0], size, size)
	}
	panic("todo: " + fn)
}

// Println prints the arguments to stderr, followed by a newline.
func (b Builder) Println(args ...Expr) (ret Expr) {
	return b.PrintEx(true, args...)
}

// PrintEx prints the arguments to stderr.
func (b Builder) PrintEx(ln bool, args ...Expr) (ret Expr) {
	prog := b.Prog
	ret.Type = prog.Void()
	for i, arg := range args {
		if ln && i > 0 {
			b.InlineCall(b.Pkg.rtFunc("PrintByte"), prog.IntVal(' ', prog.Byte()))
		}
		var fn string
		typ := arg.Type
		switch arg.kind {
		case vkBool:
			fn = "PrintBool"
		case vkSigned:
			fn = "PrintInt"
			typ = prog.Int64()
		case vkUnsigned:
			fn = "PrintUint"
			typ = prog.Uint64()
		case vkFloat:
			fn = "PrintFloat"
			typ = prog.Float64()
		case vkSlice:
			fn = "PrintSlice"
		case vkClosure:
			arg = b.Field(arg, 0)
			fallthrough
		case vkPtr, vkFuncPtr, vkFuncDecl:
			fn = "PrintPointer"
			typ = prog.VoidPtr()
		case vkString:
			fn = "PrintString"
		case vkEface:
			fn = "PrintEface"
		case vkIface:
			fn = "PrintIface"
		// case vkComplex:
		// 	fn = "PrintComplex"
		default:
			panic(fmt.Errorf("illegal types for operand: print %v", arg.RawType()))
		}
		if typ != arg.Type {
			arg = b.Convert(typ, arg)
		}
		b.InlineCall(b.Pkg.rtFunc(fn), arg)
	}
	if ln {
		b.InlineCall(b.Pkg.rtFunc("PrintByte"), prog.IntVal('\n', prog.Byte()))
	}
	return
}

// -----------------------------------------------------------------------------
