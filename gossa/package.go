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

package gossa

import (
	"go/constant"
	"go/types"
	"io"
	"os"
	"runtime"

	"golang.org/x/tools/go/types/typeutil"
	llvm "tinygo.org/x/go-llvm"
)

// A Program is a partial or complete Go program converted to SSA form.
type Program struct {
	ctx  llvm.Context
	typs typeutil.Map
	td   llvm.TargetData

	intType   llvm.Type
	int8Type  llvm.Type
	int16Type llvm.Type
	int32Type llvm.Type
	int64Type llvm.Type
}

func NewProgram(targetRep string) *Program {
	ctx := llvm.NewContext()
	runtime.SetFinalizer(ctx.C, (llvm.Context).Dispose)
	td := llvm.NewTargetData(targetRep)
	return &Program{ctx: ctx, td: td}
}

func (p *Program) NewPackage(pkg *types.Package) *Package {
	name := pkg.Path()
	mod := p.ctx.NewModule(name)
	runtime.SetFinalizer(mod.C, (llvm.Module).Dispose)
	return &Package{mod, pkg, p}
}

// A Package is a single analyzed Go package containing Members for
// all package-level functions, variables, constants and types it
// declares.  These may be accessed directly via Members, or via the
// type-specific accessor methods Func, Type, Var and Const.
//
// Members also contains entries for "init" (the synthetic package
// initializer) and "init#%d", the nth declared init function,
// and unspecified other things too.
type Package struct {
	mod  llvm.Module
	pkg  *types.Package
	prog *Program
}

func (p *Package) NewConst(name string, val constant.Value) *NamedConst {
	return &NamedConst{}
}

func (p *Package) NewType(name string, typ types.Type) *Type {
	return &Type{}
}

func (p *Package) NewVar(name string, typ types.Type) *Global {
	gbl := llvm.AddGlobal(p.mod, p.prog.llvmType(typ), name)
	return &Global{gbl}
}

func (p *Package) NewFunc(name string, sig *types.Signature) *Function {
	return &Function{}
}

func (p *Package) WriteTo(w io.Writer) (int64, error) {
	buf := llvm.WriteBitcodeToMemoryBuffer(p.mod)
	n, err := w.Write(buf.Bytes()) // TODO(xsw): reduce copy of bytes
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
