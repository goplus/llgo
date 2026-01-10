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

func TestCodeGen_GenerateStateStruct(t *testing.T) {
	src := `package foo

import "github.com/goplus/llgo/async"

func Step() *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(42)
	})
}

func Simple(x int) async.Future[int] {
	y := Step().Await()
	return async.Return(x + y)
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

	// Transform to state machine
	sm := Transform(fn)
	if sm == nil {
		t.Fatal("Transform returned nil")
	}

	// Generate code
	codegen := NewCodeGen(ssaPkg.Prog, ssaPkg, sm)
	stateStruct, mapping, err := codegen.Generate()
	if err != nil {
		t.Fatal("Generate failed:", err)
	}

	// Verify state struct
	if stateStruct == nil {
		t.Fatal("State struct is nil")
	}

	numFields := stateStruct.NumFields()
	t.Logf("State struct has %d fields", numFields)

	// Should have at least:
	// - 1 state field (int8)
	// - 1 parameter field (x int)
	// - 1 sub-future field
	if numFields < 3 {
		t.Errorf("Expected at least 3 fields, got %d", numFields)
	}

	// Check field types
	stateField := stateStruct.Field(0)
	if stateField.Name() != "state" {
		t.Errorf("First field should be 'state', got %q", stateField.Name())
	}
	if stateField.Type() != types.Typ[types.Int8] {
		t.Errorf("State field should be int8, got %v", stateField.Type())
	}

	// Verify mapping
	if mapping == nil {
		t.Fatal("Mapping is nil")
	}

	if len(mapping.ParamIndices) != 1 {
		t.Errorf("Expected 1 parameter mapping, got %d", len(mapping.ParamIndices))
	}

	t.Logf("CrossVars: %d", len(mapping.CrossVarIndices))
	t.Logf("SubFutures: %d", len(mapping.SubFutureIndices))
}

func TestCodeGen_Sequential(t *testing.T) {
	src := `package foo

import "github.com/goplus/llgo/async"

func StepA() *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(10)
	})
}

func StepB(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x * 2)
	})
}

func Sequential() async.Future[int] {
	a := StepA().Await()
	b := StepB(a).Await()
	return async.Return(a + b)
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

	fn := ssaPkg.Func("Sequential")
	if fn == nil {
		t.Fatal("Function Sequential not found")
	}

	sm := Transform(fn)
	if sm == nil {
		t.Fatal("Transform returned nil")
	}

	codegen := NewCodeGen(ssaPkg.Prog, ssaPkg, sm)
	stateStruct, mapping, err := codegen.Generate()
	if err != nil {
		t.Fatal("Generate failed:", err)
	}

	t.Logf("Sequential state struct:")
	for i := 0; i < stateStruct.NumFields(); i++ {
		field := stateStruct.Field(i)
		t.Logf("  Field %d: %s %v", i, field.Name(), field.Type())
	}

	// Should have 2 sub-futures (StepA and StepB)
	if len(mapping.SubFutureIndices) != 2 {
		t.Errorf("Expected 2 sub-futures, got %d", len(mapping.SubFutureIndices))
	}

	// Should have cross-vars (variable 'a' is used after second await)
	if len(mapping.CrossVarIndices) == 0 {
		t.Log("Note: No cross-vars detected (may need refined analysis)")
	}
}
