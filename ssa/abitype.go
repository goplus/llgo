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
	"go/ast"
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
	if b.Prog.checkRuntimeNamed != nil {
		b.Prog.checkRuntimeNamed(b.Pkg, t)
	}
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
	return b.getAbiType(t)
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
	g := b.loadType(t)
	return b.Load(g.Expr)
}

func (b Builder) checkAbi(t types.Type) {
	if b.Pkg.chkabi[t] {
		return
	}
	b.abiType(t)
}

func (b Builder) loadType(t types.Type) Global {
	b.Pkg.chkabi[t] = true
	pkg := b.Pkg
	name, pub := pkg.abi.TypeName(t)
	g := pkg.VarOf(name)
	if g == nil {
		prog := b.Prog
		g = pkg.doNewVar(name, prog.AbiTypePtrPtr())
		g.InitNil()
		g.impl.SetLinkage(llvm.LinkOnceAnyLinkage)
		pkg.abiTypeInit(g, t, pub)
	}
	return g
}

/*
type Type struct {
	Size_       uintptr
	PtrBytes    uintptr // number of (prefix) bytes in the type that can contain pointers
	Hash        uint32  // hash of type; avoids computation in hash tables
	TFlag       TFlag   // extra type information flags
	Align_      uint8   // alignment of variable with this type
	FieldAlign_ uint8   // alignment of struct field with this type
	Kind_       uint8   // enumeration for C
	// function for comparing objects of this type
	// (ptr to object A, ptr to object B) -> ==?
	Equal func(unsafe.Pointer, unsafe.Pointer) bool
	// GCData stores the GC type data for the garbage collector.
	// If the KindGCProg bit is set in kind, GCData is a GC program.
	// Otherwise it is a ptrmask bitmap. See mbitmap.go for details.
	GCData     *byte
	Str_       string // string form
	PtrToThis_ *Type  // type for pointer to this type, may be nil
}
*/

var (
	equalFunc = types.NewSignature(nil, types.NewTuple(types.NewVar(token.NoPos, nil, "", types.Typ[types.UnsafePointer]),
		types.NewVar(token.NoPos, nil, "", types.Typ[types.UnsafePointer])),
		types.NewTuple(types.NewVar(token.NoPos, nil, "", types.Typ[types.Bool])), false)
	// p unsafe.Pointer, h uintptr) uintptr
	hashFunc = types.NewSignature(nil, types.NewTuple(types.NewVar(token.NoPos, nil, "", types.Typ[types.UnsafePointer]),
		types.NewVar(token.NoPos, nil, "", types.Typ[types.Uintptr])),
		types.NewTuple(types.NewVar(token.NoPos, nil, "", types.Typ[types.Uintptr])), false)
)

func (b Builder) abiBaseFields(t types.Type, hasUncommon bool) (fields []llvm.Value) {
	prog := b.Prog
	pkg := b.Pkg
	ab := pkg.abi
	// Size uintptr
	fields = append(fields, prog.IntVal(uint64(ab.Size(t)), prog.Uintptr()).impl)
	// PtrBytes uintptr
	fields = append(fields, prog.IntVal(uint64(ab.PtrBytes(t)), prog.Uintptr()).impl)
	// Hash uint32
	fields = append(fields, prog.IntVal(uint64(ab.Hash(t)), prog.Uint32()).impl)
	// TFlag uint8
	tflag := uint64(ab.TFlag(t))
	if hasUncommon {
		tflag |= (1 << 0) // TFlagUncommon
	}
	fields = append(fields, prog.IntVal(tflag, prog.Byte()).impl)
	// Align uint8
	align := prog.IntVal(uint64(ab.Align(t)), prog.Byte()).impl
	fields = append(fields, align)
	// FieldAlign uint8
	fields = append(fields, align)
	// Kind uint8
	kind := uint8(ab.Kind(t))
	if k, _, _ := abi.DataKindOf(t, 0, prog.is32Bits); k != abi.Indirect {
		kind |= (1 << 5) //KindDirectIface
	}
	fields = append(fields, prog.IntVal(uint64(kind), prog.Byte()).impl)
	// Equal func(unsafe.Pointer, unsafe.Pointer) bool
	var equal Expr
	switch name := ab.EqualName(t); name {
	case "":
		equal = prog.Nil(prog.Type(equalFunc, InGo))
	case "structequal", "arrayequal":
		equal = b.Pkg.rtFunc(name)
		env := b.getAbiType(t)
		equal = b.aggregateValue(prog.Type(equalFunc, InGo), equal.impl, env.impl)
	default:
		equal = b.rtClosure(name)
	}
	fields = append(fields, equal.impl)
	// GCData     *byte
	fields = append(fields, prog.Nil(prog.Pointer(prog.Byte())).impl)
	// Str_       string
	fields = append(fields, b.Str(ab.Str(t)).impl)
	// PtrToThis_ *Type
	if _, ok := t.(*types.Pointer); ok {
		fields = append(fields, prog.Nil(prog.AbiTypePtr()).impl)
	} else {
		fields = append(fields, b.getAbiType(types.NewPointer(t)).impl)
	}
	return
}

