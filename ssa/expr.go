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

// Do evaluates the delay expression and returns the result.
func (v Expr) Do(b Builder) Expr {
	switch vt := v.Type; vt.kind {
	case vkPhisExpr:
		e := vt.raw.Type.(*phisExprTy)
		return b.aggregateValue(e.Type, e.phis...)
	}
	return v
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

type phisExprTy struct {
	phis []llvm.Value
	Type
}

func (p phisExprTy) Underlying() types.Type {
	panic("don't call")
}

func (p phisExprTy) String() string {
	return "phisExpr"
}

func phisExpr(t Type, phis []llvm.Value) Expr {
	tphi := &aType{raw: rawType{&phisExprTy{phis, t}}, kind: vkPhisExpr}
	return Expr{Type: tphi}
}

// -----------------------------------------------------------------------------

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
	switch t := raw.(type) {
	case *types.Basic:
		kind := t.Kind()
		switch {
		case kind == types.Bool:
			return prog.BoolVal(constant.BoolVal(v))
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
			return b.Str(constant.StringVal(v))
		}
	}
	panic(fmt.Sprintf("unsupported Const: %v, %v", v, raw))
}

// SizeOf returns the size of a type.
func (b Builder) SizeOf(t Type, n ...int64) Expr {
	prog := b.Prog
	size := prog.SizeOf(t, n...)
	return prog.IntVal(size, prog.Uintptr())
}

// CStr returns a c-style string constant expression.
func (b Builder) CStr(v string) Expr {
	return Expr{llvm.CreateGlobalStringPtr(b.impl, v), b.Prog.CStr()}
}

