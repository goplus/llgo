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
	"unsafe"

	"github.com/goplus/llgo/ssa/abi"
	"github.com/goplus/llvm"
	"golang.org/x/tools/go/types/typeutil"
)

// -----------------------------------------------------------------------------

// abiBasic returns the abi type of the specified basic kind.
func (b Builder) abiBasic(t *types.Basic) func() Expr {
	/*
		TODO(xsw):
		return b.abiExtern(abi.BasicName(t))
	*/
	return func() Expr {
		kind := int(abi.BasicKind(t))
		dk, _, _ := abi.DataKindOf(t, 0, b.Prog.is32Bits)
		switch dk {
		case abi.Integer, abi.BitCast, abi.Pointer:
			const kindDirectIface = 1 << 5
			kind |= kindDirectIface
		}
		return b.InlineCall(b.Pkg.rtFunc("Basic"), b.Prog.Val(kind))
	}
}

/*
func (b Builder) abiExtern(name string) Expr {
	g := b.Pkg.NewVarFrom(name, b.Prog.AbiTypePtrPtr())
	return b.Load(g.Expr)
}
*/

func (b Builder) abiTypeOf(t types.Type) func() Expr {
	switch t := t.(type) {
	case *types.Basic:
		return b.abiBasic(t)
	case *types.Pointer:
		return b.abiPointerOf(t)
	case *types.Struct:
		return b.abiStructOf(t)
	case *types.Named:
		if _, ok := t.Underlying().(*types.Interface); ok {
			return b.abiNamedInterfaceOf(t)
		}
		return b.abiNamedOf(t)
	case *types.Interface:
		return b.abiInterfaceOf(t)
	case *types.Signature:
		return b.abiFuncOf(t)
	case *types.Slice:
		return b.abiSliceOf(t)
	case *types.Array:
		return b.abiArrayOf(t)
	case *types.Chan:
		return b.abiChanOf(t)
	case *types.Map:
		return b.abiMapOf(t)
	case *types.Alias:
		return b.abiTypeOf(types.Unalias(t))
	}
	panic("todo")
}

func (b Builder) abiTupleOf(t *types.Tuple) func() Expr {
	n := t.Len()
	tuple := make([]func() Expr, n)
	for i := 0; i < n; i++ {
		tuple[i] = b.abiTypeOf(t.At(i).Type())
	}
	return func() Expr {
		prog := b.Prog
		tSlice := prog.Slice(prog.AbiTypePtr())
		elts := make([]Expr, n)
		for i := 0; i < n; i++ {
			elts[i] = tuple[i]()
		}
		return b.SliceLit(tSlice, elts...)
	}
}

// func Func(in, out []*Type, variadic bool)
func (b Builder) abiFuncOf(sig *types.Signature) func() Expr {
	params := b.abiTupleOf(sig.Params())
	results := b.abiTupleOf(sig.Results())
	return func() Expr {
		prog := b.Prog
		pkg := b.Pkg
		fn := pkg.rtFunc("Func")
		variadic := prog.Val(sig.Variadic())
		return b.Call(fn, params(), results(), variadic)
	}
}

// Imethod{name string, typ *FuncType}
func (b Builder) abiImethodOf(mName string, typ Expr) Expr {
	prog := b.Prog
	name := b.Str(mName)
	return b.aggregateValue(prog.rtType("Imethod"), name.impl, typ.impl)
}

func (b Builder) abiMethods(t *types.Named) (ret, pret int) {
	methods := typeutil.IntuitiveMethodSet(t, nil)
	pret = len(methods)
	for _, m := range methods {
		if _, ok := m.Recv().(*types.Pointer); ok {
			continue
		}
		ret++
	}
	return
}