func (b Builder) rtClosure(name string) Expr {
	fn := b.Pkg.rtFunc(name)
	typ := b.Prog.Type(fn.raw.Type, InGo)
	fn = checkExpr(fn, typ.raw.Type, b)
	return fn
}

/*
type StructField struct {
	Name_  string  // name is always non-empty
	Typ    *Type   // type of field
	Offset uintptr // byte offset of field

	Tag_      string
	Embedded_ bool
}
*/

func (b Builder) abiStructFields(t *types.Struct, name string) llvm.Value {
	prog := b.Prog
	n := t.NumFields()
	if n == 0 {
		return prog.Nil(prog.rtType("Slice")).impl
	}
	ft := prog.rtType("structfield")
	typ := prog.rawType(t)
	fields := make([]llvm.Value, n)
	for i := 0; i < n; i++ {
		f := t.Field(i)
		var values []llvm.Value
		values = append(values, b.Str(f.Name()).impl)
		values = append(values, b.getAbiType(f.Type()).impl)
		values = append(values, prog.IntVal(prog.OffsetOf(typ, i), prog.Uintptr()).impl)
		values = append(values, b.Str(t.Tag(i)).impl)
		values = append(values, prog.BoolVal(f.Embedded()).impl)
		fields[i] = llvm.ConstNamedStruct(ft.ll, values)
	}
	atyp := prog.rawType(types.NewArray(ft.RawType(), int64(n)))
	data := Expr{llvm.ConstArray(ft.ll, fields), atyp}
	g := b.Pkg.doNewVar(name, prog.Pointer(atyp))
	g.Init(data)
	g.impl.SetLinkage(llvm.WeakODRLinkage)
	size := uint64(n)
	return llvm.ConstNamedStruct(prog.rtType("Slice").ll, []llvm.Value{
		g.impl,
		prog.IntVal(size, prog.Int()).impl,
		prog.IntVal(size, prog.Int()).impl,
	})
}

/*
type InterfaceType struct {
	Type
	PkgPath_ string    // import path
	Methods  []Imethod // sorted by hash
}

type Imethod struct {
	Name_ string    // name of method
	Typ_  *FuncType // .(*FuncType) underneath
}
*/

func (b Builder) abiInterfaceImethods(t *types.Interface, name string) llvm.Value {
	prog := b.Prog
	n := t.NumMethods()
	if n == 0 {
		return prog.Nil(prog.rtType("Slice")).impl
	}
	g := b.Pkg.VarOf(name)
	if g == nil {
		ft := prog.rtType("Imethod")
		fields := make([]llvm.Value, n)
		for i := 0; i < n; i++ {
			f := t.Method(i)
			var values []llvm.Value
			name := f.Name()
			if !token.IsExported(name) {
				name = abi.FullName(f.Pkg(), name)
			}
			values = append(values, b.Str(name).impl)
			ftyp := prog.Type(f.Type(), InGo)
			values = append(values, b.getAbiType(ftyp.raw.Type).impl)
			fields[i] = llvm.ConstNamedStruct(ft.ll, values)
		}
		atyp := prog.rawType(types.NewArray(ft.RawType(), int64(n)))
		data := Expr{llvm.ConstArray(ft.ll, fields), atyp}
		g = b.Pkg.doNewVar(name, prog.Pointer(atyp))
		g.Init(data)
		g.impl.SetLinkage(llvm.WeakODRLinkage)
	}
	size := uint64(n)
	return llvm.ConstNamedStruct(prog.rtType("Slice").ll, []llvm.Value{
		g.impl,
		prog.IntVal(size, prog.Int()).impl,
		prog.IntVal(size, prog.Int()).impl,
	})
}

func (b Builder) abiTuples(t *types.Tuple, name string) llvm.Value {
	prog := b.Prog
	n := t.Len()
	fields := make([]llvm.Value, n)
	for i := 0; i < n; i++ {
		fields[i] = b.getAbiType(t.At(i).Type()).impl
	}
	ft := prog.AbiTypePtr()
	atyp := prog.rawType(types.NewArray(ft.RawType(), int64(n)))
	data := Expr{llvm.ConstArray(ft.ll, fields), atyp}
	g := b.Pkg.doNewVar(name, prog.Pointer(atyp))
	g.Init(data)
	g.impl.SetLinkage(llvm.WeakODRLinkage)
	size := uint64(n)
	return llvm.ConstNamedStruct(prog.rtType("Slice").ll, []llvm.Value{
		g.impl,
		prog.IntVal(size, prog.Int()).impl,
		prog.IntVal(size, prog.Int()).impl,
	})
}

