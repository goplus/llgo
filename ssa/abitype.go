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

// -----------------------------------------------------------------------------
