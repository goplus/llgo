//go:build !llgo
// +build !llgo

package cl

import (
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"os"
	"path/filepath"
	"testing"

	"github.com/goplus/gogen/packages"
	llssa "github.com/goplus/llgo/ssa"
	gossa "golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

func buildGlobal(t *testing.T, pkgPath, pkgName, src, name string) (*types.Package, *gossa.Global) {
	t.Helper()
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, pkgName+".go", src, 0)
	if err != nil {
		t.Fatalf("ParseFile failed: %v", err)
	}
	files := []*ast.File{f}
	pkg := types.NewPackage(pkgPath, pkgName)
	imp := packages.NewImporter(fset)
	mode := gossa.SanityCheckFunctions | gossa.InstantiateGenerics
	ssapkg, _, err := ssautil.BuildPackage(&types.Config{Importer: imp}, fset, pkg, files, mode)
	if err != nil {
		t.Fatalf("BuildPackage failed: %v", err)
	}
	g, ok := ssapkg.Members[name].(*gossa.Global)
	if !ok {
		t.Fatalf("missing global %q", name)
	}
	return pkg, g
}

func TestExtractTrampolineCName(t *testing.T) {
	cases := map[string]string{
		"libc_close_trampoline": "close",
		"open_trampoline":       "open",
		"open":                  "",
		"libc_open":             "",
	}
	for in, want := range cases {
		if got := extractTrampolineCName(in); got != want {
			t.Fatalf("extractTrampolineCName(%q) = %q, want %q", in, got, want)
		}
	}
}

func TestVarNameGoLinkRuntimeAndNonRuntime(t *testing.T) {
	prog := llssa.NewProgram(nil)
	c := &context{prog: prog}

	rtPkg, rtGlobal := buildGlobal(t, "runtime", "runtime", "package runtime\nvar G int\n", "G")
	rtKey := llssa.FullName(rtPkg, rtGlobal.Name())
	prog.SetLinkname(rtKey, "go:runtime.G")
	name, vtyp, define := c.varName(rtPkg, rtGlobal)
	if name != "go:runtime.G" || vtyp != goVar || !define {
		t.Fatalf("runtime varName = (%q,%d,%v), want (%q,%d,%v)", name, vtyp, define, "go:runtime.G", goVar, true)
	}

	pkg, global := buildGlobal(t, "example.com/p", "p", "package p\nvar G int\n", "G")
	key := llssa.FullName(pkg, global.Name())
	prog.SetLinkname(key, "go:example.com/p.G")
	name, vtyp, define = c.varName(pkg, global)
	if name != "go:example.com/p.G" || vtyp != goVar || define {
		t.Fatalf("non-runtime varName = (%q,%d,%v), want (%q,%d,%v)", name, vtyp, define, "go:example.com/p.G", goVar, false)
	}
}

func TestInitFilesCollectsGoNoInterface(t *testing.T) {
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, "p.go", `package p

type T struct{}

//go:nointerface
func (T) Bad() {}
func (T) Good() {}

//go:nointerface
func Plain() {}
`, parser.ParseComments)
	if err != nil {
		t.Fatalf("ParseFile failed: %v", err)
	}
	funcNames := make(map[string]string)
	for _, decl := range file.Decls {
		if fn, ok := decl.(*ast.FuncDecl); ok {
			fullName, _ := astFuncName("p", fn)
			funcNames[fn.Name.Name] = fullName
		}
	}
	prog := llssa.NewProgram(nil)
	c := &context{prog: prog, skips: make(map[string]none)}
	c.initFiles("p", []*ast.File{file}, false)
	if !prog.IsNoInterfaceMethod(funcNames["Bad"]) {
		t.Fatal("Bad was not marked nointerface")
	}
	if prog.IsNoInterfaceMethod(funcNames["Good"]) {
		t.Fatal("Good was incorrectly marked nointerface")
	}
	if prog.IsNoInterfaceMethod(funcNames["Plain"]) {
		t.Fatal("Plain function was incorrectly marked nointerface")
	}
}

func TestImportPkgCollectsGoNoInterface(t *testing.T) {
	src := `package p

const LLGoPackage = "decl"

type T struct{}

//go:nointerface
func (T) Bad() {}
func (T) Good() {}
`
	srcPath := filepath.Join(t.TempDir(), "p.go")
	if err := os.WriteFile(srcPath, []byte(src), 0o644); err != nil {
		t.Fatalf("WriteFile failed: %v", err)
	}
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, srcPath, src, parser.ParseComments)
	if err != nil {
		t.Fatalf("ParseFile failed: %v", err)
	}
	files := []*ast.File{file}
	pkg := types.NewPackage("example.com/p", "p")
	imp := packages.NewImporter(fset)
	if _, _, err := ssautil.BuildPackage(&types.Config{Importer: imp}, fset, pkg, files, gossa.SanityCheckFunctions); err != nil {
		t.Fatalf("BuildPackage failed: %v", err)
	}
	named := pkg.Scope().Lookup("T").Type().(*types.Named)
	methods := make(map[string]*types.Func)
	for i := 0; i < named.NumMethods(); i++ {
		methods[named.Method(i).Name()] = named.Method(i)
	}
	prog := llssa.NewProgram(nil)
	c := &context{prog: prog, fset: fset}
	c.importPkg(pkg, &pkgInfo{})
	badName, _ := typesFuncName(pkg.Path(), methods["Bad"])
	goodName, _ := typesFuncName(pkg.Path(), methods["Good"])
	if !prog.IsNoInterfaceMethod(badName) {
		t.Fatal("imported Bad was not marked nointerface")
	}
	if prog.IsNoInterfaceMethod(goodName) {
		t.Fatal("imported Good was incorrectly marked nointerface")
	}
}

func TestNoInterfaceImportHelpers(t *testing.T) {
	files := map[string]struct{}{}
	addImportFile(files, token.NewFileSet(), token.NoPos)
	if len(files) != 0 {
		t.Fatalf("addImportFile recorded NoPos: %v", files)
	}

	addImportFile(files, token.NewFileSet(), token.Pos(10))
	if len(files) != 0 {
		t.Fatalf("addImportFile recorded unknown position: %v", files)
	}

	fset := token.NewFileSet()
	file := fset.AddFile("p.go", -1, 8)
	addImportFile(files, fset, file.Pos(0))
	if _, ok := files["p.go"]; !ok {
		t.Fatalf("addImportFile did not record p.go: %v", files)
	}

	if hasNoInterfaceDirective(nil) {
		t.Fatal("nil doc unexpectedly has go:nointerface")
	}
	if hasNoInterfaceDirective(&ast.CommentGroup{List: []*ast.Comment{{Text: "// go:nointerface"}}}) {
		t.Fatal("spaced directive was incorrectly accepted")
	}

	prog := llssa.NewProgram(nil)
	processASTFileNoInterface(prog, "p", nil)
	c := &context{prog: prog}
	c.collectImportedNoInterface("p", map[string]struct{}{
		filepath.Join(t.TempDir(), "missing.go"): {},
	})
}
