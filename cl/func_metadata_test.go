//go:build !llgo
// +build !llgo

package cl

import (
	"go/ast"
	"go/importer"
	"go/parser"
	"go/token"
	"go/types"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/gogen/packages"
	"github.com/goplus/llgo/internal/env"
	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

func TestEnableFuncMetadata(t *testing.T) {
	old := enableFuncMetadata
	defer func() { enableFuncMetadata = old }()

	EnableFuncMetadata(true)
	if !enableFuncMetadata {
		t.Fatal("EnableFuncMetadata(true) did not enable metadata")
	}
	EnableFuncMetadata(false)
	if enableFuncMetadata {
		t.Fatal("EnableFuncMetadata(false) did not disable metadata")
	}
}

func TestShouldRegisterFuncMetadata(t *testing.T) {
	old := enableFuncMetadata
	defer func() { enableFuncMetadata = old }()

	userPkg := types.NewPackage("example.com/demo", "demo")
	runtimePkg := types.NewPackage(env.LLGoRuntimePkg, "runtime")

	gorootFile := filepath.Join(runtime.GOROOT(), "src", "fmt", "print.go")
	userFile := filepath.Join(string(filepath.Separator), "tmp", "demo.go")

	tests := []struct {
		name string
		ctx  *context
		pos  token.Position
		on   bool
		want bool
	}{
		{name: "disabled", ctx: &context{goTyps: userPkg}, pos: token.Position{Filename: userFile, Line: 7}, on: false, want: false},
		{name: "empty filename", ctx: &context{goTyps: userPkg}, pos: token.Position{Line: 7}, on: true, want: false},
		{name: "non positive line", ctx: &context{goTyps: userPkg}, pos: token.Position{Filename: userFile}, on: true, want: false},
		{name: "runtime package excluded", ctx: &context{goTyps: runtimePkg}, pos: token.Position{Filename: userFile, Line: 7}, on: true, want: false},
		{name: "goroot file excluded", ctx: &context{goTyps: userPkg}, pos: token.Position{Filename: gorootFile, Line: 7}, on: true, want: false},
		{name: "user file accepted", ctx: &context{goTyps: userPkg}, pos: token.Position{Filename: userFile, Line: 7}, on: true, want: true},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			EnableFuncMetadata(tt.on)
			if got := tt.ctx.shouldRegisterFuncMetadata(tt.pos); got != tt.want {
				t.Fatalf("shouldRegisterFuncMetadata(%+v) = %v, want %v", tt.pos, got, tt.want)
			}
		})
	}
}

func TestCompileFuncDeclRegistersFuncMetadata(t *testing.T) {
	old := enableFuncMetadata
	defer func() { enableFuncMetadata = old }()
	EnableFuncMetadata(true)

	fset := token.NewFileSet()
	const filename = "/tmp/funcmeta_integration.go"
	src := `package demo

func Demo() int {
	return 42
}
`
	f, err := parser.ParseFile(fset, filename, src, parser.ParseComments)
	if err != nil {
		t.Fatal(err)
	}
	files := []*ast.File{f}
	pkg := types.NewPackage("example.com/demo", "demo")
	imp := packages.NewImporter(fset)
	mode := ssa.SanityCheckFunctions | ssa.InstantiateGenerics
	ssaPkg, _, err := ssautil.BuildPackage(&types.Config{Importer: imp}, fset, pkg, files, mode)
	if err != nil {
		t.Fatal(err)
	}

	prog := llssa.NewProgram(nil)
	prog.SetRuntime(func() *types.Package {
		rt, err := importer.For("source", nil).Import(llssa.PkgRuntime)
		if err != nil {
			t.Fatal("load runtime failed:", err)
		}
		return rt
	})
	prog.TypeSizes(types.SizesFor("gc", runtime.GOARCH))
	llPkg, err := NewPackage(prog, ssaPkg, files)
	if err != nil {
		t.Fatal(err)
	}
	ir := llPkg.String()
	for _, want := range []string{
		"runtime/internal/runtime.RegisterFuncMetadataFull",
		"example.com/demo.Demo",
		filename,
	} {
		if !strings.Contains(ir, want) {
			t.Fatalf("compiled IR missing %q:\n%s", want, ir)
		}
	}
}
