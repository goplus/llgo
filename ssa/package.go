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

	"github.com/goplus/llgo/ssa/abi"
	"github.com/goplus/llvm"
	"golang.org/x/tools/go/types/typeutil"
)

const (
	PkgPython  = "github.com/goplus/llgo/py"
	PkgRuntime = "github.com/goplus/llgo/internal/runtime"
)

// -----------------------------------------------------------------------------

type dbgFlags = int

const (
	DbgFlagInstruction dbgFlags = 1 << iota

	DbgFlagAll = DbgFlagInstruction
)

var (
	debugInstr bool
)

// SetDebug sets debug flags.
func SetDebug(dbgFlags dbgFlags) {
	debugInstr = (dbgFlags & DbgFlagInstruction) != 0
}

// -----------------------------------------------------------------------------

// InitFlags is a set of flags for initializing the LLVM library.
type InitFlags int

const (
	InitNativeTarget InitFlags = 1 << iota
	InitAllTargets
	InitAllTargetInfos
	InitAllTargetMCs

	InitNativeAsmPrinter
	InitAllAsmPrinters

	InitAllAsmParsers

	InitNative = InitNativeTarget | InitNativeAsmPrinter
	InitAll    = InitAllTargets | InitAllAsmParsers | InitAllAsmPrinters | InitAllTargetInfos | InitAllTargetMCs
)

// Initialize initializes the LLVM library.
func Initialize(flags InitFlags) {
	if flags&InitAllTargetInfos != 0 {
		llvm.InitializeAllTargetInfos()
	}
	if flags&InitAllTargets != 0 {
		llvm.InitializeAllTargets()
	}
	if flags&InitAllTargetMCs != 0 {
		llvm.InitializeAllTargetMCs()
	}
	if flags&InitAllAsmParsers != 0 {
		llvm.InitializeAllAsmParsers()
	}
	if flags&InitAllAsmPrinters != 0 {
		llvm.InitializeAllAsmPrinters()
	}
	if flags&InitNativeTarget != 0 {
		llvm.InitializeNativeTarget()
	}
	if flags&InitNativeAsmPrinter != 0 {
		llvm.InitializeNativeAsmPrinter()
	}
}

// -----------------------------------------------------------------------------

type aProgram struct {
	ctx   llvm.Context
	typs  typeutil.Map // rawType -> Type
	gocvt goTypes

	rt    *types.Package
	rtget func() *types.Package

	py    *types.Package
	pyget func() *types.Package

	target *Target
	td     llvm.TargetData
	// tm  llvm.TargetMachine
	named map[string]llvm.Type

	intType   llvm.Type
	int1Type  llvm.Type
	int8Type  llvm.Type
	int16Type llvm.Type
	int32Type llvm.Type
	int64Type llvm.Type
	voidType  llvm.Type
	voidPtrTy llvm.Type

	rtStringTy llvm.Type
	rtEfaceTy  llvm.Type
	rtSliceTy  llvm.Type
	rtMapTy    llvm.Type

	anyTy     Type
	voidTy    Type
	voidPtr   Type
	boolTy    Type
	cstrTy    Type
	cintTy    Type
	stringTy  Type
	uintptrTy Type
	intTy     Type
	uintTy    Type
	f64Ty     Type
	f32Ty     Type
	byteTy    Type
	i32Ty     Type
	u32Ty     Type
	i64Ty     Type
	u64Ty     Type
	pyObjPtr  Type
	pyObjPPtr Type
	abiTyptr  Type
	abiTypptr Type
	efaceTy   Type

	pyImpTy    *types.Signature
	pyNewList  *types.Signature
	pyListSetI *types.Signature
	callArgs   *types.Signature
	callNoArgs *types.Signature
	callOneArg *types.Signature
	callFOArgs *types.Signature
	loadPyModS *types.Signature
	getAttrStr *types.Signature

	paramObjPtr_ *types.Var

	NeedRuntime bool
	NeedPyInit  bool
	is32Bits    bool
}

// A Program presents a program.
type Program = *aProgram

