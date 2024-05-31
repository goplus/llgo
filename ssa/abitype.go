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
		return b.abiNamedOf(t)
	case *types.Interface:
		return b.abiInterfaceOf("", t)
	case *types.Signature:
		return b.abiFuncOf(t)
	case *types.Slice:
		return b.abiSliceOf(t)
	case *types.Array:
		return b.abiArrayOf(t)
	}
	panic("todo")
}

func (b Builder) abiTupleOf(t *types.Tuple) func() Expr {
	n := t.Len()
	tuple := make([]Expr, n)
	for i := 0; i < n; i++ {
		tuple[i] = b.abiType(t.At(i).Type())
	}
	return func() Expr {
		prog := b.Prog
		tSlice := prog.Slice(prog.AbiTypePtr())
		return b.SliceLit(tSlice, tuple...)
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

func (b Builder) abiMethods(t *types.Named) (ret int) {
	n := t.NumMethods()
	for i := 0; i < n; i++ {
		m := t.Method(i)
		mSig := m.Type().(*types.Signature)
		recvType := mSig.Recv().Type()
		if _, ok := recvType.(*types.Pointer); !ok {
			ret++
		}
	}
	return
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

// func Interface(pkgPath, name string, methods []abi.Imethod)
func (b Builder) abiInterfaceOf(name string, t *types.Interface) func() Expr {
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
			methods[i] = b.abiImethodOf(m.Name(), typs[i])
		}
		pkg := b.Pkg
		fn := pkg.rtFunc("Interface")
		pkgPath := pkg.Path()
		tSlice := lastParamType(prog, fn)
		methodSlice := b.SliceLit(tSlice, methods...)
		return b.Call(fn, b.Str(pkgPath), b.Str(name), methodSlice)
	}
}

// func NewNamed(kind abi.Kind, methods, ptrMethods int)
func (b Builder) abiNamedOf(t *types.Named) func() Expr {
	return func() Expr {
		pkg := b.Pkg
		tunder := t.Underlying()
		kind := int(abi.UnderlyingKind(tunder))
		numMethods := b.abiMethods(t)
		numPtrMethods := t.NumMethods()
		newNamed := pkg.rtFunc("NewNamed")
		return b.Call(newNamed, b.Prog.Val(kind), b.Prog.Val(numMethods), b.Prog.Val(numPtrMethods))
	}
}

// func InitNamed(ret *Type, pkgPath, name string, underlying *Type, methods, ptrMethods []Method)
func (b Builder) abiInitNamed(ret Expr, t *types.Named) func() Expr {
	under := b.abiType(t.Underlying())
	return func() Expr {
		pkg := b.Pkg
		prog := b.Prog
		path := abi.PathOf(t.Obj().Pkg())
		name := NameOf(t)

		var initNamed = pkg.rtFunc("InitNamed")
		var tSlice = lastParamType(prog, initNamed)
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
		return b.Call(initNamed, ret, b.Str(path), b.Str(name), under, methods, ptrMethods)
	}
}

func (b Builder) abiPointerOf(t *types.Pointer) func() Expr {
	elem := b.abiType(t.Elem())
	return func() Expr {
		return b.Call(b.Pkg.rtFunc("PointerTo"), elem)
	}
}

func (b Builder) abiSliceOf(t *types.Slice) func() Expr {
	elem := b.abiType(t.Elem())
	return func() Expr {
		return b.Call(b.Pkg.rtFunc("SliceOf"), elem)
	}
}

func (b Builder) abiArrayOf(t *types.Array) func() Expr {
	elem := b.abiType(t.Elem())
	return func() Expr {
		n := b.Prog.IntVal(uint64(t.Len()), b.Prog.Uintptr())
		return b.Call(b.Pkg.rtFunc("ArrayOf"), n, elem)
	}
}

// func StructField(name string, typ *abi.Type, off uintptr, tag string, embedded bool)
// func Struct(pkgPath string, size uintptr, fields []abi.StructField)
func (b Builder) abiStructOf(t *types.Struct) func() Expr {
	n := t.NumFields()
	typs := make([]Expr, n)
	for i := 0; i < n; i++ {
		f := t.Field(i)
		typs[i] = b.abiType(f.Type())
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
			flds[i] = b.Call(sfAbi, name, typs[i], prog.Val(off), tag, embedded)
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

type abiTypes struct {
	iniabi unsafe.Pointer
}

func (p Package) hasAbiInit() bool {
	return p.iniabi != nil
}

func (p Package) abiInit(b Builder) {
	inib := Builder(p.iniabi)
	inib.Return()
	b.Call(inib.Func.Expr)
}

func (p Package) abiBuilder() Builder {
	if p.iniabi == nil {
		sigAbiInit := types.NewSignatureType(nil, nil, nil, nil, nil, false)
		fn := p.NewFunc(p.Path()+".init$abi", sigAbiInit, InC)
		fnb := fn.MakeBody(1)
		p.iniabi = unsafe.Pointer(fnb)
	}
	return Builder(p.iniabi)
}

func (p Package) abiTypeInit(g Global, t types.Type, pub bool) {
	b := p.abiBuilder()
	tabi := b.abiTypeOf(t)
	expr := g.Expr
	var eq Expr
	var blks []BasicBlock
	if pub {
		eq = b.BinOp(token.EQL, b.Load(expr), b.Prog.Null(expr.Type))
		blks = b.Func.MakeBlocks(2)
		b.If(eq, blks[0], blks[1])
		b.SetBlockEx(blks[0], AtEnd, false)
	}
	vexpr := tabi()
	b.Store(expr, vexpr)
	if pub {
		b.Jump(blks[1])
		b.SetBlockEx(blks[1], AtEnd, false)
		b.blk.last = blks[1].last
	}
	if t, ok := t.(*types.Named); ok {
		tabi = b.abiInitNamed(vexpr, t)
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
		pkg.abiTypeInit(g, t, pub)
	}
	return b.Load(g.Expr)
}

// -----------------------------------------------------------------------------
