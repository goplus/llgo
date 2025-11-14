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
