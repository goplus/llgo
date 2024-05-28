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
	"unsafe"

	"github.com/goplus/llgo/ssa/abi"
	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------

// abiBasic returns the abi type of the specified basic kind.
func (b Builder) abiBasic(t *types.Basic) Expr {
	/*
		TODO(xsw):
		return b.abiExtern(abi.BasicName(t))
	*/
	kind := int(abi.BasicKind(t))
	return b.InlineCall(b.Pkg.rtFunc("Basic"), b.Prog.Val(kind))
}

/*
func (b Builder) abiExtern(name string) Expr {
	g := b.Pkg.NewVarFrom(name, b.Prog.AbiTypePtrPtr())
	return b.Load(g.Expr)
}
*/

func (b Builder) abiTypeOf(t types.Type) Expr {
	switch t := t.(type) {
	case *types.Basic:
		return b.abiBasic(t)
	case *types.Pointer:
		return b.abiPointerOf(t)
	case *types.Struct:
		return b.abiStructOf(t)
	case *types.Named:
		return b.abiNamedOf(t)
	case *types.Interface:
		return b.abiInterfaceOf(t)
	case *types.Signature:
		return b.abiFuncOf(t)
	case *types.Slice:
		return b.abiSliceOf(t)
	case *types.Array:
		return b.abiArrayOf(t)
	}
	panic("todo")
}

func (b Builder) abiTupleOf(t *types.Tuple) Expr {
	n := t.Len()
	prog := b.Prog
	tSlice := prog.Slice(prog.AbiTypePtr())
	tuple := make([]Expr, n)
	for i := 0; i < n; i++ {
		tuple[i] = b.abiType(t.At(i).Type())
	}
	return b.SliceLit(tSlice, tuple...)
}

// func Func(in, out []*Type, variadic bool)
func (b Builder) abiFuncOf(sig *types.Signature) Expr {
	prog := b.Prog
	pkg := b.Pkg
	fn := pkg.rtFunc("Func")
	params := b.abiTupleOf(sig.Params())
	results := b.abiTupleOf(sig.Results())
	variadic := prog.Val(sig.Variadic())
	return b.Call(fn, params, results, variadic)
}

// Imethod{name string, typ *FuncType}
func (b Builder) abiImethodOf(m *types.Func) Expr {
	prog := b.Prog
	name := b.Str(m.Name())
	typ := b.abiType(m.Type())
	tname, _ := b.Pkg.abi.TypeName(m.Type())
	log.Println("==> abiImethodOf:", m.Name(), m.Type(), tname)
	b.Println(b.Str("==> abiImethodOf:"), typ)
	return b.aggregateValue(prog.rtType("Imethod"), name.impl, typ.impl)
}

// Method{name string, typ *FuncType, ifn, tfn abi.Text}
func (b Builder) abiMethodOf(m *types.Func /*, bg Background = InGo */) (mthd, ptrMthd Expr) {
	prog := b.Prog
	mPkg, mName := m.Pkg(), m.Name()
	mSig := m.Type().(*types.Signature)

	name := b.Str(mName).impl
	abiSigGo := types.NewSignatureType(nil, nil, nil, mSig.Params(), mSig.Results(), mSig.Variadic())
	abiSig := prog.FuncDecl(abiSigGo, InGo).raw.Type
	abiTyp := b.abiType(abiSig)
	tname, _ := b.Pkg.abi.TypeName(abiSig)
	log.Println("==> abiMethodOf:", mName, abiSigGo, tname)
	b.Println(b.Str("==> abiMethodOf:"), abiTyp)
	abiTypImpl := abiTyp.impl

	recv := mSig.Recv()
	recvType := recv.Type()
	if _, ok := recvType.(*types.Pointer); ok {
		ptrMthd, _ = b.abiMthd(mPkg, mName, mSig, name, abiTypImpl, llvm.Value{})
		return
	}
	ptrRecv := types.NewVar(0, nil, "", types.NewPointer(recvType))
	ptrSig := types.NewSignatureType(ptrRecv, nil, nil, mSig.Params(), mSig.Results(), mSig.Variadic())
	ptrMthd, ifn := b.abiMthd(mPkg, mName, ptrSig, name, abiTypImpl, llvm.Value{})
	mthd, _ = b.abiMthd(mPkg, mName, mSig, name, abiTypImpl, ifn)
	return
}