// NewProgram creates a new program.
func NewProgram(target *Target) Program {
	if target == nil {
		target = &Target{}
	}
	ctx := llvm.NewContext()
	td := llvm.NewTargetData("") // TODO(xsw): target config
	/*
		arch := target.GOARCH
		if arch == "" {
			arch = runtime.GOARCH
		}
		sizes := types.SizesFor("gc", arch)

		// TODO(xsw): Finalize may cause panic, so comment it.
		ctx.Finalize()
	*/
	is32Bits := (td.PointerSize() == 4 || target.GOARCH == "x86") // TODO(xsw): remove temp code
	return &aProgram{
		ctx: ctx, gocvt: newGoTypes(),
		target: target, td: td, is32Bits: is32Bits,
		named: make(map[string]llvm.Type),
	}
}

// SetPython sets the Python package.
// Its type can be *types.Package or func() *types.Package.
func (p Program) SetPython(py any) {
	switch v := py.(type) {
	case *types.Package:
		p.py = v
	case func() *types.Package:
		p.pyget = v
	}
}

// SetRuntime sets the runtime.
// Its type can be *types.Package or func() *types.Package.
func (p Program) SetRuntime(runtime any) {
	switch v := runtime.(type) {
	case *types.Package:
		p.rt = v
	case func() *types.Package:
		p.rtget = v
	}
}

func (p Program) runtime() *types.Package {
	if p.rt == nil {
		p.rt = p.rtget()
	}
	p.NeedRuntime = true
	return p.rt
}

func (p Program) python() *types.Package {
	if p.py == nil {
		p.py = p.pyget()
	}
	return p.py
}

func (p Program) rtNamed(name string) *types.Named {
	t := p.runtime().Scope().Lookup(name).Type().(*types.Named)
	t, _ = p.gocvt.cvtNamed(t)
	return t
}

func (p Program) pyNamed(name string) *types.Named {
	// TODO(xsw): does python type need to convert?
	t := p.python().Scope().Lookup(name).Type().(*types.Named)
	return t
}

func (p Program) rtType(name string) Type {
	return p.rawType(p.rtNamed(name))
}

func (p Program) rtEface() llvm.Type {
	if p.rtEfaceTy.IsNil() {
		p.rtEfaceTy = p.rtType("Eface").ll
	}
	return p.rtEfaceTy
}

func (p Program) rtMap() llvm.Type {
	if p.rtMapTy.IsNil() {
		p.rtMapTy = p.rtType("Map").ll
	}
	return p.rtMapTy
}

func (p Program) rtSlice() llvm.Type {
	if p.rtSliceTy.IsNil() {
		p.rtSliceTy = p.rtType("Slice").ll
	}
	return p.rtSliceTy
}

func (p Program) rtString() llvm.Type {
	if p.rtStringTy.IsNil() {
		p.rtStringTy = p.rtType("String").ll
	}
	return p.rtStringTy
}

// NewPackage creates a new package.
func (p Program) NewPackage(name, pkgPath string) Package {
	mod := p.ctx.NewModule(pkgPath)
	// TODO(xsw): Finalize may cause panic, so comment it.
	// mod.Finalize()
	gbls := make(map[string]Global)
	fns := make(map[string]Function)
	stubs := make(map[string]Function)
	pyobjs := make(map[string]PyObjRef)
	pymods := make(map[string]Global)
	p.NeedRuntime = false
	// Don't need reset p.needPyInit here
	// p.needPyInit = false
	ret := &aPackage{
		mod: mod, vars: gbls, fns: fns, stubs: stubs,
		pyobjs: pyobjs, pymods: pymods, Prog: p}
	ret.abi.Init(pkgPath)
	return ret
}

// Tuple returns a tuple type.
func (p Program) Tuple(typs ...Type) Type {
	els := make([]*types.Var, len(typs))
	for i, t := range typs {
		els[i] = types.NewParam(token.NoPos, nil, "", t.raw.Type)
	}
	return p.rawType(types.NewTuple(els...))
}

// Eface returns the empty interface type.
func (p Program) Eface() Type {
	if p.efaceTy == nil {
		p.efaceTy = p.rawType(tyAny)
	}
	return p.efaceTy
}

// AbiTypePtr returns *abi.Type.
func (p Program) AbiTypePtr() Type {
	if p.abiTyptr == nil {
		p.abiTyptr = p.rawType(types.NewPointer(p.rtNamed("Type")))
	}
	return p.abiTyptr
}

// AbiTypePtrPtr returns **abi.Type.
func (p Program) AbiTypePtrPtr() Type {
	if p.abiTypptr == nil {
		p.abiTypptr = p.Pointer(p.AbiTypePtr())
	}
	return p.abiTypptr
}

