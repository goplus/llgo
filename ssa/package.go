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

	"github.com/goplus/llvm"
	"golang.org/x/tools/go/types/typeutil"
)

const (
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
	rtIfaceTy  llvm.Type
	rtSliceTy  llvm.Type
	rtMapTy    llvm.Type

	anyTy     Type
	voidTy    Type
	voidPtr   Type
	boolTy    Type
	cstrTy    Type
	stringTy  Type
	uintptrTy Type
	intTy     Type
	f64Ty     Type

	needRuntime bool
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
	return &aProgram{ctx: ctx, gocvt: newGoTypes(), target: target, td: td, named: make(map[string]llvm.Type)}
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

// NeedRuntime returns if the current package needs runtime.
func (p Program) NeedRuntime() bool {
	return p.needRuntime
}

func (p Program) runtime() *types.Package {
	if p.rt == nil {
		p.rt = p.rtget()
	}
	p.needRuntime = true
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

func (p Program) rtIface() llvm.Type {
	if p.rtIfaceTy.IsNil() {
		p.rtIfaceTy = p.rtType("Interface").ll
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

// NewPackage creates a new package.
func (p Program) NewPackage(name, pkgPath string) Package {
	mod := p.ctx.NewModule(pkgPath)
	// TODO(xsw): Finalize may cause panic, so comment it.
	// mod.Finalize()
	gbls := make(map[string]Global)
	fns := make(map[string]Function)
	stubs := make(map[string]Function)
	p.needRuntime = false
	return &aPackage{mod, gbls, fns, stubs, p}
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

// Int returns int type.
func (p Program) Int() Type {
	if p.intTy == nil {
		p.intTy = p.rawType(types.Typ[types.Int])
	}
	return p.intTy
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
	mod   llvm.Module
	vars  map[string]Global
	fns   map[string]Function
	stubs map[string]Function
	Prog  Program
}

type Package = *aPackage

/*
// NewConst creates a new named constant.
func (p Package) NewConst(name string, val constant.Value) NamedConst {
	return &aNamedConst{}
}
*/

// NewVar creates a new global variable.
func (p Package) NewVar(name string, typ types.Type, bg Background) Global {
	t := p.Prog.Type(typ, bg)
	gbl := llvm.AddGlobal(p.mod, t.ll, name)
	ret := &aGlobal{Expr{gbl, t}}
	p.vars[name] = ret
	return ret
}

// VarOf returns a global variable by name.
func (p Package) VarOf(name string) Global {
	return p.vars[name]
}

// NewFunc creates a new function.
func (p Package) NewFunc(name string, sig *types.Signature, bg Background) Function {
	return p.NewFuncEx(name, sig, bg, false)
}

// NewFuncEx creates a new function.
func (p Package) NewFuncEx(name string, sig *types.Signature, bg Background, hasFreeVars bool) Function {
	if v, ok := p.fns[name]; ok {
		return v
	}
	t := p.Prog.FuncDecl(sig, bg)
	if debugInstr {
		log.Println("NewFunc", name, t.raw.Type, "hasFreeVars:", hasFreeVars)
	}
	fn := llvm.AddFunction(p.mod, name, t.ll)
	ret := newFunction(fn, t, p, p.Prog, hasFreeVars)
	p.fns[name] = ret
	return ret
}

func (p Package) rtFunc(fnName string) Expr {
	fn := p.Prog.runtime().Scope().Lookup(fnName).(*types.Func)
	name := FullName(fn.Pkg(), fnName)
	sig := fn.Type().(*types.Signature)
	return p.NewFunc(name, sig, InGo).Expr
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

// FuncOf returns a function by name.
func (p Package) FuncOf(name string) Function {
	return p.fns[name]
}

// -----------------------------------------------------------------------------

// String returns a string representation of the package.
func (p Package) String() string {
	return p.mod.String()
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
