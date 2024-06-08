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
	"go/ast"
	"go/constant"
	"go/types"
	"testing"

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

func TestRecvTypeName(t *testing.T) {
	if ret := recvTypeName(&ast.IndexExpr{
		X:     &ast.Ident{Name: "Pointer"},
		Index: &ast.Ident{Name: "T"},
	}); ret != "Pointer" {
		t.Fatal("recvTypeName IndexExpr:", ret)
	}
	if ret := recvTypeName(&ast.IndexListExpr{
		X:       &ast.Ident{Name: "Pointer"},
		Indices: []ast.Expr{&ast.Ident{Name: "T"}},
	}); ret != "Pointer" {
		t.Fatal("recvTypeName IndexListExpr:", ret)
	}
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("recvTypeName: no error?")
		}
	}()
	recvTypeName(&ast.BadExpr{})
}

/*
func TestErrCompileValue(t *testing.T) {
	defer func() {
		if r := recover(); r != "can't use llgo instruction as a value" {
			t.Fatal("TestErrCompileValue:", r)
		}
	}()
	pkg := types.NewPackage("foo", "foo")
	ctx := &context{
		goTyps: pkg,
		link: map[string]string{
			"foo.": "llgo.unreachable",
		},
	}
	ctx.compileValue(nil, &ssa.Function{
		Pkg:       &ssa.Package{Pkg: pkg},
		Signature: types.NewSignatureType(nil, nil, nil, nil, nil, false),
	})
}
*/

func TestErrCompileInstrOrValue(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("compileInstrOrValue: no error?")
		}
	}()
	ctx := &context{
		bvals: make(map[ssa.Value]llssa.Expr),
	}
	ctx.compileInstrOrValue(nil, &ssa.Call{}, true)
}

func TestErrBuiltin(t *testing.T) {
	test := func(builtin string, fn func(ctx *context)) {
		defer func() {
			if r := recover(); r == nil {
				t.Fatal(builtin, ": no error?")
			}
		}()
		var ctx context
		fn(&ctx)
	}
	test("advance", func(ctx *context) { ctx.advance(nil, nil) })
	test("alloca", func(ctx *context) { ctx.alloca(nil, nil) })
	test("allocaCStr", func(ctx *context) { ctx.allocaCStr(nil, nil) })
	test("stringData", func(ctx *context) { ctx.stringData(nil, nil) })
	test("sigsetjmp", func(ctx *context) { ctx.sigsetjmp(nil, nil) })
	test("siglongjmp", func(ctx *context) { ctx.siglongjmp(nil, nil) })
	test("cstr(NoArgs)", func(ctx *context) { cstr(nil, nil) })
	test("cstr(Nonconst)", func(ctx *context) { cstr(nil, []ssa.Value{&ssa.Parameter{}}) })
}

func TestPkgNoInit(t *testing.T) {
	pkg := types.NewPackage("foo", "foo")
	ctx := &context{
		goTyps: pkg,
		loaded: make(map[*types.Package]*pkgInfo),
	}
	if ctx.pkgNoInit(pkg) {
		t.Fatal("pkgNoInit?")
	}
}

func TestPkgKind(t *testing.T) {
	if v, _ := pkgKind("link: hello.a"); v != PkgLinkExtern {
		t.Fatal("pkgKind:", v)
	}
	if v, _ := pkgKind("noinit"); v != PkgNoInit {
		t.Fatal("pkgKind:", v)
	}
	if v, _ := pkgKind(""); v != PkgLLGo {
		t.Fatal("pkgKind:", v)
	}
}

func TestPkgKindOf(t *testing.T) {
	if v, _ := PkgKindOf(types.Unsafe); v != PkgDeclOnly {
		t.Fatal("PkgKindOf unsafe:", v)
	}
	pkg := types.NewPackage("foo", "foo")
	pkg.Scope().Insert(
		types.NewConst(
			0, pkg, "LLGoPackage", types.Typ[types.String],
			constant.MakeString("noinit")),
	)
	if v, _ := PkgKindOf(pkg); v != PkgNoInit {
		t.Fatal("PkgKindOf foo:", v)
	}
}

func TestIsAny(t *testing.T) {
	if isAny(types.Typ[types.UntypedInt]) {
		t.Fatal("isAny?")
	}
}

func TestIntVal(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("intVal: no error?")
		}
	}()
	intVal(&ssa.Parameter{})
}

func TestIgnoreName(t *testing.T) {
	if !ignoreName("runtime.foo") || !ignoreName("runtime/foo") || !ignoreName("internal/abi") {
		t.Fatal("ignoreName failed")
	}
}

func TestErrImport(t *testing.T) {
	var ctx context
	pkg := types.NewPackage("foo", "foo")
	ctx.importPkg(pkg, nil)
}

func TestErrInitLinkname(t *testing.T) {
	var ctx context
	ctx.initLinkname("//llgo:link abc", func(name string) (string, bool, bool) {
		return "", false, false
	})
	ctx.initLinkname("//go:linkname Printf printf", func(name string) (string, bool, bool) {
		return "", false, false
	})
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("initLinkname: no error?")
		}
	}()
	ctx.initLinkname("//go:linkname Printf printf", func(name string) (string, bool, bool) {
		return "foo.Printf", false, name == "Printf"
	})
}

func TestErrVarOf(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("varOf: no error?")
		}
	}()
	prog := llssa.NewProgram(nil)
	pkg := prog.NewPackage("foo", "foo")
	pkgTypes := types.NewPackage("foo", "foo")
	ctx := &context{
		pkg:    pkg,
		goTyps: pkgTypes,
	}
	ssaPkg := &ssa.Package{Pkg: pkgTypes}
	g := &ssa.Global{Pkg: ssaPkg}
	ctx.varOf(nil, g)
}
