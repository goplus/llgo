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

package cl

import (
	"sort"

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

type Config struct {
}

type context struct {
}

// Global variable.
func (p *context) compileGlobal(ret llssa.Package, member *ssa.Global) {
	ret.NewVar(member.Name(), member.Type())
}

func (p *context) compileType(ret llssa.Package, member *ssa.Type) {
	panic("todo")
	/*
		if types.IsInterface(member.Type()) {
			// Interfaces don't have concrete methods.
			continue
		}

		// Named type. We should make sure all methods are created.
		// This includes both functions with pointer receivers and those
		// without.
		methods := getAllMethods(pkg.Prog, member.Type())
		methods = append(methods, getAllMethods(pkg.Prog, types.NewPointer(member.Type()))...)
		for _, method := range methods {
			// Parse this method.
			fn := pkg.Prog.MethodValue(method)
			if fn == nil {
				continue // probably a generic method
			}
			if member.Type().String() != member.String() {
				// This is a member on a type alias. Do not build such a
				// function.
				continue
			}
			if fn.Blocks == nil {
				continue // external function
			}
			if fn.Synthetic != "" && fn.Synthetic != "package initializer" {
				// This function is a kind of wrapper function (created by
				// the ssa package, not appearing in the source code) that
				// is created by the getFunction method as needed.
				// Therefore, don't build it here to avoid "function
				// redeclared" errors.
				continue
			}
			// Create the function definition.
			b := newBuilder(c, irbuilder, fn)
			b.createFunction()
		}
	*/
}

func (p *context) compileFunc(ret llssa.Package, member *ssa.Function) {
	// panic("todo")
	/*
		// Create the function definition.
		b := newBuilder(c, irbuilder, member)
		if _, ok := mathToLLVMMapping[member.RelString(nil)]; ok {
			// The body of this function (if there is one) is ignored and
			// replaced with a LLVM intrinsic call.
			b.defineMathOp()
			continue
		}
		if ok := b.defineMathBitsIntrinsic(); ok {
			// Like a math intrinsic, the body of this function was replaced
			// with a LLVM intrinsic.
			continue
		}
		if member.Blocks == nil {
			// Try to define this as an intrinsic function.
			b.defineIntrinsicFunction()
			// It might not be an intrinsic function but simply an external
			// function (defined via //go:linkname). Leave it undefined in
			// that case.
			continue
		}
		b.createFunction()
	*/
}

func NewPackage(prog llssa.Program, pkg *ssa.Package, conf *Config) (ret llssa.Package, err error) {
	type namedMember struct {
		name string
		val  ssa.Member
	}

	// Sort by position, so that the order of the functions in the IR matches
	// the order of functions in the source file. This is useful for testing,
	// for example.
	var members []*namedMember
	for name, v := range pkg.Members {
		members = append(members, &namedMember{name, v})
	}
	sort.Slice(members, func(i, j int) bool {
		iPos := members[i].val.Pos()
		jPos := members[j].val.Pos()
		return iPos < jPos
	})

	pkgTypes := pkg.Pkg
	ret = prog.NewPackage(pkgTypes.Name(), pkgTypes.Path())

	ctx := &context{}
	for _, m := range members {
		member := m.val
		switch member := member.(type) {
		case *ssa.Function:
			if member.TypeParams() != nil {
				// Do not try to build generic (non-instantiated) functions.
				continue
			}
			ctx.compileFunc(ret, member)
		case *ssa.Type:
			ctx.compileType(ret, member)
		case *ssa.Global:
			ctx.compileGlobal(ret, member)
		}
	}
	return
}

/*
import (
	"go/types"
	"os"
	"runtime"
	"sort"

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
	mod llvm.Module
	ctx llvm.Context

	embedGlobals map[string][]*loader.EmbedFile

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

// createPackage builds the LLVM IR for all types, methods, and global variables
// in the given package.
func (c *context) createPackage(irbuilder llvm.Builder, pkg *ssa.Package) {
	type namedMember struct {
		name string
		val  ssa.Member
	}

	// Sort by position, so that the order of the functions in the IR matches
	// the order of functions in the source file. This is useful for testing,
	// for example.
	var members []*namedMember
	for name, v := range pkg.Members {
		members = append(members, &namedMember{name, v})
	}
	sort.Slice(members, func(i, j int) bool {
		iPos := members[i].val.Pos()
		jPos := members[j].val.Pos()
		return iPos < jPos
	})

	// Define all functions.
	for _, m := range members {
		member := m.val
		switch member := member.(type) {
		case *ssa.Function:
			if member.TypeParams() != nil {
				// Do not try to build generic (non-instantiated) functions.
				continue
			}
			// Create the function definition.
			b := newBuilder(c, irbuilder, member)
			if _, ok := mathToLLVMMapping[member.RelString(nil)]; ok {
				// The body of this function (if there is one) is ignored and
				// replaced with a LLVM intrinsic call.
				b.defineMathOp()
				continue
			}
			if ok := b.defineMathBitsIntrinsic(); ok {
				// Like a math intrinsic, the body of this function was replaced
				// with a LLVM intrinsic.
				continue
			}
			if member.Blocks == nil {
				// Try to define this as an intrinsic function.
				b.defineIntrinsicFunction()
				// It might not be an intrinsic function but simply an external
				// function (defined via //go:linkname). Leave it undefined in
				// that case.
				continue
			}
			b.createFunction()
		case *ssa.Type:
			if types.IsInterface(member.Type()) {
				// Interfaces don't have concrete methods.
				continue
			}

			// Named type. We should make sure all methods are created.
			// This includes both functions with pointer receivers and those
			// without.
			methods := getAllMethods(pkg.Prog, member.Type())
			methods = append(methods, getAllMethods(pkg.Prog, types.NewPointer(member.Type()))...)
			for _, method := range methods {
				// Parse this method.
				fn := pkg.Prog.MethodValue(method)
				if fn == nil {
					continue // probably a generic method
				}
				if member.Type().String() != member.String() {
					// This is a member on a type alias. Do not build such a
					// function.
					continue
				}
				if fn.Blocks == nil {
					continue // external function
				}
				if fn.Synthetic != "" && fn.Synthetic != "package initializer" {
					// This function is a kind of wrapper function (created by
					// the ssa package, not appearing in the source code) that
					// is created by the getFunction method as needed.
					// Therefore, don't build it here to avoid "function
					// redeclared" errors.
					continue
				}
				// Create the function definition.
				b := newBuilder(c, irbuilder, fn)
				b.createFunction()
			}
		case *ssa.Global:
			// Global variable.
			info := c.getGlobalInfo(member)
			global := c.getGlobal(member)
			if files, ok := c.embedGlobals[member.Name()]; ok {
				c.createEmbedGlobal(member, global, files)
			} else if !info.extern {
				global.SetInitializer(llvm.ConstNull(global.GlobalValueType()))
				global.SetVisibility(llvm.HiddenVisibility)
				if info.section != "" {
					global.SetSection(info.section)
				}
			}
		}
	}

	// Add forwarding functions for functions that would otherwise be
	// implemented in assembly.
	for _, m := range members {
		member := m.val
		switch member := member.(type) {
		case *ssa.Function:
			if member.Blocks != nil {
				continue // external function
			}
			info := c.getFunctionInfo(member)
			if aliasName, ok := stdlibAliases[info.linkName]; ok {
				alias := c.mod.NamedFunction(aliasName)
				if alias.IsNil() {
					// Shouldn't happen, but perhaps best to just ignore.
					// The error will be a link error, if there is an error.
					continue
				}
				b := newBuilder(c, irbuilder, member)
				b.createAlias(alias)
			}
		}
	}
}

// createEmbedGlobal creates an initializer for a //go:embed global variable.
func (c *context) createEmbedGlobal(member *ssa.Global, global llvm.Value, files []*loader.EmbedFile) {
	panic("todo")
}

type Package struct {
	llvm.Module
}

func NewPackage(moduleName string, pkg loader.Package, conf *Config) (ret Package, err error) {
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
/*
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
/*
	ret.Module = c.mod
	err = c.errs.ToError()
	return
}

func (p Package) Dispose() {
	p.Module.Dispose()
}

func (p Package) WriteFile(file string) (err error) {
	f, err := os.Create(file)
	if err != nil {
		return
	}
	err = p.WriteTo(f)
	f.Close()
	if err != nil {
		os.Remove(file)
	}
	return
}

func (p Package) WriteTo(f *os.File) (err error) {
	if runtime.GOOS == "windows" {
		// Work around a problem on Windows.
		// For some reason, WriteBitcodeToFile causes TinyGo to
		// exit with the following message:
		//   LLVM ERROR: IO failure on output stream: Bad file descriptor
		buf := llvm.WriteBitcodeToMemoryBuffer(p.Module)
		defer buf.Dispose()
		_, err = f.Write(buf.Bytes())
	} else {
		// Otherwise, write bitcode directly to the file (probably
		// faster).
		err = llvm.WriteBitcodeToFile(p.Module, f)
	}
	return
}
*/
