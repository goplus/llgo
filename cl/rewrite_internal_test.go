//go:build !llgo
// +build !llgo

package cl

import (
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"runtime"
	"strings"
	"testing"

	gpackages "github.com/goplus/gogen/packages"
	llssa "github.com/goplus/llgo/ssa"
	"github.com/goplus/llgo/ssa/ssatest"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

func init() {
	llssa.Initialize(llssa.InitAll | llssa.InitNative)
}

func compileWithRewrites(t *testing.T, src string, rewrites map[string]string) string {
	t.Helper()
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, "rewrite.go", src, 0)
	if err != nil {
		t.Fatalf("parse failed: %v", err)
	}
	importer := gpackages.NewImporter(fset)
	mode := ssa.SanityCheckFunctions | ssa.InstantiateGenerics
	pkg, _, err := ssautil.BuildPackage(&types.Config{Importer: importer}, fset,
		types.NewPackage(file.Name.Name, file.Name.Name), []*ast.File{file}, mode)
	if err != nil {
		t.Fatalf("build package failed: %v", err)
	}
	prog := ssatest.NewProgramEx(t, nil, importer)
	prog.TypeSizes(types.SizesFor("gc", runtime.GOARCH))
	ret, _, err := NewPackageEx(prog, nil, rewrites, pkg, []*ast.File{file})
	if err != nil {
		t.Fatalf("NewPackageEx failed: %v", err)
	}
	return ret.String()
}

func TestRewriteGlobalStrings(t *testing.T) {
	const src = `package rewritepkg
var VarInit = "original_value"
var VarPlain string
func Use() string { return VarInit + VarPlain }
`
	ir := compileWithRewrites(t, src, map[string]string{
		"VarInit":  "rewrite_init",
		"VarPlain": "rewrite_plain",
	})
	if strings.Contains(ir, "original_value") {
		t.Fatalf("original initializer still present:\n%s", ir)
	}
	for _, want := range []string{`c"rewrite_init"`, `c"rewrite_plain"`} {
		if !strings.Contains(ir, want) {
			t.Fatalf("missing %s in IR:\n%s", want, ir)
		}
	}
}

func TestRewriteSkipsNonConstStores(t *testing.T) {
	const src = `package rewritepkg
import "strings"
var VarInit = strings.ToUpper("original_value")
var VarPlain string
func Use() string { return VarInit + VarPlain }
`
	ir := compileWithRewrites(t, src, map[string]string{
		"VarInit":  "rewrite_init",
		"VarPlain": "rewrite_plain",
	})
	if !strings.Contains(ir, `c"rewrite_init"`) {
		t.Fatalf("expected rewrite_init constant to remain:\n%s", ir)
	}
	if !strings.Contains(ir, "strings.ToUpper") {
		t.Fatalf("expected call to strings.ToUpper in IR:\n%s", ir)
	}
}

func TestRewriteValueNoDot(t *testing.T) {
	ctx := &context{rewrites: map[string]string{"VarInit": "rewrite_init"}}
	if _, ok := ctx.rewriteValue("VarInit"); ok {
		t.Fatalf("rewriteValue should skip names without package prefix")
	}
	if _, ok := ctx.rewriteValue("pkg."); ok {
		t.Fatalf("rewriteValue should skip trailing dot names")
	}
}

func TestIsStringTypeDefault(t *testing.T) {
	ctx := &context{}
	if ctx.isStringType(types.NewPointer(types.Typ[types.Int])) {
		t.Fatalf("expected non-string pointer to return false")
	}
}

func TestIsStringTypeBranches(t *testing.T) {
	ctx := &context{}
	if ctx.isStringType(types.NewSlice(types.Typ[types.String])) {
		t.Fatalf("slice should trigger default branch and return false")
	}
	if ctx.isStringType(nil) {
		t.Fatalf("nil type should return false")
	}
}

func TestRewriteIgnoredInNonInitStore(t *testing.T) {
	const src = `package rewritepkg
var VarInit = "original_value"
func Override() { VarInit = "override_value" }
`
	ir := compileWithRewrites(t, src, map[string]string{"VarInit": "rewrite_init"})
	if !strings.Contains(ir, `c"override_value"`) {
		t.Fatalf("override store should retain original literal:\n%s", ir)
	}
	if !strings.Contains(ir, `c"rewrite_init"`) {
		t.Fatalf("global initializer should still be rewritten:\n%s", ir)
	}
}

func TestRewriteMissingEntry(t *testing.T) {
	const src = `package rewritepkg
var VarInit = "original_value"
var VarOther = "other_value"
`
	ir := compileWithRewrites(t, src, map[string]string{"VarInit": "rewrite_init"})
	if !strings.Contains(ir, `c"other_value"`) {
		t.Fatalf("VarOther should keep original initializer:\n%s", ir)
	}
	if !strings.Contains(ir, `c"rewrite_init"`) {
		t.Fatalf("VarInit should still be rewritten:\n%s", ir)
	}
}

func TestRewriteIgnoresNonStringVar(t *testing.T) {
	const src = `package rewritepkg
type wrapper struct{ v int }
var VarStruct = wrapper{v: 1}
`
	ir := compileWithRewrites(t, src, map[string]string{"VarStruct": "rewrite_struct"})
	if strings.Contains(ir, `c"rewrite_struct"`) {
		t.Fatalf("non-string variables must not be rewritten:\n%s", ir)
	}
}
