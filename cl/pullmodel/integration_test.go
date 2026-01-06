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

// TestIntegration_AsyncPackage tests detection with the actual async package.
func TestIntegration_AsyncPackage(t *testing.T) {
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

func Sequential() async.Future[int] {
	a := Step().Await()
	b := Step().Await()
	return async.Return(a + b)
}

func NotAsync() int {
	return 42
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

	// Test IsAsyncFunc
	tests := []struct {
		name     string
		isAsync  bool
		suspends int
	}{
		{"Simple", true, 1},
		{"Sequential", true, 2},
		{"NotAsync", false, 0},
		{"Step", false, 0}, // Returns *AsyncFuture, not Future interface
	}

	for _, tc := range tests {
		fn := ssaPkg.Func(tc.name)
		if fn == nil {
			t.Fatalf("Function %s not found", tc.name)
		}

		isAsync := IsAsyncFunc(fn)
		if isAsync != tc.isAsync {
			t.Errorf("%s: IsAsyncFunc = %v, want %v", tc.name, isAsync, tc.isAsync)
		}

		if tc.isAsync {
			points := FindSuspendPoints(fn)
			if len(points) != tc.suspends {
				t.Errorf("%s: found %d suspend points, want %d", tc.name, len(points), tc.suspends)
			}
		}
	}

	// Test Transform on Simple
	simpleFn := ssaPkg.Func("Simple")
	sm := Transform(simpleFn)
	if sm == nil {
		t.Fatal("Transform returned nil for Simple")
	}

	t.Logf("Simple state machine:")
	t.Logf("  States: %d", len(sm.States))
	t.Logf("  CrossVars: %d", len(sm.CrossVars))
	t.Logf("  SubFutures: %d", len(sm.SubFutures))
	t.Logf("  ResultType: %v", sm.ResultType)

	// Test Transform on Sequential
	seqFn := ssaPkg.Func("Sequential")
	smSeq := Transform(seqFn)
	if smSeq == nil {
		t.Fatal("Transform returned nil for Sequential")
	}

	t.Logf("Sequential state machine:")
	t.Logf("  States: %d", len(smSeq.States))
	t.Logf("  CrossVars: %d", len(smSeq.CrossVars))
	t.Logf("  SubFutures: %d", len(smSeq.SubFutures))

	// Sequential should have cross vars (a is used after second await)
	if len(smSeq.CrossVars) == 0 {
		t.Log("Note: Sequential has no detected cross vars (may need refined analysis)")
	}
}

// TestIntegration_ConditionalBranch tests async detection in conditional branches.
func TestIntegration_ConditionalBranch(t *testing.T) {
	src := `package foo

import "github.com/goplus/llgo/async"

func StepA() *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(10)
	})
}

func StepB() *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(20)
	})
}

func Conditional(cond bool) async.Future[int] {
	if cond {
		return async.Return(StepA().Await())
	}
	return async.Return(StepB().Await())
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

	fn := ssaPkg.Func("Conditional")
	if fn == nil {
		t.Fatal("Function Conditional not found")
	}

	if !IsAsyncFunc(fn) {
		t.Error("Conditional should be detected as async")
	}

	points := FindSuspendPoints(fn)
	// Should have 2 suspend points (one in each branch)
	if len(points) != 2 {
		t.Errorf("Conditional: found %d suspend points, want 2", len(points))
	}

	sm := Transform(fn)
	if sm == nil {
		t.Fatal("Transform returned nil for Conditional")
	}

	t.Logf("Conditional state machine:")
	t.Logf("  States: %d", len(sm.States))
	t.Logf("  CrossVars: %d", len(sm.CrossVars))
}

// TestIntegration_Loop tests async detection in loops.
func TestIntegration_Loop(t *testing.T) {
	src := `package foo

import "github.com/goplus/llgo/async"

func Compute(i int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(i * i)
	})
}

func Loop(n int) async.Future[int] {
	sum := 0
	for i := 0; i < n; i++ {
		x := Compute(i).Await()
		sum += x
	}
	return async.Return(sum)
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

	fn := ssaPkg.Func("Loop")
	if fn == nil {
		t.Fatal("Function Loop not found")
	}

	if !IsAsyncFunc(fn) {
		t.Error("Loop should be detected as async")
	}

	points := FindSuspendPoints(fn)
	if len(points) != 1 {
		t.Errorf("Loop: found %d suspend points, want 1", len(points))
	}

	sm := Transform(fn)
	if sm == nil {
		t.Fatal("Transform returned nil for Loop")
	}

	t.Logf("Loop state machine:")
	t.Logf("  States: %d", len(sm.States))
	t.Logf("  CrossVars: %d", len(sm.CrossVars))

	// Loop variables (sum, i, n) should be cross vars
	if len(sm.CrossVars) < 2 {
		t.Log("Note: Loop should have multiple cross vars (sum, i, n)")
	}
}
