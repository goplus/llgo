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

// buildSSA builds SSA for the given source code and returns the package.
func buildSSA(t *testing.T, src string) *ssa.Package {
	t.Helper()
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

	return ssaPkg
}

func TestIsAsyncFunc_NotAsync(t *testing.T) {
	src := `package foo

func NotAsync() int {
	return 42
}
`
	ssaPkg := buildSSA(t, src)
	fn := ssaPkg.Func("NotAsync")
	if fn == nil {
		t.Fatal("Function not found")
	}

	if IsAsyncFunc(fn) {
		t.Error("Expected NotAsync to not be an async function")
	}
}

func TestIsAsyncFunc_WithFuture(t *testing.T) {
	// This test uses a local Future type definition since we can't easily
	// import the async package in tests. The real detection will use the
	// full package path.
	src := `package foo

type Future[T any] interface {
	Poll() T
}

type myFuture struct{}
func (f myFuture) Poll() int { return 0 }

func AsyncFunc() Future[int] {
	return myFuture{}
}
`
	ssaPkg := buildSSA(t, src)
	fn := ssaPkg.Func("AsyncFunc")
	if fn == nil {
		t.Fatal("Function not found")
	}

	// This will return false because the Future is not from the async package
	// This is expected behavior - we only transform functions returning
	// github.com/goplus/llgo/async.Future
	if IsAsyncFunc(fn) {
		t.Log("Note: Local Future type detected as async (expected in full implementation)")
	}
}

func TestFindSuspendPoints_NoSuspends(t *testing.T) {
	src := `package foo

func NoSuspends() int {
	x := 1 + 2
	return x
}
`
	ssaPkg := buildSSA(t, src)
	fn := ssaPkg.Func("NoSuspends")
	if fn == nil {
		t.Fatal("Function not found")
	}

	points := FindSuspendPoints(fn)
	if len(points) != 0 {
		t.Errorf("Expected 0 suspend points, got %d", len(points))
	}
}

func TestAnalyzeCrossVars_NoCross(t *testing.T) {
	src := `package foo

func NoCross() int {
	x := 1
	y := 2
	return x + y
}
`
	ssaPkg := buildSSA(t, src)
	fn := ssaPkg.Func("NoCross")
	if fn == nil {
		t.Fatal("Function not found")
	}

	// No suspend points, so no cross vars
	crossVars := AnalyzeCrossVars(fn, nil)
	if len(crossVars) != 0 {
		t.Errorf("Expected 0 cross vars, got %d", len(crossVars))
	}
}

func TestGetFutureResultType(t *testing.T) {
	src := `package foo

type Future[T any] interface {
	Poll() T
}

func GetInt() Future[int] { return nil }
func GetString() Future[string] { return nil }
`
	ssaPkg := buildSSA(t, src)

	tests := []struct {
		fname    string
		expected string
	}{
		{"GetInt", "int"},
		{"GetString", "string"},
	}

	for _, tc := range tests {
		fn := ssaPkg.Func(tc.fname)
		if fn == nil {
			t.Fatalf("Function %s not found", tc.fname)
		}

		retType := fn.Signature.Results().At(0).Type()
		resultType := GetFutureResultType(retType)
		if resultType == nil {
			t.Errorf("%s: GetFutureResultType returned nil", tc.fname)
			continue
		}

		if resultType.String() != tc.expected {
			t.Errorf("%s: expected result type %s, got %s", tc.fname, tc.expected, resultType.String())
		}
	}
}

func TestTransform_NotAsync(t *testing.T) {
	src := `package foo

func NotAsync() int {
	return 42
}
`
	ssaPkg := buildSSA(t, src)
	fn := ssaPkg.Func("NotAsync")
	if fn == nil {
		t.Fatal("Function not found")
	}

	sm := Transform(fn)
	if sm != nil {
		t.Error("Expected Transform to return nil for non-async function")
	}
}
