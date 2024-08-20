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
	"unsafe"

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

func TestConstBool(t *testing.T) {
	if v, ok := constBool(nil); v || ok {
		t.Fatal("constBool?")
	}
}

func TestToBackground(t *testing.T) {
	if v := toBackground(""); v != llssa.InGo {
		t.Fatal("toBackground:", v)
	}
}

func TestCollectSkipNames(t *testing.T) {
	ctx := &context{skips: make(map[string]none)}
	ctx.collectSkipNames("//llgo:skipall")
	ctx.collectSkipNames("//llgo:skip")
	ctx.collectSkipNames("//llgo:skip abs")
}

func TestReplaceGoName(t *testing.T) {
	if ret := replaceGoName("foo", 0); ret != "foo" {
		t.Fatal("replaceGoName:", ret)
	}
}

func TestIsAllocVargs(t *testing.T) {
	if isAllocVargs(nil, ssaAlloc(&ssa.Return{})) {
		t.Fatal("isVargs?")
	}
	if isAllocVargs(nil, ssaAlloc(ssaSlice(&ssa.Go{}))) {
		t.Fatal("isVargs?")
	}
	if isAllocVargs(nil, ssaAlloc(ssaSlice(&ssa.Return{}))) {
		t.Fatal("isVargs?")
	}
}

func ssaSlice(refs ...ssa.Instruction) *ssa.Slice {
	a := &ssa.Slice{}
	setRefs(unsafe.Pointer(a), refs...)
	return a
}

func ssaAlloc(refs ...ssa.Instruction) *ssa.Alloc {
	a := &ssa.Alloc{}
	setRefs(unsafe.Pointer(a), refs...)
	return a
}

func setRefs(v unsafe.Pointer, refs ...ssa.Instruction) {
	off := unsafe.Offsetof(ssa.Alloc{}.Comment) - unsafe.Sizeof([]int(nil))
	ptr := uintptr(v) + off
	*(*[]ssa.Instruction)(unsafe.Pointer(ptr)) = refs
}

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
	test("allocaCStrs", func(ctx *context) { ctx.allocaCStrs(nil, nil) })
	test("allocaCStrs(Nonconst)", func(ctx *context) { ctx.allocaCStrs(nil, []ssa.Value{nil, &ssa.Parameter{}}) })
	test("string", func(ctx *context) { ctx.string(nil, nil) })
	test("stringData", func(ctx *context) { ctx.stringData(nil, nil) })
	test("funcAddr", func(ctx *context) { ctx.funcAddr(nil, nil) })
	test("sigsetjmp", func(ctx *context) { ctx.sigsetjmp(nil, nil) })
	test("siglongjmp", func(ctx *context) { ctx.siglongjmp(nil, nil) })
	test("cstr(NoArgs)", func(ctx *context) { cstr(nil, nil) })
	test("cstr(Nonconst)", func(ctx *context) { cstr(nil, []ssa.Value{&ssa.Parameter{}}) })
	test("pystr(NoArgs)", func(ctx *context) { pystr(nil, nil) })
	test("pystr(Nonconst)", func(ctx *context) { pystr(nil, []ssa.Value{&ssa.Parameter{}}) })
	test("atomic", func(ctx *context) { ctx.atomic(nil, 0, nil) })
	test("atomicLoad", func(ctx *context) { ctx.atomicLoad(nil, nil) })
	test("atomicStore", func(ctx *context) { ctx.atomicStore(nil, nil) })
	test("atomicCmpXchg", func(ctx *context) { ctx.atomicCmpXchg(nil, nil) })
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
	if v, _ := pkgKind("link"); v != PkgLinkIR {
		t.Fatal("pkgKind:", v)
	}
	if v, _ := pkgKind(""); v != PkgLLGo {
		t.Fatal("pkgKind:", v)
	}
	if v, _ := pkgKind("decl"); v != PkgDeclOnly {
		t.Fatal("pkgKind:", v)
	}
	if v, _ := pkgKind("decl: test.ll"); v != PkgDeclOnly {
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
	if !ignoreName("runtime/foo") || !ignoreName("internal/abi") {
		t.Fatal("ignoreName failed")
	}
}

func TestErrImport(t *testing.T) {
	var ctx context
	pkg := types.NewPackage("foo", "foo")
	ctx.importPkg(pkg, nil)

	alt := types.NewPackage("bar", "bar")
	alt.Scope().Insert(
		types.NewConst(0, alt, "LLGoPackage", types.Typ[types.String], constant.MakeString("noinit")),
	)
	ctx.patches = Patches{"foo": Patch{Alt: &ssa.Package{Pkg: alt}, Types: alt}}
	ctx.importPkg(pkg, &pkgInfo{})
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

func TestContextResolveLinkname(t *testing.T) {
	tests := []struct {
		name   string
		link   map[string]string
		input  string
		want   string
		panics bool
	}{
		{
			name: "Normal",
			link: map[string]string{
				"foo": "C.bar",
			},
			input: "foo",
			want:  "bar",
		},
		{
			name: "MultipleLinks",
			link: map[string]string{
				"foo1": "C.bar1",
				"foo2": "C.bar2",
			},
			input: "foo2",
			want:  "bar2",
		},
		{
			name:  "NoLink",
			link:  map[string]string{},
			input: "foo",
			want:  "foo",
		},
		{
			name: "InvalidLink",
			link: map[string]string{
				"foo": "invalid.bar",
			},
			input:  "foo",
			panics: true,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if tt.panics {
				defer func() {
					if r := recover(); r == nil {
						t.Error("want panic")
					}
				}()
			}
			ctx := &context{prog: llssa.NewProgram(nil)}
			for k, v := range tt.link {
				ctx.prog.SetLinkname(k, v)
			}
			got := ctx.resolveLinkname(tt.input)
			if !tt.panics {
				if got != tt.want {
					t.Errorf("got %q, want %q", got, tt.want)
				}
			}
		})
	}
}
