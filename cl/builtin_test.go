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
	"go/constant"
	"go/types"
	"testing"

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

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

func TestErrAdvance(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("advance: no error?")
		}
	}()
	var ctx context
	ctx.advance(nil, nil)
}

func TestErrAlloca(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("alloca: no error?")
		}
	}()
	var ctx context
	ctx.alloca(nil, nil)
}

func TestCStrNoArgs(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("cstr: no error?")
		}
	}()
	cstr(nil, nil)
}

func TestCStrNonconst(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("cstr: no error?")
		}
	}()
	cstr(nil, []ssa.Value{&ssa.Parameter{}})
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
	if v := pkgKind("noinit"); v != PkgNoInit {
		t.Fatal("pkgKind:", v)
	}
	if v := pkgKind(""); v != PkgLLGo {
		t.Fatal("pkgKind:", v)
	}
}

func TestPkgKindOf(t *testing.T) {
	if v := PkgKindOf(types.Unsafe); v != PkgDeclOnly {
		t.Fatal("PkgKindOf unsafe:", v)
	}
	pkg := types.NewPackage("foo", "foo")
	pkg.Scope().Insert(
		types.NewConst(
			0, pkg, "LLGoPackage", types.Typ[types.String],
			constant.MakeString("noinit")),
	)
	if v := PkgKindOf(pkg); v != PkgNoInit {
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
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("initLinkname: no error?")
		}
	}()
	var ctx context
	ctx.initLinkname("foo", "//go:linkname Printf printf", func(name string) (isVar bool, ok bool) {
		return false, name == "Printf"
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
	ctx.varOf(g)
}
