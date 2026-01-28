/*
 * Copyright (c) 2024 The XGo Authors (xgo.dev). All rights reserved.
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
	"crypto/sha256"
	"encoding/binary"
	"go/ast"
	"go/token"
	"go/types"
	"sort"

	"github.com/goplus/llgo/ssa/abi"
	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------

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
	// func(unsafe.Pointer, unsafe.Pointer) bool
	equalFunc = types.NewSignature(nil, types.NewTuple(types.NewVar(token.NoPos, nil, "", types.Typ[types.UnsafePointer]),
		types.NewVar(token.NoPos, nil, "", types.Typ[types.UnsafePointer])),
		types.NewTuple(types.NewVar(token.NoPos, nil, "", types.Typ[types.Bool])), false)
	// func(p unsafe.Pointer, h uintptr) uintptr
	hashFunc = types.NewSignature(nil, types.NewTuple(types.NewVar(token.NoPos, nil, "", types.Typ[types.UnsafePointer]),
		types.NewVar(token.NoPos, nil, "", types.Typ[types.Uintptr])),
		types.NewTuple(types.NewVar(token.NoPos, nil, "", types.Typ[types.Uintptr])), false)
)

func (b Builder) abiCommonFields(t types.Type, name string, hasUncommon bool) (fields []llvm.Value) {
	prog := b.Prog
	pkg := b.Pkg
	ab := pkg.abi
	// Size uintptr
	fields = append(fields, prog.IntVal(uint64(ab.Size(t)), prog.Uintptr()).impl)
	// PtrBytes uintptr
	fields = append(fields, prog.IntVal(uint64(ab.PtrBytes(t)), prog.Uintptr()).impl)
	// Hash uint32
	h := sha256.Sum256([]byte(name))
	hash := binary.LittleEndian.Uint32(h[:4])
	fields = append(fields, prog.IntVal(uint64(hash), prog.Uint32()).impl)
	// TFlag uint8
	tflag := ab.TFlag(t)
	if hasUncommon {
		tflag |= abi.TFlagUncommon
	}
	fields = append(fields, prog.IntVal(uint64(tflag), prog.Byte()).impl)
	// Align uint8
	align := prog.IntVal(uint64(ab.Align(t)), prog.Byte()).impl
	fields = append(fields, align)
	// FieldAlign uint8
	fieldAlign := prog.IntVal(uint64(ab.FieldAlign(t)), prog.Byte()).impl
	fields = append(fields, fieldAlign)
	// Kind uint8
	kind := uint8(ab.Kind(t))
	if k, _, _ := abi.DataKindOf(t, 0, prog.is32Bits); k != abi.Indirect {
		kind |= uint8(abi.KindDirectIface)
	}
	fields = append(fields, prog.IntVal(uint64(kind), prog.Byte()).impl)
	// Equal func(unsafe.Pointer, unsafe.Pointer) bool
	var equal Expr
	switch name := ab.EqualName(t); name {
	case "":
		equal = prog.Nil(prog.Type(equalFunc, InGo))
	case "structequal", "arrayequal":
		equal = b.Pkg.rtFunc(name)
		env := b.abiType(t)
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
		fields = append(fields, b.abiType(types.NewPointer(t)).impl)
	}
	return
}

func (b Builder) rtClosure(name string) Expr {
	fn := b.Pkg.rtFunc(name)
	typ := b.Prog.Type(fn.raw.Type, InGo)
	fn = checkExpr(fn, typ.raw.Type, b)
	return fn
}

func (b Builder) recordTypeRef(owner llvm.Value, child types.Type) {
	if b.Pkg == nil || !b.Prog.emitReloc || owner.IsNil() {
		return
	}
	childVal := b.abiType(child).impl
	nilPtr := llvm.ConstNull(b.Prog.tyVoidPtr())
	b.Pkg.addReloc(relocTypeRef, owner, childVal, 0, nilPtr, nilPtr)
}

func (b Builder) recordTypeRefs(owner llvm.Value, t types.Type) {
	if b.Pkg == nil || !b.Prog.emitReloc || owner.IsNil() {
		return
	}
	ut := types.Unalias(t)
	if named, ok := ut.(*types.Named); ok {
		// Named types record PtrToThis of the named type itself, but should
		// only record direct child types from the underlying form.
		b.recordTypeRef(owner, types.NewPointer(named))
		b.recordTypeRefsDirect(owner, named.Underlying())
		return
	}
	b.recordTypeRefsDirect(owner, ut)
	if _, ok := ut.(*types.Pointer); !ok {
		b.recordTypeRef(owner, types.NewPointer(t))
	}
}

func (b Builder) recordTypeRefsDirect(owner llvm.Value, t types.Type) {
	ut := types.Unalias(t)
	switch typ := ut.(type) {
	case *types.Pointer:
		b.recordTypeRef(owner, typ.Elem())
	case *types.Chan:
		b.recordTypeRef(owner, typ.Elem())
	case *types.Slice:
		b.recordTypeRef(owner, typ.Elem())
	case *types.Array:
		b.recordTypeRef(owner, typ.Elem())
	case *types.Map:
		b.recordTypeRef(owner, typ.Key())
		b.recordTypeRef(owner, typ.Elem())
	case *types.Signature:
		for i := 0; i < typ.Params().Len(); i++ {
			b.recordTypeRef(owner, typ.Params().At(i).Type())
		}
		for i := 0; i < typ.Results().Len(); i++ {
			b.recordTypeRef(owner, typ.Results().At(i).Type())
		}
	case *types.Struct:
		for i := 0; i < typ.NumFields(); i++ {
			b.recordTypeRef(owner, typ.Field(i).Type())
		}
	case *types.Interface:
		n := typ.NumMethods()
		for i := 0; i < n; i++ {
			f := typ.Method(i)
			ftyp := funcType(b.Prog, f.Type())
			b.recordTypeRef(owner, ftyp)
		}
	}
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
	g := b.Pkg.VarOf(name)
	if g == nil {
		ft := prog.rtType("structfield")
		typ := prog.rawType(t)
		fields := make([]llvm.Value, n)
		for i := 0; i < n; i++ {
			f := t.Field(i)
			var values []llvm.Value
			values = append(values, b.Str(f.Name()).impl)
			values = append(values, b.abiType(f.Type()).impl)
			values = append(values, prog.IntVal(prog.OffsetOf(typ, i), prog.Uintptr()).impl)
			values = append(values, b.Str(t.Tag(i)).impl)
			values = append(values, prog.BoolVal(f.Embedded()).impl)
			fields[i] = llvm.ConstNamedStruct(ft.ll, values)
		}
		atyp := prog.rawType(types.NewArray(ft.RawType(), int64(n)))
		data := Expr{llvm.ConstArray(ft.ll, fields), atyp}
		g = b.Pkg.doNewVar(name, prog.Pointer(atyp))
		g.Init(data)
		g.impl.SetGlobalConstant(true)
		g.impl.SetLinkage(llvm.WeakODRLinkage)
	}
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
			ftyp := funcType(prog, f.Type())
			values = append(values, b.abiType(ftyp).impl)
			fields[i] = llvm.ConstNamedStruct(ft.ll, values)
		}
		atyp := prog.rawType(types.NewArray(ft.RawType(), int64(n)))
		data := Expr{llvm.ConstArray(ft.ll, fields), atyp}
		g = b.Pkg.doNewVar(name, prog.Pointer(atyp))
		g.Init(data)
		g.impl.SetGlobalConstant(true)
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
	if n == 0 {
		return prog.Nil(prog.rtType("Slice")).impl
	}
	g := b.Pkg.VarOf(name)
	if g == nil {
		fields := make([]llvm.Value, n)
		for i := 0; i < n; i++ {
			fields[i] = b.abiType(t.At(i).Type()).impl
		}
		ft := prog.AbiTypePtr()
		atyp := prog.rawType(types.NewArray(ft.RawType(), int64(n)))
		data := Expr{llvm.ConstArray(ft.ll, fields), atyp}
		g = b.Pkg.doNewVar(name, prog.Pointer(atyp))
		g.Init(data)
		g.impl.SetGlobalConstant(true)
		g.impl.SetLinkage(llvm.WeakODRLinkage)
	}
	size := uint64(n)
	return llvm.ConstNamedStruct(prog.rtType("Slice").ll, []llvm.Value{
		g.impl,
		prog.IntVal(size, prog.Int()).impl,
		prog.IntVal(size, prog.Int()).impl,
	})
}

func (b Builder) abiExtendedFields(t types.Type, name string) (fields []llvm.Value) {
	prog := b.Prog
	pkg := b.Pkg
	switch t := types.Unalias(t).(type) {
	case *types.Basic:
	case *types.Pointer:
		fields = []llvm.Value{
			b.abiType(t.Elem()).impl,
		}
	case *types.Chan:
		dir, _ := abi.ChanDir(t.Dir())
		fields = []llvm.Value{
			b.abiType(t.Elem()).impl,
			prog.IntVal(uint64(dir), prog.Int()).impl,
		}
	case *types.Slice:
		fields = []llvm.Value{
			b.abiType(t.Elem()).impl,
		}
	case *types.Array:
		fields = []llvm.Value{
			b.abiType(t.Elem()).impl,
			b.abiType(types.NewSlice(t.Elem())).impl,
			prog.IntVal(uint64(t.Len()), prog.Uintptr()).impl,
		}
	case *types.Map:
		bucket := pkg.abi.MapBucket(t)
		flags := pkg.abi.MapFlags(t)
		hash := b.Pkg.rtFunc("typehash")
		env := b.abiType(t.Key())
		hasher := b.aggregateValue(prog.Type(hashFunc, InGo), hash.impl, env.impl)
		fields = []llvm.Value{
			b.abiType(t.Key()).impl,
			b.abiType(t.Elem()).impl,
			b.abiType(bucket).impl,
			hasher.impl,
			prog.IntVal(uint64(pkg.abi.Size(t.Key())), prog.Byte()).impl,
			prog.IntVal(uint64(pkg.abi.Size(t.Elem())), prog.Byte()).impl,
			prog.IntVal(uint64(pkg.abi.Size(bucket)), prog.Uint16()).impl,
			prog.IntVal(uint64(flags), prog.Uint32()).impl,
		}
	case *types.Signature:
		name, _ := b.Pkg.abi.TypeName(t)
		fields = []llvm.Value{
			b.abiTuples(t.Params(), name+"$in"),
			b.abiTuples(t.Results(), name+"$out"),
		}
	case *types.Struct:
		name, _ = b.Pkg.abi.TypeName(t)
		var pkgPath string
		n := t.NumFields()
		for i := 0; i < n; i++ {
			if f := t.Field(i); !f.Exported() {
				if pkg := f.Pkg(); pkg != nil {
					pkgPath = pkg.Path()
					break
				}
			}
		}
		fields = []llvm.Value{
			b.Str(pkgPath).impl,
			b.abiStructFields(t, name+"$fields"),
		}
	case *types.Interface:
		name, _ = b.Pkg.abi.TypeName(t)
		fields = []llvm.Value{
			b.Str(pkg.Path()).impl,
			b.abiInterfaceImethods(t, name+"$imethods"),
		}
	case *types.Named:
		return b.abiExtendedFields(t.Underlying(), name)
	}
	return
}

func (b Builder) abiUncommonPkg(t types.Type) (*types.Package, string) {
retry:
	switch typ := types.Unalias(t).(type) {
	case *types.Pointer:
		t = typ.Elem()
		goto retry
	case *types.Named:
		pkg := typ.Obj().Pkg()
		return pkg, abi.PathOf(pkg)
	}
	return nil, b.Pkg.Path()
}

func (b Builder) abiUncommonMethodSet(t types.Type) (mset *types.MethodSet, ok bool) {
	prog := b.Prog
	switch t := types.Unalias(t).(type) {
	case *types.Named:
		if _, b := t.Underlying().(*types.Interface); b {
			return
		}
		mset := types.NewMethodSet(t)
		if mset.Len() != 0 {
			if prog.compileMethods != nil {
				prog.compileMethods(b.Pkg, t)
			}
		}
		return mset, true
	case *types.Struct, *types.Pointer:
		if mset := types.NewMethodSet(t); mset.Len() != 0 {
			if prog.compileMethods != nil {
				prog.compileMethods(b.Pkg, t)
			}
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

func (b Builder) abiUncommonType(t types.Type, mset *types.MethodSet) llvm.Value {
	prog := b.Prog
	ft := prog.rtType("uncommonType")
	var fields []llvm.Value
	_, pkgPath := b.abiUncommonPkg(t)
	fields = append(fields, b.Str(pkgPath).impl)
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

func (b Builder) abiUncommonMethods(t types.Type, mset *types.MethodSet, owner llvm.Value) llvm.Value {
	prog := b.Prog
	ft := prog.rtType("Method")
	n := mset.Len()
	fields := make([]llvm.Value, n)
	pkg, pkgPath := b.abiUncommonPkg(t)
	anonymous := pkg == nil
	if anonymous {
		pkg = types.NewPackage(b.Pkg.Path(), "")
	}
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
			skipfn = PathOf(mPkg) != pkgPath
		}
		mSig := m.Type().(*types.Signature)
		var tfn, ifn llvm.Value
		if skipfn {
			tfn = prog.Nil(prog.VoidPtr()).impl
			ifn = tfn
		} else {
			tfn = b.abiMethodFunc(anonymous, mPkg, mName, mSig)
			ifn = tfn
			if _, ok := m.Recv().Underlying().(*types.Pointer); !ok {
				pRecv := types.NewVar(token.NoPos, mPkg, "", types.NewPointer(mSig.Recv().Type()))
				pSig := types.NewSignature(pRecv, mSig.Params(), mSig.Results(), mSig.Variadic())
				ifn = b.abiMethodFunc(anonymous, mPkg, mName, pSig)
			}
		}
		var values []llvm.Value
		values = append(values, name)
		ftyp := funcType(prog, m.Type())
		mtypVal := b.abiType(ftyp).impl
		values = append(values, mtypVal)
		values = append(values, ifn)
		values = append(values, tfn)
		fields[i] = llvm.ConstNamedStruct(ft.ll, values)

		// Record reloc metadata (method offsets) if enabled.
		if b.Pkg != nil {
			pkg := b.Pkg
			nilPtr := llvm.ConstNull(pkg.Prog.tyVoidPtr())
			// Use relocString for a stable pointer to the method name (avoid casting runtime.String).
			infoVal := pkg.relocString(mName)
			pkg.addReloc(relocMethodOff, owner, mtypVal, int64(i), infoVal, nilPtr)
			pkg.addReloc(relocMethodOff, owner, ifn, int64(i), nilPtr, nilPtr)
			pkg.addReloc(relocMethodOff, owner, tfn, int64(i), nilPtr, nilPtr)
		}
	}
	return llvm.ConstArray(ft.ll, fields)
}

// closure func type
func funcType(prog Program, typ types.Type) types.Type {
	ftyp := prog.Type(typ, InGo)
	return ftyp.raw.Type.(*types.Struct).Field(0).Type()
}

func (b Builder) abiMethodFunc(anonymous bool, mPkg *types.Package, mName string, mSig *types.Signature) (tfn llvm.Value) {
	var fullName string
	if anonymous {
		fullName = b.Pkg.Path() + "." + mSig.Recv().Type().String() + "." + mName
	} else {
		fullName = FuncName(mPkg, mName, mSig.Recv(), false)
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
func (b Builder) abiType(t types.Type) Expr {
	name, _ := b.Pkg.abi.TypeName(t)
	g := b.Pkg.VarOf(name)
	prog := b.Prog
	pkg := b.Pkg
	if g == nil {
		if prog.patchType != nil {
			t = prog.patchType(t)
		}
		mset, hasUncommon := b.abiUncommonMethodSet(t)
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
		b.recordTypeRefs(g.impl, t)
		fields := b.abiCommonFields(t, name, hasUncommon)
		if exts := b.abiExtendedFields(t, name); len(exts) != 0 {
			fields = append([]llvm.Value{
				llvm.ConstNamedStruct(prog.AbiType().ll, fields),
			}, exts...)
		}
		if hasUncommon {
			fields = []llvm.Value{
				llvm.ConstNamedStruct(prog.Type(rt, InGo).ll, fields),
				b.abiUncommonType(t, mset),
				b.abiUncommonMethods(t, mset, g.impl),
			}
		}
		g.impl.SetInitializer(prog.ctx.ConstStruct(fields, false))
		g.impl.SetGlobalConstant(true)
		g.impl.SetLinkage(llvm.WeakODRLinkage)
		prog.abiSymbol[name] = g.Type
	}
	return Expr{llvm.ConstGEP(g.impl.GlobalValueType(), g.impl, []llvm.Value{
		llvm.ConstInt(prog.Int32().ll, 0, false),
		llvm.ConstInt(prog.Int32().ll, 0, false),
	}), prog.AbiTypePtr()}
}

func (p Package) getAbiTypes(name string) Expr {
	prog := p.Prog
	names := make([]string, len(prog.abiSymbol))
	n := 0
	for k, _ := range prog.abiSymbol {
		names[n] = k
		n++
	}
	sort.Strings(names)
	fields := make([]llvm.Value, len(names))
	for i, name := range names {
		g := p.doNewVar(name, prog.abiSymbol[name])
		g.impl.SetLinkage(llvm.ExternalLinkage)
		g.impl.SetGlobalConstant(true)
		ptr := Expr{llvm.ConstGEP(g.impl.GlobalValueType(), g.impl, []llvm.Value{
			llvm.ConstInt(prog.Int32().ll, 0, false),
			llvm.ConstInt(prog.Int32().ll, 0, false),
		}), prog.AbiTypePtr()}
		fields[i] = ptr.impl
	}
	ft := prog.AbiTypePtr()
	atyp := prog.rawType(types.NewArray(ft.RawType(), int64(len(names))))
	data := Expr{llvm.ConstArray(ft.ll, fields), atyp}
	array := p.doNewVar(name+"$array", prog.Pointer(atyp))
	array.Init(data)
	array.impl.SetGlobalConstant(true)
	size := uint64(len(names))
	typ := prog.Slice(prog.AbiTypePtr())
	g := p.doNewVar(name+"$slice", prog.Pointer(typ))
	g.impl.SetInitializer(prog.ctx.ConstStruct([]llvm.Value{
		array.impl,
		prog.IntVal(size, prog.Int()).impl,
		prog.IntVal(size, prog.Int()).impl,
	}, false))
	g.impl.SetGlobalConstant(true)
	return g.Expr
}

func (p Package) InitAbiTypes(fname string) Function {
	if len(p.Prog.abiSymbol) == 0 {
		return nil
	}
	prog := p.Prog
	initFn := p.NewFunc(fname, NoArgsNoRet, InC)
	b := initFn.MakeBody(1)
	g := p.NewVarEx(PkgRuntime+".typelist", prog.Pointer(prog.Slice(prog.AbiTypePtr())))
	b.Store(g.Expr, b.Load(p.getAbiTypes(fname)))
	b.Return()
	return initFn
}

// -----------------------------------------------------------------------------
