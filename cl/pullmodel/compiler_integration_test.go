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

func TestIntegration_ShouldTransform(t *testing.T) {
	src := `package foo

import "github.com/goplus/llgo/async"

func NotAsync() int {
	return 42
}

func Simple() async.Future[int] {
	x := Step().Await()
	return async.Return(x + 1)
}

func Step() *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(42)
	})
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

	tests := []struct {
		name      string
		shouldXfm bool
	}{
		{"NotAsync", false},
		{"Simple", true},
		{"Step", false}, // Returns concrete type, not Future interface
	}

	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			fn := ssaPkg.Func(tc.name)
			if fn == nil {
				t.Fatalf("Function %s not found", tc.name)
			}

			result := ShouldTransform(fn)
			if result != tc.shouldXfm {
				t.Errorf("%s: ShouldTransform = %v, want %v", tc.name, result, tc.shouldXfm)
			}
		})
	}
}

func TestIntegration_TransformFunction(t *testing.T) {
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

	// Create integration context (minimal, no actual LLVM package)
	ctx := &IntegrationContext{
		LLProg: nil, // Would be actual llssa.Program in real integration
		LLPkg:  nil, // Would be actual llssa.Package in real integration
		SSAPkg: ssaPkg,
	}

	// Transform
	transformed, err := TransformFunction(ctx, fn)
	if err != nil {
		t.Fatalf("TransformFunction failed: %v", err)
	}

	if !transformed {
		t.Error("Expected transformation to succeed")
	}

	t.Log("Transformation successful (see logs for details)")
}

func TestIntegration_Sequential(t *testing.T) {
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

	ctx := &IntegrationContext{
		SSAPkg: ssaPkg,
	}

	transformed, err := TransformFunction(ctx, fn)
	if err != nil {
		t.Fatalf("TransformFunction failed: %v", err)
	}

	if !transformed {
		t.Error("Expected transformation to succeed")
	}

	// Verify transformation produced expected structure
	sm := Transform(fn)
	if sm == nil {
		t.Fatal("Transform returned nil")
	}

	// Sequential should have 3 states (initial + 2 awaits)
	if len(sm.States) < 2 {
		t.Errorf("Expected at least 2 states, got %d", len(sm.States))
	}

	// Should have 2 sub-futures
	if len(sm.SubFutures) != 2 {
		t.Errorf("Expected 2 sub-futures, got %d", len(sm.SubFutures))
	}

	// Should have cross-var 'a'
	if len(sm.CrossVars) < 1 {
		t.Errorf("Expected at least 1 cross-var, got %d", len(sm.CrossVars))
	}

	t.Logf("Sequential transformation verified:")
	t.Logf("  States: %d", len(sm.States))
	t.Logf("  SubFutures: %d", len(sm.SubFutures))
	t.Logf("  CrossVars: %d", len(sm.CrossVars))
}
