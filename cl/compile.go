/*
 * Copyright (c) 2023 The GoPlus Authors (goplus.org). All rights reserved.
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

package cl

import (
	"github.com/goplus/llgo/loader"
	"github.com/qiniu/x/errors"
	"golang.org/x/tools/go/ssa"
	llvm "tinygo.org/x/go-llvm"
)

type Config struct {
	Triple string

	Target llvm.TargetMachine
}

type context struct {
	mod  llvm.Module
	ctx  llvm.Context
	errs errors.List
}

func newContext(moduleName string, conf *Config) *context {
	machine := conf.Target
	targetData := machine.CreateTargetData()
	ctx := llvm.NewContext()
	mod := ctx.NewModule(moduleName)
	mod.SetTarget(conf.Triple)
	mod.SetDataLayout(targetData.String())
	return &context{mod: mod, ctx: ctx}
}

func (c *context) dispose() {
	panic("todo")
}

func (c *context) loadASTComments(loader.Package) {
	panic("todo")
}

// createPackage builds the LLVM IR for all types, methods, and global variables
// in the given package.
func (c *context) createPackage(irbuilder llvm.Builder, pkg *ssa.Package) {
	panic("todo")
}

func NewPackage(moduleName string, pkg loader.Package, conf *Config) (ret llvm.Module, err error) {
	ssaPkg := pkg.SSA
	ssaPkg.Build()

	c := newContext(moduleName, conf)
	defer c.dispose()

	// Load comments such as //go:extern on globals.
	c.loadASTComments(pkg)

	/* TODO: gc related
	// Predeclare the runtime.alloc function, which is used by the wordpack
	// functionality.
	c.getFunction(c.program.ImportedPackage("runtime").Members["alloc"].(*ssa.Function))
	if c.NeedsStackObjects {
		// Predeclare trackPointer, which is used everywhere we use runtime.alloc.
		c.getFunction(c.program.ImportedPackage("runtime").Members["trackPointer"].(*ssa.Function))
	}
	*/

	// Compile all functions, methods, and global variables in this package.
	irbuilder := c.ctx.NewBuilder()
	defer irbuilder.Dispose()
	c.createPackage(irbuilder, ssaPkg)

	/* TODO: risc-v
	// Add the "target-abi" flag, which is necessary on RISC-V otherwise it will
	// pick one that doesn't match the -mabi Clang flag.
	if c.ABI != "" {
		c.mod.AddNamedMetadataOperand("llvm.module.flags",
			c.ctx.MDNode([]llvm.Metadata{
				llvm.ConstInt(c.ctx.Int32Type(), 1, false).ConstantAsMetadata(), // Error on mismatch
				c.ctx.MDString("target-abi"),
				c.ctx.MDString(c.ABI),
			}),
		)
	}
	*/
	return c.mod, c.errs.ToError()
}
