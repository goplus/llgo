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
	"runtime"
	"strconv"
	"unsafe"

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
	sizes types.Sizes  // provided by Go compiler
	gocvt goTypes

	rt    *types.Package
	rtget func() *types.Package

	py    *types.Package
	pyget func() *types.Package

	target *Target
	td     llvm.TargetData
	// tm  llvm.TargetMachine
	named   map[string]llvm.Type
	fnnamed map[string]int

	intType   llvm.Type
	int1Type  llvm.Type
	int8Type  llvm.Type
	int16Type llvm.Type
	int32Type llvm.Type
	int64Type llvm.Type
	voidType  llvm.Type
	voidPtrTy llvm.Type

	c64Type  llvm.Type
	c128Type llvm.Type

	rtStringTy llvm.Type
	rtEfaceTy  llvm.Type
	rtIfaceTy  llvm.Type
	rtSliceTy  llvm.Type
	rtMapTy    llvm.Type
	rtChanTy   llvm.Type

	anyTy     Type
	voidTy    Type
	voidPtr   Type
	voidPPtr  Type
	boolTy    Type
	cstrTy    Type
	cintTy    Type
	cintPtr   Type
	stringTy  Type
	uintptrTy Type
	intTy     Type
	uintTy    Type
	f64Ty     Type
	f32Ty     Type
	c128Ty    Type
	c64Ty     Type
	byteTy    Type
	i32Ty     Type
	u32Ty     Type
	i64Ty     Type
	u64Ty     Type

	pyObjPtr  Type
	pyObjPPtr Type

	abiTyPtr  Type
	abiTyPPtr Type
	deferTy   Type
	deferPtr  Type

	pyImpTy      *types.Signature
	pyNewList    *types.Signature
	pyListSetI   *types.Signature
	pyNewTuple   *types.Signature
	pyTupleSetI  *types.Signature
	floatFromDbl *types.Signature
	callNoArgs   *types.Signature
	callOneArg   *types.Signature
	callFOArgs   *types.Signature
	loadPyModS   *types.Signature
	getAttrStr   *types.Signature
	pyUniStr     *types.Signature

	mallocTy *types.Signature
	freeTy   *types.Signature

	createKeyTy *types.Signature
	createThdTy *types.Signature
	getSpecTy   *types.Signature
	setSpecTy   *types.Signature
	routineTy   *types.Signature
	destructTy  *types.Signature
	sigsetjmpTy *types.Signature
	sigljmpTy   *types.Signature

	paramObjPtr_ *types.Var

	ptrSize int

	NeedRuntime bool
	NeedPyInit  bool
	is32Bits    bool
}

// A Program presents a program.
type Program = *aProgram