func (b Builder) abiMthd(mPkg *types.Package, mName string, mSig *types.Signature, name, abiTyp, ifn llvm.Value) (ret Expr, tfn llvm.Value) {
	fullName := FuncName(mPkg, mName, mSig.Recv())
	tfn = b.Pkg.NewFunc(fullName, mSig, InGo).impl // TODO(xsw): use rawType to speed up
	if ifn.IsNil() {
		ifn = tfn
	}
	ret = b.aggregateValue(b.Prog.rtType("Method"), name, abiTyp, ifn, tfn)
	return
}

// func Interface(pkgPath string, methods []abi.Imethod)
func (b Builder) abiInterfaceOf(t *types.Interface) Expr {
	prog := b.Prog
	n := t.NumMethods()
	methods := make([]Expr, n)
	for i := 0; i < n; i++ {
		m := t.Method(i)
		methods[i] = b.abiImethodOf(m)
	}
	pkg := b.Pkg
	fn := pkg.rtFunc("Interface")
	pkgPath := pkg.Path()
	tSlice := lastParamType(prog, fn)
	methodSlice := b.SliceLit(tSlice, methods...)
	return b.Call(fn, b.Str(pkgPath), methodSlice)
}

// func Named(pkgPath, name string, underlying *Type, methods, ptrMethods []abi.Method)
func (b Builder) abiNamedOf(t *types.Named) Expr {
	under := b.abiType(t.Underlying())
	path := abi.PathOf(t.Obj().Pkg())
	name := NameOf(t)
	prog := b.Prog
	pkg := b.Pkg

	var fn = pkg.rtFunc("Named")
	var tSlice = lastParamType(prog, fn)
	var n = t.NumMethods()
	var methods, ptrMethods Expr
	if n == 0 {
		methods = prog.Zero(tSlice)
		ptrMethods = methods
	} else {
		var mthds []Expr
		var ptrMthds = make([]Expr, 0, n)
		for i := 0; i < n; i++ {
			m := t.Method(i)
			mthd, ptrMthd := b.abiMethodOf(m)
			if !mthd.IsNil() {
				mthds = append(mthds, mthd)
			}
			ptrMthds = append(ptrMthds, ptrMthd)
		}
		if len(mthds) > 0 {
			methods = b.SliceLit(tSlice, mthds...)
		} else {
			methods = prog.Zero(tSlice)
		}
		ptrMethods = b.SliceLit(tSlice, ptrMthds...)
	}
	return b.Call(fn, b.Str(path), b.Str(name), under, methods, ptrMethods)
}

func (b Builder) abiPointerOf(t *types.Pointer) Expr {
	elem := b.abiType(t.Elem())
	return b.Call(b.Pkg.rtFunc("PointerTo"), elem)
}

func (b Builder) abiSliceOf(t *types.Slice) Expr {
	elem := b.abiTypeOf(t.Elem())
	return b.Call(b.Pkg.rtFunc("SliceOf"), elem)
}

func (b Builder) abiArrayOf(t *types.Array) Expr {
	elem := b.abiTypeOf(t.Elem())
	return b.Call(b.Pkg.rtFunc("ArrayOf"), b.Prog.IntVal(uint64(t.Len()), b.Prog.Uintptr()), elem)
}

// func Struct(pkgPath string, size uintptr, fields []abi.StructField)
func (b Builder) abiStructOf(t *types.Struct) Expr {
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
	pkgPath := b.Str(pkg.Path())
	tSlice := lastParamType(prog, strucAbi)
	fldSlice := b.SliceLit(tSlice, flds...)
	size := prog.IntVal(prog.SizeOf(typ), prog.Uintptr())
	return b.Call(strucAbi, pkgPath, size, fldSlice)
}

func lastParamType(prog Program, fn Expr) Type {
	params := fn.raw.Type.(*types.Signature).Params()
	return prog.rawType(params.At(params.Len() - 1).Type())
}

// func StructField(name string, typ *abi.Type, off uintptr, tag string, embedded bool) abi.StructField
func (b Builder) structField(sfAbi Expr, prog Program, f *types.Var, offset uintptr, tag string) Expr {
	name := b.Str(f.Name())
	typ := b.abiType(f.Type())
	embedded := prog.Val(f.Embedded())
	return b.Call(sfAbi, name, typ, prog.Val(offset), b.Str(tag), embedded)
}