func (b Builder) getExtendedFields(t types.Type, name string) (fields []llvm.Value) {
	prog := b.Prog
	pkg := b.Pkg
	switch t := types.Unalias(t).(type) {
	case *types.Basic:
	case *types.Pointer:
		fields = []llvm.Value{
			b.getAbiType(t.Elem()).impl,
		}
	case *types.Chan:
		dir, _ := abi.ChanDir(t.Dir())
		fields = []llvm.Value{
			b.getAbiType(t.Elem()).impl,
			prog.IntVal(uint64(dir), prog.Int()).impl,
		}
	case *types.Slice:
		fields = []llvm.Value{
			b.getAbiType(t.Elem()).impl,
		}
	case *types.Array:
		fields = []llvm.Value{
			b.getAbiType(t.Elem()).impl,
			b.getAbiType(types.NewSlice(t.Elem())).impl,
			prog.IntVal(uint64(t.Len()), prog.Uintptr()).impl,
		}
	case *types.Map:
		bucket := pkg.abi.MapBucket(t)
		flags := pkg.abi.MapFlags(t)
		hash := b.Pkg.rtFunc("typehash")
		env := b.getAbiType(t.Key())
		hasher := b.aggregateValue(prog.Type(hashFunc, InGo), hash.impl, env.impl)
		fields = []llvm.Value{
			b.getAbiType(t.Key()).impl,
			b.getAbiType(t.Elem()).impl,
			b.getAbiType(bucket).impl,
			hasher.impl,
			prog.IntVal(uint64(pkg.abi.Size(t.Key())), prog.Byte()).impl,
			prog.IntVal(uint64(pkg.abi.Size(t.Elem())), prog.Byte()).impl,
			prog.IntVal(uint64(pkg.abi.Size(bucket)), prog.Uint16()).impl,
			prog.IntVal(uint64(flags), prog.Uint32()).impl,
		}
	case *types.Signature:
		fields = []llvm.Value{
			b.abiTuples(t.Params(), name+"$in"),
			b.abiTuples(t.Results(), name+"$out"),
		}
	case *types.Struct:
		fields = []llvm.Value{
			b.Str(pkg.Path()).impl,
			b.abiStructFields(t, name+"$fields"),
		}
	case *types.Interface:
		name, _ = b.Pkg.abi.TypeName(t)
		fields = []llvm.Value{
			b.Str(pkg.Path()).impl,
			b.abiInterfaceImethods(t, name+"$imethods"),
		}
	case *types.Named:
		return b.getExtendedFields(t.Underlying(), name)
	}
	return
}

func (b Builder) getUncommonPkg(t types.Type) *types.Package {
retry:
	switch typ := types.Unalias(t).(type) {
	case *types.Pointer:
		t = typ.Elem()
		goto retry
	case *types.Named:
		return typ.Obj().Pkg()
	}
	return nil
}

func (b Builder) getUncommonMethodSet(t types.Type) (mset *types.MethodSet, ok bool) {
	switch t := types.Unalias(t).(type) {
	case *types.Named:
		if _, b := t.Underlying().(*types.Interface); b {
			return
		}
		if b.Prog.checkRuntimeNamed != nil {
			b.Prog.checkRuntimeNamed(b.Pkg, t)
		}
		return types.NewMethodSet(t), true
	case *types.Pointer, *types.Struct:
		if mset := types.NewMethodSet(t); mset.Len() != 0 {
			return mset, true
		}
	}
	return
}

/*
type UncommonType struct {
	PkgPath_ string // import path; empty for built-in types like int, string
	Mcount   uint16 // number of methods
	Xcount   uint16 // number of exported methods
	Moff     uint32 // offset from this uncommontype to [mcount]Method
}
*/

func (b Builder) getUncommonType(t types.Type, mset *types.MethodSet) llvm.Value {
	prog := b.Prog
	ft := prog.rtType("uncommonType")
	var fields []llvm.Value
	fields = append(fields, b.Str(abi.PathOf(b.getUncommonPkg(t))).impl)
	mcount := mset.Len()
	var xcount int
	for i := 0; i < mcount; i++ {
		if ast.IsExported(mset.At(i).Obj().Name()) {
			xcount++
		}
	}
	moff := prog.SizeOf(ft)
	fields = append(fields, prog.IntVal(uint64(mcount), prog.Uint16()).impl)
	fields = append(fields, prog.IntVal(uint64(xcount), prog.Uint16()).impl)
	fields = append(fields, prog.IntVal(moff, prog.Uint32()).impl)
	return llvm.ConstNamedStruct(ft.ll, fields)
}