// NewProgram creates a new program.
func NewProgram(target *Target) Program {
	if target == nil {
		target = &Target{
			GOOS:   runtime.GOOS,
			GOARCH: runtime.GOARCH,
		}
	}
	ctx := llvm.NewContext()
	td := target.targetData() // TODO(xsw): target config
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
		ptrSize: td.PointerSize(), named: make(map[string]llvm.Type), fnnamed: make(map[string]int),
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

func (p Program) SetTypeBackground(fullName string, bg Background) {
	p.gocvt.typbg[fullName] = bg
}

func (p Program) runtime() *types.Package {
	if p.rt == nil {
		p.rt = p.rtget()
	}
	p.NeedRuntime = true
	return p.rt
}

func (p Program) rtNamed(name string) *types.Named {
	t := p.runtime().Scope().Lookup(name).Type().(*types.Named)
	t, _ = p.gocvt.cvtNamed(t)
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

func (p Program) rtIface() llvm.Type {
	if p.rtIfaceTy.IsNil() {
		p.rtIfaceTy = p.rtType("Iface").ll
	}
	return p.rtIfaceTy
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

func (p Program) rtChan() llvm.Type {
	if p.rtChanTy.IsNil() {
		p.rtChanTy = p.rtType("Chan").ll
	}
	return p.rtChanTy
}

func (p Program) tyComplex64() llvm.Type {
	if p.c64Type.IsNil() {
		ctx := p.ctx
		f32 := ctx.FloatType()
		p.c64Type = ctx.StructType([]llvm.Type{f32, f32}, false)
	}
	return p.c64Type
}

func (p Program) tyComplex128() llvm.Type {
	if p.c128Type.IsNil() {
		ctx := p.ctx
		f64 := ctx.DoubleType()
		p.c128Type = ctx.StructType([]llvm.Type{f64, f64}, false)
	}
	return p.c128Type
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
	strs := make(map[string]llvm.Value)
	named := make(map[types.Type]Expr)
	p.NeedRuntime = false
	// Don't need reset p.needPyInit here
	// p.needPyInit = false
	ret := &aPackage{
		mod: mod, vars: gbls, fns: fns, stubs: stubs,
		pyobjs: pyobjs, pymods: pymods, strs: strs, named: named, Prog: p}
	ret.abi.Init(pkgPath)
	return ret
}

// Struct returns a struct type.
func (p Program) Struct(typs ...Type) Type {
	els := make([]*types.Var, len(typs))
	for i, t := range typs {
		els[i] = types.NewParam(token.NoPos, nil, "_llgo_f"+strconv.Itoa(i), t.raw.Type)
	}
	return p.rawType(types.NewStruct(els, nil))
}

// Defer returns runtime.Defer type.
func (p Program) Defer() Type {
	if p.deferTy == nil {
		p.deferTy = p.rtType("Defer")
	}
	return p.deferTy
}

// DeferPtr returns *runtime.Defer type.
func (p Program) DeferPtr() Type {
	if p.deferPtr == nil {
		p.deferPtr = p.Pointer(p.Defer())
	}
	return p.deferPtr
}

// AbiTypePtr returns *abi.Type type.
func (p Program) AbiTypePtr() Type {
	if p.abiTyPtr == nil {
		p.abiTyPtr = p.rawType(types.NewPointer(p.rtNamed("Type")))
	}
	return p.abiTyPtr
}

// AbiTypePtrPtr returns **abi.Type type.
func (p Program) AbiTypePtrPtr() Type {
	if p.abiTyPPtr == nil {
		p.abiTyPPtr = p.Pointer(p.AbiTypePtr())
	}
	return p.abiTyPPtr
}

// Void returns void type.
func (p Program) Void() Type {
	if p.voidTy == nil {
		p.voidTy = &aType{p.tyVoid(), rawType{types.Typ[types.Invalid]}, vkInvalid}
	}
	return p.voidTy
}

// VoidPtr returns *void type.
func (p Program) VoidPtr() Type {
	if p.voidPtr == nil {
		p.voidPtr = p.rawType(types.Typ[types.UnsafePointer])
	}
	return p.voidPtr
}

// VoidPtrPtr returns **void type.
func (p Program) VoidPtrPtr() Type {
	if p.voidPPtr == nil {
		p.voidPPtr = p.rawType(types.NewPointer(types.Typ[types.UnsafePointer]))
	}
	return p.voidPPtr
}

// Bool returns bool type.
func (p Program) Bool() Type {
	if p.boolTy == nil {
		p.boolTy = p.rawType(types.Typ[types.Bool])
	}
	return p.boolTy
}

// CStr returns *int8 type.
func (p Program) CStr() Type {
	if p.cstrTy == nil { // *int8
		p.cstrTy = p.rawType(types.NewPointer(types.Typ[types.Int8]))
	}
	return p.cstrTy
}

// String returns string type.
func (p Program) String() Type {
	if p.stringTy == nil {
		p.stringTy = p.rawType(types.Typ[types.String])
	}
	return p.stringTy
}

// Any returns the any (empty interface) type.
func (p Program) Any() Type {
	if p.anyTy == nil {
		p.anyTy = p.rawType(tyAny)
	}
	return p.anyTy
}

/*
// Eface returns the empty interface type.
// It is equivalent to Any.
func (p Program) Eface() Type {
	return p.Any()
}
*/

// CIntPtr returns *c.Int type.
func (p Program) CIntPtr() Type {
	if p.cintPtr == nil {
		p.cintPtr = p.Pointer(p.CInt())
	}
	return p.cintPtr
}

// CInt returns c.Int type.
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

// Complex128 returns complex128 type.
func (p Program) Complex128() Type {
	if p.c128Ty == nil {
		p.c128Ty = p.rawType(types.Typ[types.Complex128])
	}
	return p.c128Ty
}

// Complex64 returns complex64 type.
func (p Program) Complex64() Type {
	if p.c64Ty == nil {
		p.c64Ty = p.rawType(types.Typ[types.Complex64])
	}
	return p.c64Ty
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
	mod llvm.Module
	abi abi.Builder

	Prog Program

	vars   map[string]Global
	fns    map[string]Function
	stubs  map[string]Function
	pyobjs map[string]PyObjRef
	pymods map[string]Global
	strs   map[string]llvm.Value
	named  map[types.Type]Expr
	afterb unsafe.Pointer
	patch  func(types.Type) types.Type
	fnlink func(string) string

	iRoutine int
}

type Package = *aPackage

func (p Package) rtFunc(fnName string) Expr {
	fn := p.Prog.runtime().Scope().Lookup(fnName).(*types.Func)
	name := FullName(fn.Pkg(), fnName)
	sig := fn.Type().(*types.Signature)
	return p.NewFunc(name, sig, InGo).Expr
}

func (p Package) cFunc(fullName string, sig *types.Signature) Expr {
	return p.NewFunc(fullName, sig, InC).Expr
}

const (
	closureCtx  = "__llgo_ctx"
	closureStub = "__llgo_stub."
)

func (p Package) closureStub(b Builder, t types.Type, v Expr) Expr {
	name := v.impl.Name()
	prog := b.Prog
	nilVal := prog.Nil(prog.VoidPtr()).impl
	if fn, ok := p.stubs[name]; ok {
		v = fn.Expr
	} else {
		sig := v.raw.Type.(*types.Signature)
		n := sig.Params().Len()
		nret := sig.Results().Len()
		ctx := types.NewParam(token.NoPos, nil, closureCtx, types.Typ[types.UnsafePointer])
		sig = FuncAddCtx(ctx, sig)
		fn := p.NewFunc(closureStub+name, sig, InC)
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

// Path returns the package path.
func (p Package) Path() string {
	return p.abi.Pkg
}

// String returns a string representation of the package.
func (p Package) String() string {
	return p.mod.String()
}

// SetPatch sets a patch function.
func (p Package) SetPatch(fn func(types.Type) types.Type) {
	p.patch = fn
}

// SetResolveLinkname sets a function to resolve linkname.
func (p Package) SetResolveLinkname(fn func(string) string) {
	p.fnlink = fn
}

// -----------------------------------------------------------------------------

func (p Package) afterBuilder() Builder {
	if p.afterb == nil {
		fn := p.NewFunc(p.Path()+".init$after", NoArgsNoRet, InC)
		fnb := fn.MakeBody(1)
		p.afterb = unsafe.Pointer(fnb)
	}
	return Builder(p.afterb)
}

// AfterInit is called after the package is initialized (init all packages that depends on).
func (p Package) AfterInit(b Builder, ret BasicBlock) {
	p.keyInit(deferKey)
	doAfterb := p.afterb != nil
	doPyLoadModSyms := p.pyHasModSyms()
	if doAfterb || doPyLoadModSyms {
		b.SetBlockEx(ret, afterInit, false)
		if doAfterb {
			afterb := Builder(p.afterb)
			afterb.Return()
			b.Call(afterb.Func.Expr)
		}
		if doPyLoadModSyms {
			p.pyLoadModSyms(b)
		}
	}
}

// -----------------------------------------------------------------------------

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
