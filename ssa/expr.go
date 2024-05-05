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
	case vkDelayExpr:
		return vt.raw.Type.(delayExprTy)()
	case vkPhisExpr:
		e := vt.raw.Type.(*phisExprTy)
		return b.aggregateValue(e.Type, e.phis...)
	}
	return v
}

// -----------------------------------------------------------------------------

// DelayExpr returns a delay expression.
func DelayExpr(f func() Expr) Expr {
	return Expr{Type: &aType{raw: rawType{delayExprTy(f)}, kind: vkDelayExpr}}
}

type delayExprTy func() Expr

func (p delayExprTy) Underlying() types.Type {
	panic("don't call")
}

func (p delayExprTy) String() string {
	return "delayExpr"
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
	return Expr{Type: &aType{raw: rawType{&phisExprTy{phis, t}}, kind: vkPhisExpr}}
}

// -----------------------------------------------------------------------------

// Null returns a null constant expression.
func (p Program) Null(t Type) Expr {
	return Expr{llvm.ConstNull(t.ll), t}
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
	ret = b.InlineCall(b.fn.pkg.rtFunc("NewString"), cstr, prog.Val(len(v)))
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
				pkg := b.fn.pkg
				return b.InlineCall(pkg.rtFunc("StringCat"), x, y)
			}
		case vkComplex:
		default:
			idx := mathOpIdx(op, kind)
			if llop := mathOpToLLVM[idx]; llop != 0 {
				return Expr{llvm.CreateBinOp(b.impl, llop, x.impl, y.impl), x.Type}
			}
		}
	case isLogicOp(op): // op: & | ^ << >> &^
		if op == token.AND_NOT {
			panic("todo")
		}
		kind := x.kind
		llop := logicOpToLLVM[op-logicOpBase]
		if op == token.SHR && kind == vkUnsigned {
			llop = llvm.LShr // Logical Shift Right
		}
		return Expr{llvm.CreateBinOp(b.impl, llop, x.impl, y.impl), x.Type}
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
		case vkString, vkComplex, vkBool:
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
func (b Builder) UnOp(op token.Token, x Expr) Expr {
	switch op {
	case token.MUL:
		return b.Load(x)
	}
	if debugInstr {
		log.Printf("UnOp %v, %v\n", op, x.impl)
	}
	panic("todo")
}

// -----------------------------------------------------------------------------

func checkExpr(v Expr, t types.Type, b Builder) Expr {
	if _, ok := t.(*types.Struct); ok {
		if v.kind != vkClosure {
			prog := b.Prog
			nilVal := prog.Null(prog.VoidPtr()).impl
			return b.aggregateValue(prog.rawType(t), v.impl, nilVal)
		}
	}
	return v
}