/*
type Method struct {
	Name_ string    // name of method
	Mtyp_ *FuncType // method type (without receiver)
	Ifn_  Text      // fn used in interface call (one-word receiver)
	Tfn_  Text      // fn used for normal method call
}
*/

func (b Builder) getUncommonMethods(t types.Type, mset *types.MethodSet) llvm.Value {
	prog := b.Prog
	ft := prog.rtType("Method")
	n := mset.Len()
	fields := make([]llvm.Value, n)
	pkg := b.getUncommonPkg(t)
	var mPkg *types.Package
	for i := 0; i < n; i++ {
		m := mset.At(i)
		obj := m.Obj()
		mName := obj.Name()
		if token.IsExported(mName) {
			mPkg = pkg
		} else {
			mPkg = obj.Pkg()
		}
		name := b.Str(mName).impl
		var skipfn bool
		if !token.IsExported(mName) {
			name = b.Str(abi.FullName(mPkg, mName)).impl
			skipfn = mPkg != pkg
		}
		mSig := m.Type().(*types.Signature)
		var tfn, ifn llvm.Value
		if skipfn {
			tfn = prog.Nil(prog.VoidPtr()).impl
			ifn = tfn
		} else {
			tfn = b.getMethodFunc(mPkg, mName, mSig)
			ifn = tfn
			if _, ok := m.Recv().Underlying().(*types.Pointer); !ok {
				pRecv := types.NewVar(token.NoPos, mPkg, "", types.NewPointer(mSig.Recv().Type()))
				pSig := types.NewSignature(pRecv, mSig.Params(), mSig.Results(), mSig.Variadic())
				ifn = b.getMethodFunc(mPkg, mName, pSig)
			}
		}
		var values []llvm.Value
		values = append(values, name)
		ftyp := prog.Type(m.Type(), InGo)
		values = append(values, b.getAbiType(ftyp.raw.Type).impl)
		values = append(values, ifn)
		values = append(values, tfn)
		fields[i] = llvm.ConstNamedStruct(ft.ll, values)
	}
	return llvm.ConstArray(ft.ll, fields)
}

func (b Builder) getMethodFunc(mPkg *types.Package, mName string, mSig *types.Signature) (tfn llvm.Value) {
	fullName := FuncName(mPkg, mName, mSig.Recv(), false)
	if mSig.TypeParams().Len() > 0 || mSig.RecvTypeParams().Len() > 0 {
		if !b.Pkg.Prog.FuncCompiled(fullName) {
			return
		}
	}
	if b.Pkg.fnlink != nil {
		fullName = b.Pkg.fnlink(fullName)
	}
	return b.Pkg.NewFunc(fullName, mSig, InGo).impl // TODO(xsw): use rawType to speed up
}

/*
	struct Type {
		CommonType (_type)
		Extended
	}

	struct {
		Type
		UncommonType
		[N]Method
	}
*/
func (b Builder) getAbiType(t types.Type) Expr {
	name, _ := b.Pkg.abi.TypeName(t)
	g := b.Pkg.VarOf(name)
	prog := b.Prog
	pkg := b.Pkg
	if g == nil {
		mset, hasUncommon := b.getUncommonMethodSet(t)
		rt := prog.rtNamed(pkg.abi.RuntimeName(t))
		var typ types.Type = rt
		if hasUncommon {
			ut := prog.rtNamed("uncommonType")
			mt := prog.rtNamed("Method")
			fields := []*types.Var{
				types.NewVar(token.NoPos, nil, "T", rt),
				types.NewVar(token.NoPos, nil, "U", ut),
				types.NewVar(token.NoPos, nil, "M", types.NewArray(mt, int64(mset.Len()))),
			}
			typ = types.NewStruct(fields, nil)
		}
		g = pkg.doNewVar(name, prog.Type(types.NewPointer(typ), InGo))
		t = prog.patchType(t)
		fields := b.abiBaseFields(t, hasUncommon)
		if exts := b.getExtendedFields(t, name); len(exts) != 0 {
			fields = append([]llvm.Value{
				llvm.ConstNamedStruct(prog.AbiType().ll, fields),
			}, exts...)
		}
		if hasUncommon {
			fields = []llvm.Value{
				llvm.ConstNamedStruct(prog.Type(rt, InGo).ll, fields),
				b.getUncommonType(t, mset),
				b.getUncommonMethods(t, mset),
			}
		}
		g.impl.SetInitializer(prog.ctx.ConstStruct(fields, false))
		g.impl.SetLinkage(llvm.WeakODRLinkage)
	}
	return Expr{llvm.ConstGEP(g.impl.GlobalValueType(), g.impl, []llvm.Value{
		llvm.ConstInt(prog.Int32().ll, 0, false),
		llvm.ConstInt(prog.Int32().ll, 0, false),
	}), prog.AbiTypePtr()}
}

// -----------------------------------------------------------------------------