// Method{name string, typ *FuncType, ifn, tfn abi.Text}
func (b Builder) abiMethodOf(mPkg *types.Package, mName string, mSig *types.Signature /*, bg Background = InGo */) (mthd, ptrMthd Expr) {
	prog := b.Prog
	name := b.Str(mName).impl
	if !token.IsExported(mName) {
		name = b.Str(abi.FullName(mPkg, mName)).impl
	}
	abiSigGo := types.NewSignatureType(nil, nil, nil, mSig.Params(), mSig.Results(), mSig.Variadic())
	abiSig := prog.FuncDecl(abiSigGo, InGo).raw.Type
	abiTyp := b.abiType(abiSig)
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
	fullName := FuncName(mPkg, mName, mSig.Recv(), false)
	if mSig.TypeParams().Len() > 0 || mSig.RecvTypeParams().Len() > 0 {
		if !b.Pkg.Prog.FuncCompiled(fullName) {
			return
		}
	}
	if b.Pkg.fnlink != nil {
		fullName = b.Pkg.fnlink(fullName)
	}
	tfn = b.Pkg.NewFunc(fullName, mSig, InGo).impl // TODO(xsw): use rawType to speed up
	if ifn.IsNil() {
		ifn = tfn
	}
	ret = b.aggregateValue(b.Prog.rtType("Method"), name, abiTyp, ifn, tfn)
	return
}

// func Interface(pkgPath, name string, methods []abi.Imethod)
func (b Builder) abiInterfaceOf(t *types.Interface) func() Expr {
	n := t.NumMethods()
	typs := make([]Expr, n)
	for i := 0; i < n; i++ {
		m := t.Method(i)
		typs[i] = b.abiType(m.Type())
	}
	return func() Expr {
		prog := b.Prog
		methods := make([]Expr, n)
		for i := 0; i < n; i++ {
			m := t.Method(i)
			mName := m.Name()
			if !token.IsExported(mName) {
				mName = abi.FullName(m.Pkg(), mName)
			}
			methods[i] = b.abiImethodOf(mName, typs[i])
		}
		pkg := b.Pkg
		fn := pkg.rtFunc("Interface")
		tSlice := lastParamType(prog, fn)
		methodSlice := b.SliceLit(tSlice, methods...)
		return b.Call(fn, b.Str(pkg.Path()), methodSlice)
	}
}

func (b Builder) abiInitNamedInterface(ret Expr, t *types.Interface) func() Expr {
	n := t.NumMethods()
	typs := make([]Expr, n)
	for i := 0; i < n; i++ {
		m := t.Method(i)
		typs[i] = b.abiType(m.Type())
	}
	return func() Expr {
		prog := b.Prog
		methods := make([]Expr, n)
		for i := 0; i < n; i++ {
			m := t.Method(i)
			mName := m.Name()
			if !token.IsExported(mName) {
				mName = abi.FullName(m.Pkg(), mName)
			}
			methods[i] = b.abiImethodOf(mName, typs[i])
		}
		fn := b.Pkg.rtFunc("InitNamedInterface")
		tSlice := lastParamType(prog, fn)
		methodSlice := b.SliceLit(tSlice, methods...)
		return b.Call(fn, ret, methodSlice)
	}
}

// func NewNamed(kind abi.Kind, methods, ptrMethods int)
func (b Builder) abiNamedOf(t *types.Named) func() Expr {
	expr := b.abiNamed(t)
	return func() Expr {
		return expr
	}
}

func (b Builder) abiNamed(t *types.Named) Expr {
	pkg := b.Pkg
	tunder := t.Underlying()
	kind := int(abi.UnderlyingKind(tunder))
	size := b.sizeof(tunder)
	numMethods, numPtrMethods := b.abiMethods(t)
	newNamed := pkg.rtFunc("NewNamed")
	obj := t.Obj()
	expr := b.Call(newNamed, b.Str(abi.PathOf(obj.Pkg())), b.Str(abi.NamedName(t)), b.Prog.Val(kind), b.Prog.IntVal(uint64(size), b.Prog.Uintptr()), b.Prog.Val(numMethods), b.Prog.Val(numPtrMethods))
	return expr
}

func (b Builder) abiNamedInterfaceOf(t *types.Named) func() Expr {
	obj := t.Obj()
	fn := b.Pkg.rtFunc("NewNamedInterface")
	expr := b.Call(fn, b.Str(abi.PathOf(obj.Pkg())), b.Str(obj.Name()))
	return func() Expr {
		return expr
	}
}