// PyObjectPtrPtr returns the **py.Object type.
func (p Program) PyObjectPtrPtr() Type {
	if p.pyObjPPtr == nil {
		p.pyObjPPtr = p.Pointer(p.PyObjectPtr())
	}
	return p.pyObjPPtr
}

// PyObjectPtr returns the *py.Object type.
func (p Program) PyObjectPtr() Type {
	if p.pyObjPtr == nil {
		objPtr := types.NewPointer(p.pyNamed("Object"))
		p.pyObjPtr = p.rawType(objPtr)
	}
	return p.pyObjPtr
}

// Void returns void type.
func (p Program) Void() Type {
	if p.voidTy == nil {
		p.voidTy = &aType{p.tyVoid(), rawType{types.Typ[types.Invalid]}, vkInvalid}
	}
	return p.voidTy
}

func (p Program) VoidPtr() Type {
	if p.voidPtr == nil {
		p.voidPtr = p.rawType(types.Typ[types.UnsafePointer])
	}
	return p.voidPtr
}

// Bool returns bool type.
func (p Program) Bool() Type {
	if p.boolTy == nil {
		p.boolTy = p.rawType(types.Typ[types.Bool])
	}
	return p.boolTy
}

func (p Program) CStr() Type {
	if p.cstrTy == nil { // *int8
		p.cstrTy = p.rawType(types.NewPointer(types.Typ[types.Int8]))
	}
	return p.cstrTy
}

func (p Program) String() Type {
	if p.stringTy == nil {
		p.stringTy = p.rawType(types.Typ[types.String])
	}
	return p.stringTy
}

// Any returns any type.
func (p Program) Any() Type {
	if p.anyTy == nil {
		p.anyTy = p.rawType(tyAny)
	}
	return p.anyTy
}

func (p Program) CInt() Type {
	if p.cintTy == nil { // C.int
		p.cintTy = p.rawType(types.Typ[types.Int32]) // TODO(xsw): support 64-bit
	}
	return p.cintTy
}

// Int returns int type.
func (p Program) Int() Type {
	if p.intTy == nil {
		p.intTy = p.rawType(types.Typ[types.Int])
	}
	return p.intTy
}

// Uint returns uint type.
func (p Program) Uint() Type {
	if p.uintTy == nil {
		p.uintTy = p.rawType(types.Typ[types.Uint])
	}
	return p.uintTy
}

// Uintptr returns uintptr type.
func (p Program) Uintptr() Type {
	if p.uintptrTy == nil {
		p.uintptrTy = p.rawType(types.Typ[types.Uintptr])
	}
	return p.uintptrTy
}

// Float64 returns float64 type.
func (p Program) Float64() Type {
	if p.f64Ty == nil {
		p.f64Ty = p.rawType(types.Typ[types.Float64])
	}
	return p.f64Ty
}

// Float32 returns float32 type.
func (p Program) Float32() Type {
	if p.f32Ty == nil {
		p.f32Ty = p.rawType(types.Typ[types.Float32])
	}
	return p.f32Ty
}

// Byte returns byte type.
func (p Program) Byte() Type {
	if p.byteTy == nil {
		p.byteTy = p.rawType(types.Typ[types.Byte])
	}
	return p.byteTy
}

// Int32 returns int32 type.
func (p Program) Int32() Type {
	if p.i32Ty == nil {
		p.i32Ty = p.rawType(types.Typ[types.Int32])
	}
	return p.i32Ty
}

// Uint32 returns uint32 type.
func (p Program) Uint32() Type {
	if p.u32Ty == nil {
		p.u32Ty = p.rawType(types.Typ[types.Uint32])
	}
	return p.u32Ty
}

// Int64 returns int64 type.
func (p Program) Int64() Type {
	if p.i64Ty == nil {
		p.i64Ty = p.rawType(types.Typ[types.Int64])
	}
	return p.i64Ty
}

// Uint64 returns uint64 type.
func (p Program) Uint64() Type {
	if p.u64Ty == nil {
		p.u64Ty = p.rawType(types.Typ[types.Uint64])
	}
	return p.u64Ty
}

// -----------------------------------------------------------------------------

