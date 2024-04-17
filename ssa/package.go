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

// A Program is a partial or complete Go program converted to SSA form.
type aProgram struct {
	ctx  llvm.Context
	b    Builder
	typs typeutil.Map

	target *Target
	td     llvm.TargetData
	// tm  llvm.TargetMachine

	intType   llvm.Type
	int8Type  llvm.Type
	int16Type llvm.Type
	int32Type llvm.Type
	int64Type llvm.Type
	voidType  llvm.Type
	voidPtrTy llvm.Type
}

type Program = *aProgram

func NewProgram(target *Target) Program {
	if target == nil {
		target = &Target{}
	}
	ctx := llvm.NewContext()
	ctx.Finalize()
	b := ctx.NewBuilder()
	b.Finalize()
	td := llvm.NewTargetData("") // TODO(xsw): target config
	return &aProgram{ctx: ctx, b: Builder{b}, target: target, td: td}
}

func (p *aProgram) NewPackage(name, pkgPath string) Package {
	mod := p.ctx.NewModule(pkgPath)
	mod.Finalize()
	return &aPackage{mod, p}
}

func (p *aProgram) Builder() Builder {
	return p.b
}

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
	prog Program
}

type Package = *aPackage

func (p *aPackage) NewConst(name string, val constant.Value) NamedConst {
	return &aNamedConst{}
}

func (p *aPackage) NewVar(name string, typ types.Type) Global {
	gbl := llvm.AddGlobal(p.mod, p.prog.llvmType(typ), name)
	return &aGlobal{gbl}
}

func (p *aPackage) NewFunc(name string, sig *types.Signature) Function {
	fn := llvm.AddFunction(p.mod, name, p.prog.llvmSignature(sig))
	return &aFunction{fn, p.prog}
}

func (p *aPackage) String() string {
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