// Str returns a Go string constant expression.
func (b Builder) Str(v string) (ret Expr) {
	prog := b.Prog
	cstr := b.CStr(v)
	ret = b.InlineCall(b.Func.Pkg.rtFunc("NewString"), cstr, prog.Val(len(v)))
	ret.Type = prog.String()
	return
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
	token.NEQ - predOpBase: llvm.FloatONE,
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
				pkg := b.Func.Pkg
				return Expr{b.InlineCall(pkg.rtFunc("StringCat"), x, y).impl, x.Type}
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
			return Expr{b.impl.CreateAnd(x.impl, b.impl.CreateNot(y.impl, ""), ""), x.Type}
		case token.SHL, token.SHR:
			if needsNegativeCheck(y) {
				check := Expr{b.impl.CreateICmp(llvm.IntSLT, y.impl, llvm.ConstInt(y.ll, 0, false), ""), b.Prog.Bool()}
				b.InlineCall(b.Func.Pkg.rtFunc("AssertNegativeShift"), check)
			}
			xsize, ysize := b.Prog.SizeOf(x.Type), b.Prog.SizeOf(y.Type)
			if xsize != ysize {
				y = b.Convert(x.Type, y)
			}
			overflows := b.impl.CreateICmp(llvm.IntUGE, y.impl, llvm.ConstInt(y.ll, xsize*8, false), "")
			xzero := llvm.ConstInt(x.ll, 0, false)
			if op == token.SHL {
				rhs := b.impl.CreateShl(x.impl, y.impl, "")
				return Expr{b.impl.CreateSelect(overflows, xzero, rhs, ""), x.Type}
			} else {
				if x.kind == vkSigned {
					rhs := b.impl.CreateSelect(overflows, llvm.ConstInt(y.ll, 8*xsize-1, false), y.impl, "")
					return Expr{b.impl.CreateAShr(x.impl, rhs, ""), x.Type}
				} else {
					rsh := b.impl.CreateLShr(x.impl, y.impl, "")
					return Expr{b.impl.CreateSelect(overflows, xzero, rsh, ""), x.Type}
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
			panic("todo")
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
		switch t := x.Type.raw.Underlying().(type) {
		case *types.Basic:
			ret.Type = x.Type
			if t.Info()&types.IsInteger != 0 {
				ret.impl = b.impl.CreateNeg(x.impl, "")
			} else if t.Info()&types.IsFloat != 0 {
				ret.impl = b.impl.CreateFNeg(x.impl, "")
			} else {
				panic("todo")
			}
		default:
			panic("unreachable")
		}
	case token.NOT:
		ret.Type = x.Type
		ret.impl = b.impl.CreateNot(x.impl, "")
	case token.XOR:
		ret.Type = x.Type
		ret.impl = b.impl.CreateXor(x.impl, llvm.ConstInt(x.Type.ll, ^uint64(0), false), "")
	case token.ARROW:
		panic("todo")
	}
	return
}

// -----------------------------------------------------------------------------

func checkExpr(v Expr, t types.Type, b Builder) Expr {
	if t, ok := t.(*types.Struct); ok && isClosure(t) {
		if v.kind != vkClosure {
			return b.Func.Pkg.closureStub(b, t, v)
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

func llvmDelayValues(f func(i int) Expr, n int) []llvm.Value {
	ret := make([]llvm.Value, n)
	for i := 0; i < n; i++ {
		ret[i] = f(i).impl
	}
	return ret
}

func llvmBlocks(bblks []BasicBlock) []llvm.BasicBlock {
	ret := make([]llvm.BasicBlock, len(bblks))
	for i, v := range bblks {
		ret[i] = v.impl
	}
	return ret
}

// Phi represents a phi node.
type Phi struct {
	Expr
}

// AddIncoming adds incoming values to a phi node.
func (p Phi) AddIncoming(b Builder, bblks []BasicBlock, f func(i int) Expr) {
	bs := llvmBlocks(bblks)
	if p.kind != vkPhisExpr { // normal phi node
		vs := llvmDelayValues(f, len(bblks))
		p.impl.AddIncoming(vs, bs)
		return
	}
	e := p.raw.Type.(*phisExprTy)
	phis := e.phis
	vals := make([][]llvm.Value, len(phis))
	for iblk, blk := range bblks {
		last := blk.impl.LastInstruction()
		b.impl.SetInsertPointBefore(last)
		impl := b.impl
		val := f(iblk).impl
		for i := range phis {
			if iblk == 0 {
				vals[i] = make([]llvm.Value, len(bblks))
			}
			vals[i][iblk] = llvm.CreateExtractValue(impl, val, i)
		}
	}
	for i, phi := range phis {
		phi.AddIncoming(vals[i], bs)
	}
}

// Phi returns a phi node.
func (b Builder) Phi(t Type) Phi {
	impl := b.impl
	switch tund := t.raw.Type.Underlying().(type) {
	case *types.Basic:
		kind := tund.Kind()
		switch kind {
		case types.String:
			prog := b.Prog
			phis := make([]llvm.Value, 2)
			phis[0] = llvm.CreatePHI(impl, prog.tyVoidPtr())
			phis[1] = llvm.CreatePHI(impl, prog.tyInt())
			return Phi{phisExpr(t, phis)}
		}
	case *types.Struct:
		panic("todo")
	}
	phi := llvm.CreatePHI(impl, t.ll)
	return Phi{Expr{phi, t}}
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
	pkg := b.Func.Pkg
	size := prog.SizeOf(t)
	ptr := b.InlineCall(pkg.rtFunc("AllocU"), prog.IntVal(size, prog.Uintptr())).impl
	tll := t.ll
	impl := b.impl
	for i, fld := range flds {
		impl.CreateStore(fld, llvm.CreateStructGEP(impl, tll, ptr, i))
	}
	return ptr
}

// aggregateValue yields the value of the aggregate X with the fields
func (b Builder) aggregateValue(t Type, flds ...llvm.Value) Expr {
	tll := t.ll
	impl := b.impl
	ptr := llvm.CreateAlloca(impl, tll)
	for i, fld := range flds {
		impl.CreateStore(fld, llvm.CreateStructGEP(impl, tll, ptr, i))
	}
	return Expr{llvm.CreateLoad(b.impl, tll, ptr), t}
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
	pkg := b.Func.Pkg
	size := b.SizeOf(elem)
	if heap {
		ret = b.InlineCall(pkg.rtFunc("AllocZ"), size)
	} else {
		ret = Expr{llvm.CreateAlloca(b.impl, elem.ll), prog.VoidPtr()}
		ret.impl = b.InlineCall(pkg.rtFunc("Zeroinit"), ret, size).impl
	}
	ret.Type = prog.Pointer(elem)
	return
}

// Alloca allocates space for n bytes.
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

// AllocaCStr allocates space for copy it from a Go string.
func (b Builder) AllocaCStr(gostr Expr) (ret Expr) {
	if debugInstr {
		log.Printf("AllocaCStr %v\n", gostr.impl)
	}
	pkg := b.Func.Pkg
	n := b.StringLen(gostr)
	n1 := b.BinOp(token.ADD, n, b.Prog.Val(1))
	cstr := b.Alloca(n1)
	return b.InlineCall(pkg.rtFunc("CStrCopy"), cstr, gostr)
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
		ret.impl = b.impl.CreateBitCast(x.impl, t.ll, "bitCast")
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
						ret.impl = b.impl.CreateFPToUI(x.impl, t.ll, "")
					} else {
						ret.impl = b.impl.CreateFPToSI(x.impl, t.ll, "")
					}
					return
				}
			} else if typ.Info()&types.IsFloat != 0 {
				// float <- int/float
				if xtyp.Info()&types.IsInteger != 0 {
					if xtyp.Info()&types.IsUnsigned != 0 {
						ret.impl = b.impl.CreateUIToFP(x.impl, t.ll, "")
					} else {
						ret.impl = b.impl.CreateSIToFP(x.impl, t.ll, "")
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
		return b.impl.CreateTrunc(x, typ.ll, "")
	} else if typ.kind == vkUnsigned {
		return b.impl.CreateZExt(x, typ.ll, "")
	} else {
		return b.impl.CreateSExt(x, typ.ll, "")
	}
}

func castFloat(b Builder, x llvm.Value, typ Type) llvm.Value {
	xsize := b.Prog.td.TypeAllocSize(x.Type())
	size := b.Prog.td.TypeAllocSize(typ.ll)
	if xsize > size {
		return b.impl.CreateFPTrunc(x, typ.ll, "")
	} else {
		return b.impl.CreateFPExt(x, typ.ll, "")
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

// The Call instruction represents a function or method call.
//
// The Call instruction yields the function result if there is exactly
// one.  Otherwise it returns a tuple, the components of which are
// accessed via Extract.
//
// Example printed form:
//
//	t2 = println(t0, t1)
//	t4 = t3()
//	t7 = invoke t5.Println(...t6)
func (b Builder) Call(fn Expr, args ...Expr) (ret Expr) {
	if debugInstr {
		var b bytes.Buffer
		name := fn.impl.Name()
		if name == "" {
			name = "closure"
		}
		fmt.Fprint(&b, "Call ", fn.kind, " ", fn.raw.Type, " ", name)
		sep := ": "
		for _, arg := range args {
			fmt.Fprint(&b, sep, arg.impl)
			sep = ", "
		}
		log.Println(b.String())
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
		panic("unreachable")
	}
	ret.Type = prog.retType(sig)
	ret.impl = llvm.CreateCall(b.impl, ll, fn.impl, llvmParamsEx(data, args, sig.Params(), b))
	return
}

// The Extract instruction yields component Index of Tuple.
//
// This is used to access the results of instructions with multiple
// return values, such as Call, TypeAssert, Next, UnOp(ARROW) and
// IndexExpr(Map).
//
// Example printed form:
//
//	t1 = extract t0 #1
func (b Builder) Extract(x Expr, index int) (ret Expr) {
	ret.Type = b.Prog.toType(x.Type.raw.Type.(*types.Tuple).At(index).Type())
	ret.impl = b.impl.CreateExtractValue(x.impl, index, "")
	return
}

// A Builtin represents a specific use of a built-in function, e.g. len.
//
// Builtins are immutable values.  Builtins do not have addresses.
//
// `fn` indicates the function: one of the built-in functions from the
// Go spec (excluding "make" and "new").
func (b Builder) BuiltinCall(fn string, args ...Expr) (ret Expr) {
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
					ret.impl = b.InlineCall(b.Func.Pkg.rtFunc("SliceAppend"),
						src, b.SliceData(elem), b.SliceLen(elem), b.Prog.Val(int(etSize))).impl
					return
				case vkString:
					etSize := b.Prog.SizeOf(b.Prog.Byte())
					ret.Type = src.Type
					ret.impl = b.InlineCall(b.Func.Pkg.rtFunc("SliceAppend"),
						src, b.StringData(elem), b.StringLen(elem), b.Prog.Val(int(etSize))).impl
					return
				}
			}
		}
	case "print", "println":
		ln := fn == "println"
		ret.Type = b.Prog.Void()
		for i, arg := range args {
			if ln && i > 0 {
				b.InlineCall(b.Func.Pkg.rtFunc("PrintString"), b.Str(" "))
			}
			var fn string
			var typ Type
			switch arg.kind {
			case vkBool:
				fn = "PrintBool"
			case vkSigned:
				fn = "PrintInt"
				typ = b.Prog.Int64()
			case vkUnsigned:
				fn = "PrintUint"
				typ = b.Prog.Uint64()
			case vkFloat:
				fn = "PrintFloat"
				typ = b.Prog.Float64()
			case vkSlice:
				fn = "PrintSlice"
			case vkPtr, vkFuncPtr, vkFuncDecl, vkClosure, vkPyVarRef, vkPyFuncRef:
				fn = "PrintPointer"
				typ = b.Prog.VoidPtr()
			case vkString:
				fn = "PrintString"
			case vkInterface:
				fn = "PrintIface"
			// case vkComplex:
			// 	fn = "PrintComplex"
			default:
				panic(fmt.Errorf("illegal types for operand: print %v", arg.RawType()))
			}
			if typ != nil && typ != arg.Type {
				arg = b.Convert(typ, arg)
			}
			b.InlineCall(b.Func.Pkg.rtFunc(fn), arg)
		}
		if ln {
			b.InlineCall(b.Func.Pkg.rtFunc("PrintString"), b.Str("\n"))
		}
		return
	}
	panic("todo")
}

// -----------------------------------------------------------------------------