// A Package is a single analyzed Go package containing Members for
// all package-level functions, variables, constants and types it
// declares.  These may be accessed directly via Members, or via the
// type-specific accessor methods Func, Type, Var and Const.
//
// Members also contains entries for "init" (the synthetic package
// initializer) and "init#%d", the nth declared init function,
// and unspecified other things too.
type aPackage struct {
	mod    llvm.Module
	abi    abi.Builder
	abitys []func()
	vars   map[string]Global
	fns    map[string]Function
	stubs  map[string]Function
	pyobjs map[string]PyObjRef
	pymods map[string]Global
	Prog   Program
}

type Package = *aPackage

func (p Package) rtFunc(fnName string) Expr {
	fn := p.Prog.runtime().Scope().Lookup(fnName).(*types.Func)
	name := FullName(fn.Pkg(), fnName)
	sig := fn.Type().(*types.Signature)
	return p.NewFunc(name, sig, InGo).Expr
}

func (p Package) pyFunc(fullName string, sig *types.Signature) Expr {
	p.Prog.NeedPyInit = true
	return p.NewFunc(fullName, sig, InC).Expr
}

func (p Package) closureStub(b Builder, t *types.Struct, v Expr) Expr {
	name := v.impl.Name()
	prog := b.Prog
	nilVal := prog.Null(prog.VoidPtr()).impl
	if fn, ok := p.stubs[name]; ok {
		v = fn.Expr
	} else {
		sig := v.raw.Type.(*types.Signature)
		n := sig.Params().Len()
		nret := sig.Results().Len()
		ctx := types.NewParam(token.NoPos, nil, ClosureCtx, types.Typ[types.UnsafePointer])
		sig = FuncAddCtx(ctx, sig)
		fn := p.NewFunc(ClosureStub+name, sig, InC)
		fn.impl.SetLinkage(llvm.LinkOnceAnyLinkage)
		args := make([]Expr, n)
		for i := 0; i < n; i++ {
			args[i] = fn.Param(i + 1)
		}
		b := fn.MakeBody(1)
		call := b.Call(v, args...)
		call.impl.SetTailCall(true)
		switch nret {
		case 0:
			b.impl.CreateRetVoid()
		default: // TODO(xsw): support multiple return values
			b.impl.CreateRet(call.impl)
		}
		p.stubs[name] = fn
		v = fn.Expr
	}
	return b.aggregateValue(prog.rawType(t), v.impl, nilVal)
}

// -----------------------------------------------------------------------------

// String returns a string representation of the package.
func (p Package) String() string {
	return p.mod.String()
}

// AfterInit is called after the package is initialized (init all packages that depends on).
func (p Package) AfterInit(b Builder, ret BasicBlock) {
	doAfterInit := p.pyHasModSyms()
	if doAfterInit {
		b.SetBlockEx(ret, afterInit)
		p.pyLoadModSyms(b)
	}
}

/*
type CodeGenFileType = llvm.CodeGenFileType

const (
	AssemblyFile = llvm.AssemblyFile
	ObjectFile   = llvm.ObjectFile
)

func (p *Package) CodeGen(ft CodeGenFileType) (ret []byte, err error) {
	buf, err := p.prog.targetMachine().EmitToMemoryBuffer(p.mod, ft)
	if err != nil {
		return
	}
	ret = buf.Bytes()
	buf.Dispose()
	return
}

func (p *Package) Bitcode() []byte {
	buf := llvm.WriteBitcodeToMemoryBuffer(p.mod)
	ret := buf.Bytes()
	buf.Dispose()
	return ret
}

func (p *Package) WriteTo(w io.Writer) (int64, error) {
	n, err := w.Write(p.Bitcode())
	return int64(n), err
}

func (p *Package) WriteFile(file string) (err error) {
	f, err := os.Create(file)
	if err != nil {
		return
	}
	defer f.Close()
	return llvm.WriteBitcodeToFile(p.mod, f)
}
*/

// -----------------------------------------------------------------------------

func (p Program) paramObjPtr() *types.Var {
	if p.paramObjPtr_ == nil {
		objPtr := p.PyObjectPtr().raw.Type
		p.paramObjPtr_ = types.NewParam(token.NoPos, nil, "", objPtr)
	}
	return p.paramObjPtr_
}