func (b Builder) sizeof(t types.Type) int64 {
	sizes := (*goProgram)(unsafe.Pointer(b.Prog))
	return sizes.Sizeof(t)
}

// func InitNamed(ret *Type, pkgPath, name string, underlying *Type, methods, ptrMethods []Method)
func (b Builder) abiInitNamed(ret Expr, t *types.Named) func() Expr {
	under := b.abiType(t.Underlying())
	return func() Expr {
		pkg := b.Pkg
		prog := b.Prog
		var initNamed = pkg.rtFunc("InitNamed")
		var tSlice = lastParamType(prog, initNamed)
		mset := typeutil.IntuitiveMethodSet(t, nil)
		n := len(mset)
		var methods, ptrMethods Expr
		if n == 0 {
			methods = prog.Zero(tSlice)
			ptrMethods = methods
		} else {
			var mthds []Expr
			var ptrMthds = make([]Expr, 0, n)
			for i := 0; i < n; i++ {
				var mPkg *types.Package
				var mSig *types.Signature
				m := mset[i]
				obj := m.Obj()
				mName := obj.Name()
				if token.IsExported(mName) {
					mPkg = t.Obj().Pkg()
					mSig = m.Type().(*types.Signature)
				} else {
					mPkg = obj.Pkg()
					mSig = obj.Type().(*types.Signature)
				}
				mthd, ptrMthd := b.abiMethodOf(mPkg, mName, mSig)
				if !mthd.IsNil() {
					mthds = append(mthds, mthd)
				}
				if !ptrMthd.IsNil() {
					ptrMthds = append(ptrMthds, ptrMthd)
				}
			}
			if len(mthds) > 0 {
				methods = b.SliceLit(tSlice, mthds...)
			} else {
				methods = prog.Zero(tSlice)
			}
			if len(ptrMthds) > 0 {
				ptrMethods = b.SliceLit(tSlice, ptrMthds...)
			} else {
				ptrMethods = prog.Zero(tSlice)
			}
		}
		return b.Call(initNamed, ret, under, methods, ptrMethods)
	}
}

func (b Builder) abiPointerOf(t *types.Pointer) func() Expr {
	elem := b.abiTypeOf(t.Elem())
	return func() Expr {
		return b.Call(b.Pkg.rtFunc("PointerTo"), elem())
	}
}

func (b Builder) abiSliceOf(t *types.Slice) func() Expr {
	elem := b.abiTypeOf(t.Elem())
	return func() Expr {
		return b.Call(b.Pkg.rtFunc("SliceOf"), elem())
	}
}

func (b Builder) abiArrayOf(t *types.Array) func() Expr {
	elem := b.abiTypeOf(t.Elem())
	return func() Expr {
		n := b.Prog.IntVal(uint64(t.Len()), b.Prog.Uintptr())
		return b.Call(b.Pkg.rtFunc("ArrayOf"), n, elem())
	}
}

func (b Builder) abiChanOf(t *types.Chan) func() Expr {
	elem := b.abiTypeOf(t.Elem())
	return func() Expr {
		dir, s := abi.ChanDir(t.Dir())
		return b.Call(b.Pkg.rtFunc("ChanOf"), b.Prog.IntVal(uint64(dir), b.Prog.Int()), b.Str(s), elem())
	}
}

func (b Builder) abiMapOf(t *types.Map) func() Expr {
	key := b.abiTypeOf(t.Key())
	elem := b.abiTypeOf(t.Elem())
	sizes := (*goProgram)(unsafe.Pointer(b.Prog))
	bucket := b.abiTypeOf(abi.MapBucketType(t, sizes))
	flags := abi.MapTypeFlags(t, sizes)
	return func() Expr {
		return b.Call(b.Pkg.rtFunc("MapOf"), key(), elem(), bucket(), b.Prog.Val(flags))
	}
}

