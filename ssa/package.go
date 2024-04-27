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
	"go/constant"
	"go/types"

	"github.com/goplus/llvm"
	"golang.org/x/tools/go/types/typeutil"
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
	ctx  llvm.Context
	typs typeutil.Map

	rt    *types.Scope
	rtget func() *types.Package

	target *Target
	td     llvm.TargetData
	// tm  llvm.TargetMachine

	intType   llvm.Type
	int1Type  llvm.Type
	int8Type  llvm.Type
	int16Type llvm.Type
	int32Type llvm.Type
	int64Type llvm.Type
	voidType  llvm.Type
	voidPtrTy llvm.Type

	rtIfaceTy llvm.Type
	rtSliceTy llvm.Type

	anyTy  Type
	voidTy Type
	boolTy Type
	intTy  Type
	f64Ty  Type
}

// A Program presents a program.
type Program = *aProgram

// NewProgram creates a new program.
func NewProgram(target *Target) Program {
	if target == nil {
		target = &Target{}
	}
	ctx := llvm.NewContext()
	// TODO(xsw): Finalize may cause panic, so comment it.
	// ctx.Finalize()
	td := llvm.NewTargetData("") // TODO(xsw): target config
	return &aProgram{ctx: ctx, target: target, td: td}
}

// SetRuntime sets the runtime.
func (p Program) SetRuntime(runtime func() *types.Package) {
	p.rtget = runtime
}

func (p Program) runtime() *types.Scope {
	if p.rt == nil {
		p.rt = p.rtget().Scope()
	}
	return p.rt
}

func (p Program) rtNamed(name string) *types.Named {
	return p.runtime().Lookup(name).Type().(*types.Named)
}

func (p Program) rtType(name string) Type {
	return p.Type(p.rtNamed(name))
}

func (p Program) rtIface() llvm.Type {
	if p.rtIfaceTy.IsNil() {
		p.rtIfaceTy = p.rtType("Interface").ll
	}
	return p.rtIfaceTy
}

func (p Program) rtSlice() llvm.Type {
	if p.rtSliceTy.IsNil() {
		p.rtSliceTy = p.rtType("Slice").ll
	}
	return p.rtSliceTy
}

// NewPackage creates a new package.
func (p Program) NewPackage(name, pkgPath string) Package {
	mod := p.ctx.NewModule(pkgPath)
	// TODO(xsw): Finalize may cause panic, so comment it.
	// mod.Finalize()
	fns := make(map[string]Function)
	gbls := make(map[string]Global)
	return &aPackage{mod, fns, gbls, p}
}

// Void returns void type.
func (p Program) Void() Type {
	if p.voidTy == nil {
		p.voidTy = &aType{p.tyVoid(), types.Typ[types.Invalid], vkInvalid}
	}
	return p.voidTy
}

// Bool returns bool type.
func (p Program) Bool() Type {
	if p.boolTy == nil {
		p.boolTy = p.Type(types.Typ[types.Bool])
	}
	return p.boolTy
}

// Any returns any type.
func (p Program) Any() Type {
	if p.anyTy == nil {
		p.anyTy = p.Type(tyAny)
	}
	return p.anyTy
}

// Int returns int type.
func (p Program) Int() Type {
	if p.intTy == nil {
		p.intTy = p.Type(types.Typ[types.Int])
	}
	return p.intTy
}

// Float64 returns float64 type.
func (p Program) Float64() Type {
	if p.f64Ty == nil {
		p.f64Ty = p.Type(types.Typ[types.Float64])
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
	mod  llvm.Module
	fns  map[string]Function
	vars map[string]Global
	prog Program
}

type Package = *aPackage

// NewConst creates a new named constant.
func (p Package) NewConst(name string, val constant.Value) NamedConst {
	return &aNamedConst{}
}

// NewVar creates a new global variable.
func (p Package) NewVar(name string, typ types.Type) Global {
	t := p.prog.Type(typ)
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
func (p Package) NewFunc(name string, sig *types.Signature) Function {
	t := p.prog.llvmSignature(sig)
	fn := llvm.AddFunction(p.mod, name, t.ll)
	ret := newFunction(fn, t, p, p.prog)
	p.fns[name] = ret
	return ret
}

// FuncOf returns a function by name.
func (p Package) FuncOf(name string) Function {
	return p.fns[name]
}

func (p Package) rtFunc(fnName string) Expr {
	fn := p.prog.runtime().Lookup(fnName).(*types.Func)
	name := FullName(fn.Pkg(), fnName)
	v, ok := p.fns[name]
	if !ok {
		v = p.NewFunc(name, fn.Type().(*types.Signature))
	}
	return v.Expr
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