func llvmValues(vals []Expr, params *types.Tuple, b Builder) (ret []llvm.Value) {
	n := params.Len()
	if n > 0 {
		ret = make([]llvm.Value, len(vals))
		for i, v := range vals {
			if i < n {
				v = checkExpr(v, params.At(i).Type(), b)
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

// Advance returns the pointer ptr advanced by offset bytes.
func (b Builder) Advance(ptr Expr, offset Expr) Expr {
	if debugInstr {
		log.Printf("Advance %v, %v\n", ptr.impl, offset.impl)
	}
	ret := llvm.CreateGEP(b.impl, b.Prog.tyInt8(), ptr.impl, []llvm.Value{offset.impl})
	return Expr{ret, ptr.Type}
}

// Load returns the value at the pointer ptr.
func (b Builder) Load(ptr Expr) Expr {
	if debugInstr {
		log.Printf("Load %v\n", ptr.impl)
	}
	telem := b.Prog.Elem(ptr.Type)
	return Expr{llvm.CreateLoad(b.impl, telem.ll, ptr.impl), telem}
}

// Store stores val at the pointer ptr.
func (b Builder) Store(ptr, val Expr) Builder {
	if debugInstr {
		log.Printf("Store %v, %v\n", ptr.impl, val.impl)
	}
	b.impl.CreateStore(val.impl, ptr.impl)
	return b
}

// aggregateValue yields the value of the aggregate X with the fields
func (b Builder) aggregateValue(t Type, flds ...llvm.Value) Expr {
	if debugInstr {
		log.Printf("AggregateValue %v, %v\n", t.RawType(), flds)
	}
	impl := b.impl
	tll := t.ll
	ptr := llvm.CreateAlloca(impl, tll)
	for i, fld := range flds {
		impl.CreateStore(fld, llvm.CreateStructGEP(impl, tll, ptr, i))
	}
	return Expr{llvm.CreateLoad(b.impl, tll, ptr), t}
}

/*
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
	panic("todo")
}
*/

// The FieldAddr instruction yields the address of Field of *struct X.
//
// The field is identified by its index within the field list of the
// struct type of X.
//
// Dynamically, this instruction panics if X evaluates to a nil
// pointer.
//
// Type() returns a (possibly named) *types.Pointer.
//
// Example printed form:
//
//	t1 = &t0.name [#1]
func (b Builder) FieldAddr(x Expr, idx int) Expr {
	if debugInstr {
		log.Printf("FieldAddr %v, %d\n", x.impl, idx)
	}
	prog := b.Prog
	tstruc := prog.Elem(x.Type)
	telem := prog.Field(tstruc, idx)
	pt := prog.Pointer(telem)
	return Expr{llvm.CreateStructGEP(b.impl, tstruc.ll, x.impl, idx), pt}
}

// The Field instruction yields the value of Field of struct X.
func (b Builder) Field(x Expr, idx int) Expr {
	if debugInstr {
		log.Printf("Field %v, %d\n", x.impl, idx)
	}
	tfld := b.Prog.Field(x.Type, idx)
	fld := llvm.CreateExtractValue(b.impl, x.impl, idx)
	return Expr{fld, tfld}
}

// The IndexAddr instruction yields the address of the element at
// index `idx` of collection `x`.  `idx` is an integer expression.
//
// The elements of maps and strings are not addressable; use Lookup (map),
// Index (string), or MapUpdate instead.
//
// Dynamically, this instruction panics if `x` evaluates to a nil *array
// pointer.
//
// Example printed form:
//
//	t2 = &t0[t1]
func (b Builder) IndexAddr(x, idx Expr) Expr {
	if debugInstr {
		log.Printf("IndexAddr %v, %v\n", x.impl, idx.impl)
	}
	prog := b.Prog
	telem := prog.Index(x.Type)
	pt := prog.Pointer(telem)
	switch x.raw.Type.Underlying().(type) {
	case *types.Slice:
		pkg := b.fn.pkg
		ptr := b.InlineCall(pkg.rtFunc("SliceData"), x)
		indices := []llvm.Value{idx.impl}
		return Expr{llvm.CreateInBoundsGEP(b.impl, telem.ll, ptr.impl, indices), pt}
	}
	// case *types.Pointer:
	indices := []llvm.Value{idx.impl}
	return Expr{llvm.CreateInBoundsGEP(b.impl, telem.ll, x.impl, indices), pt}
}

// The Index instruction yields element Index of collection X, an array,
// string or type parameter containing an array, a string, a pointer to an,
// array or a slice.
//
// Example printed form:
//
//	t2 = t0[t1]
func (b Builder) Index(x, idx Expr, addr func(Expr) Expr) Expr {
	if debugInstr {
		log.Printf("Index %v, %v\n", x.impl, idx.impl)
	}
	prog := b.Prog
	var telem Type
	var ptr Expr
	switch t := x.raw.Type.Underlying().(type) {
	case *types.Basic:
		if t.Kind() != types.String {
			panic(fmt.Errorf("invalid operation: cannot index %v", t))
		}
		telem = prog.rawType(types.Typ[types.Byte])
		pkg := b.fn.pkg
		ptr = b.InlineCall(pkg.rtFunc("StringData"), x)
	case *types.Array:
		telem = prog.Index(x.Type)
		if addr != nil {
			ptr = addr(x)
		} else {
			size := b.SizeOf(telem, t.Len())
			ptr = b.Alloca(size)
			b.Store(ptr, x)
		}
	}
	pt := prog.Pointer(telem)
	indices := []llvm.Value{idx.impl}
	buf := Expr{llvm.CreateInBoundsGEP(b.impl, telem.ll, ptr.impl, indices), pt}
	return b.Load(buf)
}

// The Slice instruction yields a slice of an existing string, slice
// or *array X between optional integer bounds Low and High.
//
// Dynamically, this instruction panics if X evaluates to a nil *array
// pointer.
//
// Type() returns string if the type of X was string, otherwise a
// *types.Slice with the same element type as X.
//
// Example printed form:
//
//	t1 = slice t0[1:]
func (b Builder) Slice(x, low, high, max Expr) (ret Expr) {
	if debugInstr {
		log.Printf("Slice %v, %v, %v\n", x.impl, low.impl, high.impl)
	}
	prog := b.Prog
	pkg := b.fn.pkg
	var nCap Expr
	var nEltSize Expr
	var base Expr
	if low.IsNil() {
		low = prog.IntVal(0, prog.Int())
	}
	switch t := x.raw.Type.Underlying().(type) {
	case *types.Basic:
		if t.Kind() != types.String {
			panic(fmt.Errorf("invalid operation: cannot slice %v", t))
		}
		if high.IsNil() {
			high = b.InlineCall(pkg.rtFunc("StringLen"), x)
		}
		ret.Type = x.Type
		ret.impl = b.InlineCall(pkg.rtFunc("NewStringSlice"), x, low, high).impl
		return
	case *types.Slice:
		nEltSize = b.SizeOf(prog.Index(x.Type))
		nCap = b.InlineCall(pkg.rtFunc("SliceCap"), x)
		if high.IsNil() {
			high = b.InlineCall(pkg.rtFunc("SliceLen"), x)
		}
		ret.Type = x.Type
		base = b.InlineCall(pkg.rtFunc("SliceData"), x)
	case *types.Pointer:
		telem := t.Elem()
		switch te := telem.Underlying().(type) {
		case *types.Array:
			elem := prog.rawType(te.Elem())
			ret.Type = prog.Slice(elem)
			nEltSize = b.SizeOf(elem)
			nCap = prog.IntVal(uint64(te.Len()), prog.Int())
			if high.IsNil() {
				high = nCap
			}
			base = x
		}
	}
	if max.IsNil() {
		max = nCap
	}
	ret.impl = b.InlineCall(pkg.rtFunc("NewSlice3"), base, nEltSize, nCap, low, high, max).impl
	return
}

// -----------------------------------------------------------------------------

// The MakeMap instruction creates a new hash-table-based map object
// and yields a value of kind map.
//
// t is a (possibly named) *types.Map.
//
// Example printed form:
//
//	t1 = make map[string]int t0
//	t1 = make StringIntMap t0
func (b Builder) MakeMap(t Type, nReserve Expr) (ret Expr) {
	if debugInstr {
		log.Printf("MakeMap %v, %v\n", t.RawType(), nReserve.impl)
	}
	pkg := b.fn.pkg
	ret.Type = t
	ret.impl = b.InlineCall(pkg.rtFunc("MakeSmallMap")).impl
	// TODO(xsw): nReserve
	return
}

// The MakeSlice instruction yields a slice of length Len backed by a
// newly allocated array of length Cap.
//
// Both Len and Cap must be non-nil Values of integer type.
//
// (Alloc(types.Array) followed by Slice will not suffice because
// Alloc can only create arrays of constant length.)
//
// Type() returns a (possibly named) *types.Slice.
//
// Example printed form:
//
//	t1 = make []string 1:int t0
//	t1 = make StringSlice 1:int t0
func (b Builder) MakeSlice(t Type, len, cap Expr) (ret Expr) {
	if debugInstr {
		log.Printf("MakeSlice %v, %v, %v\n", t.RawType(), len.impl, cap.impl)
	}
	pkg := b.fn.pkg
	if cap.IsNil() {
		cap = len
	}
	elemSize := b.SizeOf(b.Prog.Index(t))
	size := b.BinOp(token.MUL, cap, elemSize)
	ptr := b.InlineCall(pkg.rtFunc("AllocZ"), size)
	ret.impl = b.InlineCall(pkg.rtFunc("NewSlice"), ptr, len, cap).impl
	ret.Type = t
	return
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
	pkg := b.fn.pkg
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
	pkg := b.fn.pkg
	n := b.InlineCall(pkg.rtFunc("StringLen"), gostr)
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
	typ := t.raw.Type
	ret.Type = b.Prog.rawType(typ)
	switch und := typ.Underlying().(type) {
	case *types.Basic:
		kind := und.Kind()
		switch {
		case kind >= types.Int && kind <= types.Uintptr:
			ret.impl = castInt(b.impl, x.impl, t.ll)
			return
		case kind == types.UnsafePointer:
			ret.impl = castPtr(b.impl, x.impl, t.ll)
			return
		}
	case *types.Pointer:
		ret.impl = castPtr(b.impl, x.impl, t.ll)
		return
	}
	panic("todo")
}

func castInt(b llvm.Builder, x llvm.Value, t llvm.Type) llvm.Value {
	xt := x.Type()
	if xt.TypeKind() == llvm.PointerTypeKind {
		return llvm.CreatePtrToInt(b, x, t)
	}
	if xt.IntTypeWidth() <= t.IntTypeWidth() {
		return llvm.CreateIntCast(b, x, t)
	}
	return llvm.CreateTrunc(b, x, t)
}

func castPtr(b llvm.Builder, x llvm.Value, t llvm.Type) llvm.Value {
	if x.Type().TypeKind() == llvm.PointerTypeKind {
		return llvm.CreatePointerCast(b, x, t)
	}
	return llvm.CreateIntToPtr(b, x, t)
}

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
func (b Builder) MakeInterface(tinter Type, x Expr, mayDelay bool) (ret Expr) {
	raw := tinter.raw.Type
	if debugInstr {
		log.Printf("MakeInterface %v, %v\n", raw, x.impl)
	}
	tiund := raw.Underlying().(*types.Interface)
	isAny := tiund.Empty()
	fnDo := func() Expr {
		prog := b.Prog
		pkg := b.fn.pkg
		switch tx := x.raw.Type.Underlying().(type) {
		case *types.Basic:
			kind := tx.Kind()
			switch {
			case kind >= types.Int && kind <= types.Uintptr:
				t := b.InlineCall(pkg.rtFunc("Basic"), prog.Val(int(kind)))
				tptr := prog.Uintptr()
				vptr := Expr{llvm.CreateIntCast(b.impl, x.impl, tptr.ll), tptr}
				return Expr{b.InlineCall(pkg.rtFunc("MakeAnyInt"), t, vptr).impl, tinter}
			case kind == types.String:
				return Expr{b.InlineCall(pkg.rtFunc("MakeAnyString"), x).impl, tinter}
			}
		}
		panic("todo")
	}
	if mayDelay && isAny {
		return DelayExpr(fnDo)
	}
	return fnDo()
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
	case vkSigned, vkUnsigned, vkFloat:
		pkg := b.fn.pkg
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
		return b.InlineCall(fn, x, typ)
	}
	panic("todo")
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
	prog := b.Prog
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
	var sig *types.Signature
	var raw = fn.raw.Type
	switch fn.kind {
	case vkClosure:
		fn := b.Field(fn, 0)
		raw = fn.raw.Type
		fallthrough
	case vkFunc:
		sig = raw.(*types.Signature)
		ret.Type = prog.retType(sig)
	default:
		panic("unreachable")
	}
	ret.impl = llvm.CreateCall(b.impl, fn.ll, fn.impl, llvmValues(args, sig.Params(), b))
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
			switch t := arg.raw.Type.Underlying().(type) {
			case *types.Slice:
				return b.InlineCall(b.fn.pkg.rtFunc("SliceLen"), arg)
			case *types.Basic:
				if t.Kind() == types.String {
					return b.InlineCall(b.fn.pkg.rtFunc("StringLen"), arg)
				}
			}
		}
	case "cap":
		if len(args) == 1 {
			arg := args[0]
			switch arg.raw.Type.Underlying().(type) {
			case *types.Slice:
				return b.InlineCall(b.fn.pkg.rtFunc("SliceCap"), arg)
			}
		}
	}
	panic("todo")
}

// -----------------------------------------------------------------------------
