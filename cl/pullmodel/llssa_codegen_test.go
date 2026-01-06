//go:build !llgo
// +build !llgo

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

package pullmodel

import (
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"testing"

	"github.com/goplus/gogen/packages"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

func TestLLSSACodeGen_Generate(t *testing.T) {
	t.Skip("llssa code generation requires full llgo environment - placeholder test")

	src := `package foo

import "github.com/goplus/llgo/async"

func Step() *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(42)
	})
}

func Simple() async.Future[int] {
	x := Step().Await()
	return async.Return(x + 1)
}
`
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, "test.go", src, parser.ParseComments)
	if err != nil {
		t.Fatal("ParseFile failed:", err)
	}

	files := []*ast.File{f}
	name := f.Name.Name
	pkg := types.NewPackage(name, name)
	imp := packages.NewImporter(fset)
	mode := ssa.SanityCheckFunctions | ssa.InstantiateGenerics

	ssaPkg, _, err := ssautil.BuildPackage(
		&types.Config{Importer: imp}, fset, pkg, files, mode)
	if err != nil {
		t.Fatal("BuildPackage failed:", err)
	}

	fn := ssaPkg.Func("Simple")
	if fn == nil {
		t.Fatal("Function Simple not found")
	}

	// This would require full llssa setup
	// prog := llssa.NewProgram(nil)
	// llPkg := prog.NewPackage("foo", "foo")
	// err = GenerateStateMachine(prog, llPkg, ssaPkg, fn)
	// if err != nil {
	//     t.Fatalf("GenerateStateMachine failed: %v", err)
	// }

	t.Log("llssa code generation test placeholder")
}
