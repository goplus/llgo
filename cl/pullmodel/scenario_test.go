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

// buildSSAFromFile is a helper to build SSA from a file
func buildSSAFromFile(t *testing.T, filename string) *ssa.Package {
	t.Helper()
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, filename, nil, parser.ParseComments)
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

	return ssaPkg
}

// TestScenario_Defer tests defer handling
func TestScenario_Defer(t *testing.T) {
	ssaPkg := buildSSAFromFile(t, "../_testpull/defer/in.go")

	tests := []struct {
		name          string
		expectAsync   bool
		expectSuspend int
	}{
		{"SimpleDefer", true, 2},
		{"ConditionalDefer", true, 2},
		{"LoopDefer", true, 2},
		{"MultipleDefer", true, 4},
	}

	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			fn := ssaPkg.Func(tc.name)
			if fn == nil {
				t.Fatalf("Function %s not found", tc.name)
			}

			isAsync := IsAsyncFunc(fn)
			if isAsync != tc.expectAsync {
				t.Errorf("%s: IsAsyncFunc = %v, want %v", tc.name, isAsync, tc.expectAsync)
			}

			if tc.expectAsync {
				points := FindSuspendPoints(fn)
				if len(points) != tc.expectSuspend {
					t.Errorf("%s: found %d suspend points, want %d", tc.name, len(points), tc.expectSuspend)
				}

				sm := Transform(fn)
				if sm == nil {
					t.Fatalf("%s: Transform returned nil", tc.name)
				}

				t.Logf("%s: States=%d, CrossVars=%d, SubFutures=%d",
					tc.name, len(sm.States), len(sm.CrossVars), len(sm.SubFutures))
			}
		})
	}
}

// TestScenario_Nested tests nested async calls
func TestScenario_Nested(t *testing.T) {
	ssaPkg := buildSSAFromFile(t, "../_testpull/nested/in.go")

	tests := []struct {
		name          string
		expectSuspend int
	}{
		{"DeepNesting", 1}, // Only DeepNesting has direct awaits now
	}

	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			fn := ssaPkg.Func(tc.name)
			if fn == nil {
				t.Fatalf("Function %s not found", tc.name)
			}

			if !IsAsyncFunc(fn) {
				t.Errorf("%s should be async", tc.name)
			}

			points := FindSuspendPoints(fn)
			if len(points) != tc.expectSuspend {
				t.Errorf("%s: found %d suspend points, want %d", tc.name, len(points), tc.expectSuspend)
			}
		})
	}
}

// TestScenario_Panic tests panic/recover handling
func TestScenario_Panic(t *testing.T) {
	ssaPkg := buildSSAFromFile(t, "../_testpull/panic/in.go")

	tests := []string{"WithPanic", "PanicInDefer", "RecoverInDefer"}

	for _, name := range tests {
		t.Run(name, func(t *testing.T) {
			fn := ssaPkg.Func(name)
			if fn == nil {
				t.Fatalf("Function %s not found", name)
			}

			if !IsAsyncFunc(fn) {
				t.Errorf("%s should be async", name)
			}

			sm := Transform(fn)
			if sm == nil {
				t.Fatalf("%s: Transform returned nil", name)
			}

			t.Logf("%s: States=%d", name, len(sm.States))
		})
	}
}

// TestScenario_ControlFlow tests complex control flow
func TestScenario_ControlFlow(t *testing.T) {
	ssaPkg := buildSSAFromFile(t, "../_testpull/controlflow/in.go")

	tests := []struct {
		name          string
		expectSuspend int
	}{
		{"SwitchCase", 3}, // One await per case
		{"NestedLoop", 1}, // Await in nested loop
		{"LoopWithBreak", 1},
		{"LoopWithContinue", 1},
	}

	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			fn := ssaPkg.Func(tc.name)
			if fn == nil {
				t.Fatalf("Function %s not found", tc.name)
			}

			if !IsAsyncFunc(fn) {
				t.Errorf("%s should be async", tc.name)
			}

			points := FindSuspendPoints(fn)
			if len(points) != tc.expectSuspend {
				t.Errorf("%s: found %d suspend points, want %d", tc.name, len(points), tc.expectSuspend)
			}

			sm := Transform(fn)
			t.Logf("%s: States=%d, CrossVars=%d", tc.name, len(sm.States), len(sm.CrossVars))
		})
	}
}

// TestScenario_EdgeCases tests edge cases
func TestScenario_EdgeCases(t *testing.T) {
	ssaPkg := buildSSAFromFile(t, "../_testpull/edgecases/in.go")

	tests := []struct {
		name          string
		expectSuspend int
	}{
		{"EarlyReturn", 1},
		{"MultipleReturns", 2},
		{"NoAwait", 0},
		{"SingleAwait", 1},
	}

	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			fn := ssaPkg.Func(tc.name)
			if fn == nil {
				t.Fatalf("Function %s not found", tc.name)
			}

			if !IsAsyncFunc(fn) {
				t.Errorf("%s should be async", tc.name)
			}

			points := FindSuspendPoints(fn)
			if len(points) != tc.expectSuspend {
				t.Errorf("%s: found %d suspend points, want %d", tc.name, len(points), tc.expectSuspend)
			}

			sm := Transform(fn)
			t.Logf("%s: States=%d, Suspends=%d", tc.name, len(sm.States), len(points))
		})
	}
}