// func StructField(name string, typ *abi.Type, off uintptr, tag string, embedded bool)
// func Struct(pkgPath string, size uintptr, fields []abi.StructField)
func (b Builder) abiStructOf(t *types.Struct) func() Expr {
	n := t.NumFields()
	typs := make([]func() Expr, n)
	for i := 0; i < n; i++ {
		f := t.Field(i)
		typs[i] = b.abiTypeOf(f.Type())
	}
	return func() Expr {
		pkg := b.Pkg
		prog := b.Prog
		flds := make([]Expr, n)
		strucAbi := pkg.rtFunc("Struct")
		sfAbi := pkg.rtFunc("StructField")
		tStruc := prog.rawType(t)
		for i := 0; i < n; i++ {
			f := t.Field(i)
			off := uintptr(prog.OffsetOf(tStruc, i))
			name := b.Str(f.Name())
			tag := b.Str(t.Tag(i))
			embedded := prog.Val(f.Embedded())
			flds[i] = b.Call(sfAbi, name, typs[i](), prog.Val(off), tag, embedded)
		}
		pkgPath := b.Str(pkg.Path())
		tSlice := lastParamType(prog, strucAbi)
		fldSlice := b.SliceLit(tSlice, flds...)
		size := prog.IntVal(prog.SizeOf(tStruc), prog.Uintptr())
		return b.Call(strucAbi, pkgPath, size, fldSlice)
	}
}

func lastParamType(prog Program, fn Expr) Type {
	params := fn.raw.Type.(*types.Signature).Params()
	return prog.rawType(params.At(params.Len() - 1).Type())
}

// -----------------------------------------------------------------------------

func (p Package) patchType(t types.Type) types.Type {
	switch t := t.(type) {
	case *types.Pointer:
		return types.NewPointer(p.patchType(t.Elem()))
	}
	return p.patch(t)
}

func (p Package) abiTypeInit(g Global, t types.Type, pub bool) {
	b := p.afterBuilder()
	if p.patch != nil {
		t = p.patchType(t)
	}
	tabi := b.abiTypeOf(t)
	expr := g.Expr
	var eq Expr
	var blks []BasicBlock
	if pub {
		eq = b.BinOp(token.EQL, b.Load(expr), b.Prog.Nil(expr.Type))
		blks = b.Func.MakeBlocks(2)
		b.If(eq, blks[0], blks[1])
		b.SetBlockEx(blks[0], AtEnd, false)
	}
	vexpr := tabi()
	prog := p.Prog
	if kind, _, _ := abi.DataKindOf(t, 0, prog.is32Bits); kind == abi.Pointer {
		b.InlineCall(b.Pkg.rtFunc("SetDirectIface"), vexpr)
	}
	b.Store(expr, vexpr)
	if pub {
		b.Jump(blks[1])
		b.SetBlockEx(blks[1], AtEnd, false)
		b.blk.last = blks[1].last
	}

	if t, ok := t.(*types.Named); ok {
		if iface, ok := t.Underlying().(*types.Interface); ok {
			tabi = b.abiInitNamedInterface(vexpr, iface)
		} else {
			tabi = b.abiInitNamed(vexpr, t)
		}
		if pub {
			blks = b.Func.MakeBlocks(2)
			b.If(eq, blks[0], blks[1])
			b.SetBlockEx(blks[0], AtEnd, false)
		}
		tabi()
		if pub {
			b.Jump(blks[1])
			b.SetBlockEx(blks[1], AtEnd, false)
			b.blk.last = blks[1].last
		}
	}
}

// abiType returns the abi type of the specified type.
func (b Builder) abiType(t types.Type) Expr {
	switch t := t.(type) {
	case *types.Pointer:
		b.checkAbi(t.Elem())
	case *types.Array:
		b.checkAbi(t.Elem())
	case *types.Map:
		b.checkAbi(t.Key())
		b.checkAbi(t.Elem())
	case *types.Slice:
		b.checkAbi(t.Elem())
	case *types.Chan:
		b.checkAbi(t.Elem())
	case *types.Struct:
		for i := 0; i < t.NumFields(); i++ {
			b.checkAbi(t.Field(i).Type())
		}
	case *types.Interface:
		for i := 0; i < t.NumMethods(); i++ {
			b.checkAbi(t.Method(i).Type())
		}
	case *types.Signature:
		for i := 0; i < t.Params().Len(); i++ {
			b.checkAbi(t.Params().At(i).Type())
		}
		for i := 0; i < t.Results().Len(); i++ {
			b.checkAbi(t.Results().At(i).Type())
		}
	}
	return b.loadType(t)
}

