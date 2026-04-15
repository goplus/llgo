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

	"github.com/goplus/llgo/internal/env"
	llssa "github.com/goplus/llgo/ssa"
)

func TestReplaceGoNameRuntimeBranch(t *testing.T) {
	const sym = "runtime.memmove"
	got := replaceGoName(sym, len("runtime"))
	want := env.LLGoRuntimePkg + "/internal/runtime.memmove"
	if got != want {
		t.Fatalf("replaceGoName(%q)=%q, want %q", sym, got, want)
	}
}

func TestTypeBackgroundAndParsePkgSyntaxCoverage(t *testing.T) {
	if got := typeBackground(nil); got != "" {
		t.Fatalf("typeBackground(nil)=%q, want empty", got)
	}

	doc1 := &ast.CommentGroup{List: []*ast.Comment{{Text: "//llgo:type C"}}}
	if got := typeBackground(doc1); got != "C" {
		t.Fatalf("typeBackground(//llgo:type C)=%q, want C", got)
	}
	doc2 := &ast.CommentGroup{List: []*ast.Comment{{Text: "// llgo:type C"}}}
	if got := typeBackground(doc2); got != "C" {
		t.Fatalf("typeBackground(// llgo:type C)=%q, want C", got)
	}

	src := `package p
//llgo:type C
type A int
type (
	B int
	C int
)
`
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, "p.go", src, parser.ParseComments)
	if err != nil {
		t.Fatalf("ParseFile failed: %v", err)
	}
	prog := llssa.NewProgram(nil)
	pkg := types.NewPackage("example.com/p", "p")
	ParsePkgSyntax(prog, pkg, []*ast.File{file})
}

func TestPkgSymInfoAddSymAndInitLinknamesCoverage(t *testing.T) {
	dir := t.TempDir()
	srcPath := filepath.Join(dir, "p.go")
	src := "package p\n\n//go:linkname Foo c_foo\nfunc Foo()\n"
	if err := os.WriteFile(srcPath, []byte(src), 0o644); err != nil {
		t.Fatalf("WriteFile failed: %v", err)
	}

	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, srcPath, src, parser.ParseComments)
	if err != nil {
		t.Fatalf("ParseFile failed: %v", err)
	}

	var fnPos token.Pos
	for _, decl := range file.Decls {
		if fn, ok := decl.(*ast.FuncDecl); ok && fn.Name.Name == "Foo" {
			fnPos = fn.Name.Pos()
			break
		}
	}
	if fnPos == token.NoPos {
		t.Fatalf("failed to find Foo position")
	}

	syms := newPkgSymInfo()
	syms.addSym(fset, fnPos, "example.com/p.Foo", "Foo", false)

	tf := fset.File(file.Pos())
	syms.addSym(fset, tf.LineStart(2), "example.com/p.Skip", "Skip", false)
	if _, ok := syms.syms["Skip"]; ok {
		t.Fatalf("symbol with line<=2 should be skipped")
	}

	// cover os.ReadFile error branch inside addSym.
	ff := fset.AddFile(filepath.Join(dir, "missing.go"), -1, 100)
	ff.SetLines([]int{0, 10, 20, 30, 40, 50})
	syms.addSym(fset, ff.LineStart(4), "example.com/p.Miss", "Miss", false)
	if _, ok := syms.syms["Miss"]; !ok {
		t.Fatalf("symbol should still be recorded when file read fails")
	}

	prog := llssa.NewProgram(nil)
	ctx := &context{prog: prog}
	syms.initLinknames(ctx)
	if got, ok := prog.Linkname("example.com/p.Foo"); !ok || got != "c_foo" {
		t.Fatalf("linkname = (%q,%v), want (%q,%v)", got, ok, "c_foo", true)
	}
}

func TestAstAndTypesFuncNameCoverage(t *testing.T) {
	full, inPkg := astFuncName("example.com/p", &ast.FuncDecl{Name: &ast.Ident{Name: "F"}})
	if full != "example.com/p.F" || inPkg != "F" {
		t.Fatalf("astFuncName(func)=(%q,%q), want (%q,%q)", full, inPkg, "example.com/p.F", "F")
	}

	ptrRecv := &ast.FuncDecl{
		Name: &ast.Ident{Name: "M"},
		Recv: &ast.FieldList{List: []*ast.Field{
			{Type: &ast.StarExpr{X: &ast.ParenExpr{X: &ast.Ident{Name: "T"}}}},
		}},
	}
	full, inPkg = astFuncName("example.com/p", ptrRecv)
	if full != "example.com/p.(*T).M" || inPkg != "(*T).M" {
		t.Fatalf("astFuncName(method ptr)=(%q,%q), want (%q,%q)", full, inPkg, "example.com/p.(*T).M", "(*T).M")
	}

	pkg := types.NewPackage("example.com/p", "p")
	tObj := types.NewTypeName(token.NoPos, pkg, "T", nil)
	named := types.NewNamed(tObj, types.NewStruct(nil, nil), nil)

	methodPtr := types.NewFunc(token.NoPos, pkg, "M", types.NewSignature(
		types.NewVar(token.NoPos, pkg, "", types.NewPointer(named)), nil, nil, false,
	))
	full, inPkg = typesFuncName(pkg.Path(), methodPtr)
	if full != "example.com/p.(*T).M" || inPkg != "(*T).M" {
		t.Fatalf("typesFuncName(method ptr)=(%q,%q), want (%q,%q)", full, inPkg, "example.com/p.(*T).M", "(*T).M")
	}

	methodVal := types.NewFunc(token.NoPos, pkg, "N", types.NewSignature(
		types.NewVar(token.NoPos, pkg, "", named), nil, nil, false,
	))
	full, inPkg = typesFuncName(pkg.Path(), methodVal)
	if full != "example.com/p.T.N" || inPkg != "T.N" {
		t.Fatalf("typesFuncName(method val)=(%q,%q), want (%q,%q)", full, inPkg, "example.com/p.T.N", "T.N")
	}

	fn := types.NewFunc(token.NoPos, pkg, "Top", types.NewSignature(nil, nil, nil, false))
	full, inPkg = typesFuncName(pkg.Path(), fn)
	if full != "example.com/p.Top" || inPkg != "Top" {
		t.Fatalf("typesFuncName(func)=(%q,%q), want (%q,%q)", full, inPkg, "example.com/p.Top", "Top")
	}
}

