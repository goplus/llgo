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

/*
import (
	"go/types"

	"github.com/goplus/llgo/loader"
	"golang.org/x/tools/go/ssa"
	llvm "tinygo.org/x/go-llvm"
)

// functionInfo contains some information about a function or method. In
// particular, it contains information obtained from pragmas.
//
// The linkName value contains a valid link name, even if //go:linkname is not
// present.
type functionInfo struct {
	/*
	   wasmModule string     // go:wasm-module
	   wasmName   string     // wasm-export-name or wasm-import-name in the IR
	   linkName   string     // go:linkname, go:export - the IR function name
	   section    string     // go:section - object file section name
	   exported   bool       // go:export, CGo
	   interrupt  bool       // go:interrupt
	   nobounds   bool       // go:nobounds
	   variadic   bool       // go:variadic (CGo only)
	   inline     inlineType // go:inline
*/
/*
	linkName string // go:linkname, go:export - the IR function name
}

/*
type inlineType int

// How much to inline.
const (
	// Default behavior. The compiler decides for itself whether any given
	// function will be inlined. Whether any function is inlined depends on the
	// optimization level.
	inlineDefault inlineType = iota

	// Inline hint, just like the C inline keyword (signalled using
	// //go:inline). The compiler will be more likely to inline this function,
	// but it is not a guarantee.
	inlineHint

	// Don't inline, just like the GCC noinline attribute. Signalled using
	// //go:noinline.
	inlineNone
)
*/
/*
// getFunctionInfo returns information about a function that is not directly
// present in *ssa.Function, such as the link name and whether it should be
// exported.
func (c *context) getFunctionInfo(f *ssa.Function) functionInfo {
	panic("todo")
}

// globalInfo contains some information about a specific global. By default,
// linkName is equal to .RelString(nil) on a global and extern is false, but for
// some symbols this is different (due to //go:extern for example).
type globalInfo struct {
	/*
	   linkName string // go:extern
	   align    int    // go:align
*/
/*
	section string // go:section
	extern  bool   // go:extern
}

func (c *context) loadASTComments(loader.Package) {
	panic("todo")
}

// getGlobal returns a LLVM IR global value for a Go SSA global. It is added to
// the LLVM IR if it has not been added already.
func (c *context) getGlobal(g *ssa.Global) llvm.Value {
	panic("todo")
}

// getGlobalInfo returns some information about a specific global.
func (c *context) getGlobalInfo(g *ssa.Global) globalInfo {
	panic("todo")
}

// Get all methods of a type.
func getAllMethods(prog *ssa.Program, typ types.Type) []*types.Selection {
	panic("todo")
}
*/