// abiType returns the abi type of the specified type.
func (b Builder) abiType(t types.Type) Expr {
	switch tx := t.(type) {
	case *types.Basic:
		return b.abiBasic(tx)
	}
	pkg := b.Pkg
	name, pub := pkg.abi.TypeName(t)
	g := pkg.VarOf(name)
	if g == nil {
		prog := b.Prog
		g = pkg.doNewVar(name, prog.AbiTypePtrPtr())
		g.Init(prog.Null(g.Type))
		if pub {
			g.impl.SetLinkage(llvm.LinkOnceAnyLinkage)
		}
		pkg.abiini = append(pkg.abiini, func(param unsafe.Pointer) {
			b := Builder(param)
			expr := g.Expr
			var blks []BasicBlock
			if pub {
				eq := b.BinOp(token.EQL, b.Load(expr), b.Prog.Null(expr.Type))
				blks = b.Func.MakeBlocks(2)
				b.If(eq, blks[0], blks[1])
				b.SetBlockEx(blks[0], AtEnd, false)
			}
			tabi := b.abiTypeOf(t)
			b.Store(expr, tabi)
			if pub {
				b.Jump(blks[1])
				b.SetBlockEx(blks[1], AtEnd, false)
				b.blk.last = blks[1].last
			}
		})
	}
	return b.Load(g.Expr)
}

// unsafeEface(t *abi.Type, data unsafe.Pointer) Eface
func (b Builder) unsafeEface(t, data llvm.Value) llvm.Value {
	return aggregateValue(b.impl, b.Prog.rtEface(), t, data)
}

// unsafeIface(itab *runtime.Itab, data unsafe.Pointer) Eface
func (b Builder) unsafeIface(itab, data llvm.Value) llvm.Value {
	return aggregateValue(b.impl, b.Prog.rtIface(), itab, data)
}

// func NewItab(tintf *InterfaceType, typ *Type) *runtime.Itab
func (b Builder) newItab(tintf, typ Expr) Expr {
	return b.Call(b.Pkg.rtFunc("NewItab"), tintf, typ)
}

func (b Builder) unsafeInterface(rawIntf *types.Interface, t Expr, data llvm.Value) llvm.Value {
	if rawIntf.Empty() {
		return b.unsafeEface(t.impl, data)
	}
	tintf := b.abiType(rawIntf)
	itab := b.newItab(tintf, t)
	return b.unsafeIface(itab.impl, data)
}

func iMethodOf(rawIntf *types.Interface, name string) int {
	n := rawIntf.NumMethods()
	for i := 0; i < n; i++ {
		m := rawIntf.Method(i)
		if m.Name() == name {
			// TODO(xsw): check signature
			return i
		}
	}
	return -1
}

// Imethod returns closure of an interface method.
func (b Builder) Imethod(intf Expr, method *types.Func) Expr {
	prog := b.Prog
	rawIntf := intf.raw.Type.Underlying().(*types.Interface)
	tclosure := prog.Type(method.Type(), InGo)
	i := iMethodOf(rawIntf, method.Name())
	impl := intf.impl
	itab := Expr{b.faceItab(impl), prog.VoidPtrPtr()}
	pfn := b.Advance(itab, prog.IntVal(uint64(i+3), prog.Int()))
	fn := b.Load(pfn)
	ret := b.aggregateValue(tclosure, fn.impl, b.faceData(impl))
	b.Println(b.Str("Imethod:"), itab, ret, prog.Val(ret.kind), prog.Val(i))
	return ret
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
	tabi := b.abiType(typ.raw.Type)
	kind, _, lvl := abi.KindOf(typ.raw.Type, 0, prog.is32Bits)
	switch kind {
	case abi.Indirect:
		vptr := b.AllocU(typ)
		b.Store(vptr, x)
		return Expr{b.unsafeInterface(rawIntf, tabi, vptr.impl), tinter}
	}
	ximpl := x.impl
	if lvl > 0 {
		ximpl = extractVal(b.impl, ximpl, lvl)
	}
	var u llvm.Value
	switch kind {
	case abi.Pointer:
		return Expr{b.unsafeInterface(rawIntf, tabi, ximpl), tinter}
	case abi.Integer:
		tu := prog.Uintptr()
		u = llvm.CreateIntCast(b.impl, ximpl, tu.ll)
	case abi.BitCast:
		tu := prog.Uintptr()
		u = llvm.CreateBitCast(b.impl, ximpl, tu.ll)
	default:
		panic("todo")
	}
	data := llvm.CreateIntToPtr(b.impl, u, prog.tyVoidPtr())
	return Expr{b.unsafeInterface(rawIntf, tabi, data), tinter}
}