func TestPreCollectLinknames(t *testing.T) {
	cases := []struct {
		name      string
		directive string
		want      string
	}{
		{name: "go-linkname", directive: "//go:linkname Sigsetjmp C.sigsetjmp", want: "C.sigsetjmp"},
		{name: "llgo-linkname", directive: "//llgo:link Sigsetjmp C.sigsetjmp", want: "C.sigsetjmp"},
		{name: "llgo-linkname-spaced", directive: "// llgo:link Sigsetjmp C.sigsetjmp", want: "C.sigsetjmp"},
	}
	for _, tt := range cases {
		t.Run(tt.name, func(t *testing.T) {
			src := "package runtime\nimport _ \"unsafe\"\n" + tt.directive + "\nfunc Sigsetjmp()\n"
			fset := token.NewFileSet()
			file, err := parser.ParseFile(fset, "runtime.go", src, parser.ParseComments)
			if err != nil {
				t.Fatalf("ParseFile failed: %v", err)
			}
			prog := llssa.NewProgram(nil)
			PreCollectLinknames(prog, llssa.PkgRuntime, []*ast.File{file})
			if got, ok := prog.Linkname(llssa.PkgRuntime + ".Sigsetjmp"); !ok || got != tt.want {
				t.Fatalf("pre-collected linkname = (%q,%v), want (%q,%v)", got, ok, tt.want, true)
			}
		})
	}
}

// TestPreCollectLinknamesAfterDecl tests that //go:linkname directives placed after
// function declarations are correctly processed. See #1789.
func TestPreCollectLinknamesAfterDecl(t *testing.T) {
	cases := []struct {
		name string
		src  string
		want string
	}{
		{
			name: "go-linkname-after-func",
			src:  "package runtime\nimport _ \"unsafe\"\nfunc Sigsetjmp()\n//go:linkname Sigsetjmp C.sigsetjmp\n",
			want: "C.sigsetjmp",
		},
		{
			name: "go-linkname-after-func-with-gap",
			src:  "package runtime\nimport _ \"unsafe\"\nfunc Sigsetjmp()\n\n//go:linkname Sigsetjmp C.sigsetjmp\n",
			want: "C.sigsetjmp",
		},
	}
	for _, tt := range cases {
		t.Run(tt.name, func(t *testing.T) {
			fset := token.NewFileSet()
			file, err := parser.ParseFile(fset, "runtime.go", tt.src, parser.ParseComments)
			if err != nil {
				t.Fatalf("ParseFile failed: %v", err)
			}
			prog := llssa.NewProgram(nil)
			PreCollectLinknames(prog, llssa.PkgRuntime, []*ast.File{file})
			if got, ok := prog.Linkname(llssa.PkgRuntime + ".Sigsetjmp"); !ok || got != tt.want {
				t.Fatalf("pre-collected linkname = (%q,%v), want (%q,%v)", got, ok, tt.want, true)
			}
		})
	}
}

// TestFloatingLinknameSkipsUnderscoreSelfLink tests that //go:linkname _cgo_name _cgo_name
// directives (where the name is a cgo symbol and both names are identical) are
// skipped during floating linkname processing. See #1789.
func TestFloatingLinknameSkipsUnderscoreSelfLink(t *testing.T) {
	cases := []struct {
		name      string
		src       string
		symbol    string
		wantFound bool
	}{
		{
			name:      "skip-cgo-init-self-link",
			src:       "package runtime\nimport _ \"unsafe\"\nfunc _cgo_init()\n//go:linkname _cgo_init _cgo_init\n",
			symbol:    "_cgo_init",
			wantFound: false,
		},
		{
			name:      "allow-non-cgo-underscore-self-link",
			src:       "package runtime\nimport _ \"unsafe\"\nfunc _myFunc()\n//go:linkname _myFunc _myFunc\n",
			symbol:    "_myFunc",
			wantFound: true,
		},
		{
			name:      "allow-underscore-different-link",
			src:       "package runtime\nimport _ \"unsafe\"\nfunc _myFunc()\n//go:linkname _myFunc C.my_func\n",
			symbol:    "_myFunc",
			wantFound: true,
		},
		{
			name:      "allow-non-underscore-self-link",
			src:       "package runtime\nimport _ \"unsafe\"\nfunc myFunc()\n//go:linkname myFunc myFunc\n",
			symbol:    "myFunc",
			wantFound: true,
		},
	}
	for _, tt := range cases {
		t.Run(tt.name, func(t *testing.T) {
			fset := token.NewFileSet()
			file, err := parser.ParseFile(fset, "runtime.go", tt.src, parser.ParseComments)
			if err != nil {
				t.Fatalf("ParseFile failed: %v", err)
			}
			prog := llssa.NewProgram(nil)
			PreCollectLinknames(prog, llssa.PkgRuntime, []*ast.File{file})
			_, found := prog.Linkname(llssa.PkgRuntime + "." + tt.symbol)
			if found != tt.wantFound {
				t.Fatalf("Linkname found=%v, want %v", found, tt.wantFound)
			}
		})
	}
}