func (b Builder) checkAbi(t types.Type) {
	if b.Pkg.chkabi[t] {
		return
	}
	b.abiType(t)
}

// abiTypeLoaderName returns the name of the lazy loader function for the type
func (pkg Package) abiTypeLoaderName(t types.Type) string {
	name, _ := pkg.abi.TypeName(t)
	return "__llgo_load_" + name
}

// abiTypeInitLoader creates a lazy loader function for the given type
// The loader function checks if the type is null and initializes it if needed
func (pkg Package) abiTypeInitLoader(g Global, t types.Type, pub bool) Function {
	loaderName := pkg.abiTypeLoaderName(t)

	// Check if loader already exists
	if fn := pkg.FuncOf(loaderName); fn != nil {
		return fn
	}

	// Create loader function signature: func() *Type
	prog := pkg.Prog
	sig := types.NewSignatureType(
		nil, nil, nil,
		types.NewTuple(),
		types.NewTuple(types.NewVar(0, nil, "", prog.AbiTypePtrPtr().raw.Type)),
		false,
	)

	// Create loader function
	fn := pkg.NewFunc(loaderName, sig, InGo)
	fn.impl.SetLinkage(llvm.LinkOnceAnyLinkage)

	// Build loader function body
	b := fn.MakeBody(3) // entry, init, done
	entry := fn.Block(0)
	initBlk := fn.Block(1)
	doneBlk := fn.Block(2)

	// entry: check if type is null
	b.SetBlock(entry)
	loaded := b.Load(g.Expr)
	eq := b.BinOp(token.EQL, loaded, prog.Nil(g.Type))
	b.If(eq, initBlk, doneBlk)

	// init: initialize the type
	b.SetBlock(initBlk)

	// Perform type initialization inline (without conditional blocks)
	if pkg.patch != nil {
		t = pkg.patchType(t)
	}
	tabi := b.abiTypeOf(t)
	expr := g.Expr

	// Phase1: create type object
	vexpr := tabi()
	if kind, _, _ := abi.DataKindOf(t, 0, prog.is32Bits); kind == abi.Pointer {
		b.InlineCall(b.Pkg.rtFunc("SetDirectIface"), vexpr)
	}
	b.Store(expr, vexpr)

	// Phase2: initialize Named type methods (if applicable)
	if named, ok := t.(*types.Named); ok {
		if iface, ok := named.Underlying().(*types.Interface); ok {
			tabi = b.abiInitNamedInterface(vexpr, iface)
		} else {
			tabi = b.abiInitNamed(vexpr, named)
		}
		tabi()
	}

	b.Jump(doneBlk)

	// done: load and return
	b.SetBlock(doneBlk)
	result := b.Load(g.Expr)
	b.Return(result)

	return fn
}

func (b Builder) loadType(t types.Type) Expr {
	b.Pkg.chkabi[t] = true
	pkg := b.Pkg
	name, pub := pkg.abi.TypeName(t)
	g := pkg.VarOf(name)
	if g == nil {
		prog := b.Prog
		g = pkg.doNewVar(name, prog.AbiTypePtrPtr())
		g.InitNil()
		g.impl.SetLinkage(llvm.LinkOnceAnyLinkage)
		// Create lazy loader function
		pkg.abiTypeInitLoader(g, t, pub)
		// Call loader in init$after to ensure package-level initialization
		loaderName := pkg.abiTypeLoaderName(t)
		loader := pkg.FuncOf(loaderName)
		afterB := pkg.afterBuilder()
		afterB.Call(loader.Expr)
	}
	// Call the lazy loader function
	loaderName := pkg.abiTypeLoaderName(t)
	loader := pkg.FuncOf(loaderName)
	return b.Call(loader.Expr)
}

// -----------------------------------------------------------------------------