func (b Builder) valFromData(typ Type, data llvm.Value) Expr {
	prog := b.Prog
	kind, real, lvl := abi.KindOf(typ.raw.Type, 0, prog.is32Bits)
	switch kind {
	case abi.Indirect:
		impl := b.impl
		tll := typ.ll
		tptr := llvm.PointerType(tll, 0)
		ptr := llvm.CreatePointerCast(impl, data, tptr)
		return Expr{llvm.CreateLoad(impl, tll, ptr), typ}
	}
	t := typ
	if lvl > 0 {
		t = prog.rawType(real)
	}
	switch kind {
	case abi.Pointer:
		return b.buildVal(typ, data, lvl)
	case abi.Integer:
		x := castUintptr(b, data, prog.Uintptr())
		return b.buildVal(typ, castInt(b, x, t), lvl)
	case abi.BitCast:
		x := castUintptr(b, data, prog.Uintptr())
		if int(prog.SizeOf(t)) != prog.PointerSize() {
			x = castInt(b, x, prog.Int32())
		}
		return b.buildVal(typ, llvm.CreateBitCast(b.impl, x, t.ll), lvl)
	}
	panic("todo")
}

func extractVal(b llvm.Builder, val llvm.Value, lvl int) llvm.Value {
	for lvl > 0 {
		// TODO(xsw): check array support
		val = llvm.CreateExtractValue(b, val, 0)
		lvl--
	}
	return val
}

func (b Builder) buildVal(typ Type, val llvm.Value, lvl int) Expr {
	if lvl == 0 {
		return Expr{val, typ}
	}
	switch t := typ.raw.Type.Underlying().(type) {
	case *types.Struct:
		telem := b.Prog.rawType(t.Field(0).Type())
		elem := b.buildVal(telem, val, lvl-1)
		return Expr{aggregateValue(b.impl, typ.ll, elem.impl), typ}
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
func (b Builder) TypeAssert(x Expr, assertedTyp Type, commaOk bool) Expr {
	if debugInstr {
		log.Printf("TypeAssert %v, %v, %v\n", x.impl, assertedTyp.raw.Type, commaOk)
	}
	tx := b.faceAbiType(x)
	tabi := b.abiType(assertedTyp.raw.Type)
	eq := b.BinOp(token.EQL, tx, tabi)
	if commaOk {
		prog := b.Prog
		t := prog.Struct(assertedTyp, prog.Bool())
		blks := b.Func.MakeBlocks(3)
		b.If(eq, blks[0], blks[1])

		b.SetBlockEx(blks[2], AtEnd, false)
		phi := b.Phi(t)
		phi.AddIncoming(b, blks[:2], func(i int, blk BasicBlock) Expr {
			b.SetBlockEx(blk, AtEnd, false)
			if i == 0 {
				val := b.valFromData(assertedTyp, b.faceData(x.impl))
				valTrue := aggregateValue(b.impl, t.ll, val.impl, prog.BoolVal(true).impl)
				b.Jump(blks[2])
				return Expr{valTrue, t}
			}
			zero := prog.Zero(assertedTyp)
			valFalse := aggregateValue(b.impl, t.ll, zero.impl, prog.BoolVal(false).impl)
			b.Jump(blks[2])
			return Expr{valFalse, t}
		})
		b.SetBlockEx(blks[2], AtEnd, false)
		b.blk.last = blks[2].last
		return phi.Expr
	}
	blks := b.Func.MakeBlocks(2)
	b.If(eq, blks[0], blks[1])
	b.SetBlockEx(blks[1], AtEnd, false)
	b.Panic(b.Str("type assertion failed"))
	b.SetBlockEx(blks[0], AtEnd, false)
	b.blk.last = blks[0].last
	return b.valFromData(assertedTyp, b.faceData(x.impl))
}

// -----------------------------------------------------------------------------

/*
// InterfaceData returns the data pointer of an interface.
func (b Builder) InterfaceData(x Expr) Expr {
	if debugInstr {
		log.Printf("InterfaceData %v\n", x.impl)
	}
	return Expr{b.faceData(x.impl), b.Prog.VoidPtr()}
}
*/

func (b Builder) faceData(x llvm.Value) llvm.Value {
	return llvm.CreateExtractValue(b.impl, x, 1)
}

func (b Builder) faceItab(x llvm.Value) llvm.Value {
	return llvm.CreateExtractValue(b.impl, x, 0)
}

func (b Builder) faceAbiType(x Expr) Expr {
	if x.kind == vkIface {
		panic("todo")
	}
	typ := llvm.CreateExtractValue(b.impl, x.impl, 0)
	return Expr{typ, b.Prog.AbiTypePtr()}
}

// -----------------------------------------------------------------------------