// func(*char) *Object
func (p Program) tyImportPyModule() *types.Signature {
	if p.pyImpTy == nil {
		charPtr := types.NewPointer(types.Typ[types.Int8])
		params := types.NewTuple(types.NewParam(token.NoPos, nil, "", charPtr))
		results := types.NewTuple(p.paramObjPtr())
		p.pyImpTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.pyImpTy
}

// func(*Object) *Object
func (p Program) tyCallNoArgs() *types.Signature {
	if p.callNoArgs == nil {
		params := types.NewTuple(p.paramObjPtr())
		p.callNoArgs = types.NewSignatureType(nil, nil, nil, params, params, false)
	}
	return p.callNoArgs
}

// func(*Object, *Object) *Object
func (p Program) tyCallOneArg() *types.Signature {
	if p.callOneArg == nil {
		paramObjPtr := p.paramObjPtr()
		params := types.NewTuple(paramObjPtr, paramObjPtr)
		results := types.NewTuple(paramObjPtr)
		p.callOneArg = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.callOneArg
}

// func(*Object, ...) *Object
func (p Program) tyCallFunctionObjArgs() *types.Signature {
	if p.callFOArgs == nil {
		paramObjPtr := p.paramObjPtr()
		params := types.NewTuple(paramObjPtr, VArg())
		results := types.NewTuple(paramObjPtr)
		p.callFOArgs = types.NewSignatureType(nil, nil, nil, params, results, true)
	}
	return p.callFOArgs
}

/*
// func(*Object, *Object, *Object) *Object
func (p Program) tyCall() *types.Signature {
	if p.callArgs == nil {
		paramObjPtr := p.paramObjPtr()
		params := types.NewTuple(paramObjPtr, paramObjPtr, paramObjPtr)
		results := types.NewTuple(paramObjPtr)
		p.callArgs = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.callArgs
}
*/

// func(*Object, uintptr, *Object) cint
func (p Program) tyListSetItem() *types.Signature {
	if p.pyListSetI == nil {
		paramUintptr := types.NewParam(token.NoPos, nil, "", p.Uintptr().raw.Type)
		paramCInt := types.NewParam(token.NoPos, nil, "", p.CInt().raw.Type)
		paramObjPtr := p.paramObjPtr()
		params := types.NewTuple(paramObjPtr, paramUintptr, paramObjPtr)
		results := types.NewTuple(paramCInt)
		p.pyListSetI = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.pyListSetI
}

// func(uintptr) *Object
func (p Program) tyNewList() *types.Signature {
	if p.pyNewList == nil {
		paramUintptr := types.NewParam(token.NoPos, nil, "", p.Uintptr().raw.Type)
		params := types.NewTuple(paramUintptr)
		results := types.NewTuple(p.paramObjPtr())
		p.pyNewList = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.pyNewList
}

// func(float64) *Object
func (p Program) tyFloatFromDouble() *types.Signature {
	if p.callArgs == nil {
		paramObjPtr := p.paramObjPtr()
		paramFloat := types.NewParam(token.NoPos, nil, "", p.Float64().raw.Type)
		params := types.NewTuple(paramFloat)
		results := types.NewTuple(paramObjPtr)
		p.callArgs = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.callArgs
}

// func(*Object, ...)
func (p Program) tyLoadPyModSyms() *types.Signature {
	if p.loadPyModS == nil {
		paramObjPtr := p.paramObjPtr()
		params := types.NewTuple(paramObjPtr, VArg())
		p.loadPyModS = types.NewSignatureType(nil, nil, nil, params, nil, true)
	}
	return p.loadPyModS
}

// func(*Objecg, *char) *Object
func (p Program) tyGetAttrString() *types.Signature {
	if p.getAttrStr == nil {
		charPtr := types.NewPointer(types.Typ[types.Int8])
		paramObjPtr := p.paramObjPtr()
		params := types.NewTuple(paramObjPtr, types.NewParam(token.NoPos, nil, "", charPtr))
		results := types.NewTuple(paramObjPtr)
		p.getAttrStr = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.getAttrStr
}

// PyInit initializes Python for a main package.
func (p Package) PyInit() bool {
	if fn := p.FuncOf("main"); fn != nil {
		b := fn.NewBuilder()
		b.SetBlockEx(fn.Block(0), AtStart).callPyInit()
		b.Dispose()
		return true
	}
	return false
}

// PyNewModVar creates a new global variable for a Python module.
func (p Package) PyNewModVar(name string, doInit bool) Global {
	if v, ok := p.pymods[name]; ok {
		return v
	}
	prog := p.Prog
	objPtr := prog.PyObjectPtrPtr().raw.Type
	g := p.NewVar(name, objPtr, InC)
	if doInit {
		g.Init(prog.Null(g.Type))
		g.impl.SetLinkage(llvm.LinkOnceAnyLinkage)
	}
	p.pymods[name] = g
	return g
}

// PyImportMod imports a Python module.
func (b Builder) PyImportMod(path string) Expr {
	fnImp := b.Pkg.pyFunc("PyImport_ImportModule", b.Prog.tyImportPyModule())
	return b.Call(fnImp, b.CStr(path))
}

// PyLoadModSyms loads python objects from specified module.
func (b Builder) PyLoadModSyms(modName string, objs ...PyObjRef) Expr {
	pkg := b.Pkg
	fnLoad := pkg.pyFunc("llgoLoadPyModSyms", b.Prog.tyLoadPyModSyms())
	modPtr := pkg.PyNewModVar(modName, false).Expr
	mod := b.Load(modPtr)
	args := make([]Expr, 1, len(objs)*2+2)
	args[0] = mod
	nbase := len(modName) + 1
	for _, o := range objs {
		fullName := o.impl.Name()
		name := fullName[nbase:]
		args = append(args, b.CStr(name))
		args = append(args, o.Expr)
	}
	prog := b.Prog
	args = append(args, prog.Null(prog.CStr()))
	return b.Call(fnLoad, args...)
}

func (b Builder) pyCall(fn Expr, args []Expr) (ret Expr) {
	prog := b.Prog
	pkg := b.Pkg
	fn = b.Load(fn)
	sig := fn.raw.Type.(*types.Signature)
	params := sig.Params()
	n := params.Len()
	switch n {
	case 0:
		call := pkg.pyFunc("PyObject_CallNoArgs", prog.tyCallNoArgs())
		ret = b.Call(call, fn)
	case 1:
		if !sig.Variadic() {
			call := pkg.pyFunc("PyObject_CallOneArg", prog.tyCallOneArg())
			return b.Call(call, fn, args[0])
		}
		fallthrough
	default:
		call := pkg.pyFunc("PyObject_CallFunctionObjArgs", prog.tyCallFunctionObjArgs())
		n = len(args)
		callargs := make([]Expr, n+2)
		callargs[0] = fn
		copy(callargs[1:], args)
		callargs[n+1] = prog.PyNull()
		ret = b.Call(call, callargs...)
	}
	return
}

// PyNewList(n uintptr) *Object
func (b Builder) PyNewList(n Expr) (ret Expr) {
	prog := b.Prog
	fn := b.Pkg.pyFunc("PyList_New", prog.tyNewList())
	return b.Call(fn, n)
}

// PyListSetItem(list *Object, index uintptr, item *Object) c.Int
func (b Builder) PyListSetItem(list, index, item Expr) (ret Expr) {
	prog := b.Prog
	fn := b.Pkg.pyFunc("PyList_SetItem", prog.tyListSetItem())
	return b.Call(fn, list, index, item)
}

// PyList(args ...Expr) *Object
func (b Builder) PyList(args ...Expr) (ret Expr) {
	prog := b.Prog
	n := len(args)
	uintPtr := prog.Uintptr()
	list := b.PyNewList(prog.IntVal(uint64(n), uintPtr))
	for i, arg := range args {
		b.PyListSetItem(list, prog.IntVal(uint64(i), uintPtr), b.PyVal(arg))
	}
	return list
}

// PyVal(v any) *Object
func (b Builder) PyVal(v Expr) (ret Expr) {
	switch t := v.raw.Type.(type) {
	case *types.Basic:
		switch t.Kind() {
		case types.Float64:
			return b.PyFloat(v)
		default:
			panic("PyVal: todo")
		}
	default:
		return v
	}
}

// PyFloat(fltVal float64) *Object
func (b Builder) PyFloat(fltVal Expr) (ret Expr) {
	fn := b.Pkg.pyFunc("PyFloat_FromDouble", b.Prog.tyFloatFromDouble())
	return b.Call(fn, fltVal)
}

// callPyInit calls Py_Initialize.
func (b Builder) callPyInit() (ret Expr) {
	fn := b.Pkg.pyFunc("Py_Initialize", NoArgsNoRet)
	return b.Call(fn)
}

var (
	NoArgsNoRet = types.NewSignatureType(nil, nil, nil, nil, nil, false)
)

// -----------------------------------------------------------------------------
