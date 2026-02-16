package doc_test

import (
	"bytes"
	"go/ast"
	"go/doc"
	"go/parser"
	"go/token"
	"strings"
	"testing"
)

func parseFile(t *testing.T, fset *token.FileSet, name, src string) *ast.File {
	t.Helper()
	f, err := parser.ParseFile(fset, name, src, parser.ParseComments)
	if err != nil {
		t.Fatalf("ParseFile %s: %v", name, err)
	}
	return f
}

func TestPackageDocBasics(t *testing.T) {
	fset := token.NewFileSet()
	src := `package p
// T is a type.
type T struct{}
// F returns T.
func F() T { return T{} }
`
	file := parseFile(t, fset, "p.go", src)
	pkg := &ast.Package{Name: "p", Files: map[string]*ast.File{"p.go": file}}

	pdoc := doc.New(pkg, "example/p", doc.AllDecls|doc.AllMethods|doc.PreserveAST)
	if pdoc == nil {
		t.Fatal("doc.New returned nil")
	}
	if pdoc.Name != "p" {
		t.Fatalf("Name = %q, want %q", pdoc.Name, "p")
	}
	if len(pdoc.Types) == 0 {
		t.Fatal("expected at least one documented type")
	}

	if got := pdoc.Synopsis("Hello world.\n\nMore"); got != "Hello world." {
		t.Fatalf("Synopsis = %q", got)
	}
	if len(pdoc.Text("A paragraph.")) == 0 {
		t.Fatal("Text output is empty")
	}
	if len(pdoc.HTML("A paragraph.")) == 0 {
		t.Fatal("HTML output is empty")
	}
	if len(pdoc.Markdown("A paragraph.")) == 0 {
		t.Fatal("Markdown output is empty")
	}
	if pdoc.Parser() == nil || pdoc.Printer() == nil {
		t.Fatal("Parser/Printer should not be nil")
	}

	// Filter out exported identifiers only.
	pdoc.Filter(func(s string) bool { return strings.HasPrefix(s, "T") || strings.HasPrefix(s, "F") })
	if len(pdoc.Types) == 0 {
		t.Fatal("Filter removed all documented types unexpectedly")
	}
}

func TestNewFromFilesAndExamples(t *testing.T) {
	fset := token.NewFileSet()
	mainFile := parseFile(t, fset, "p.go", `package p
func X() {}
`)
	testFile := parseFile(t, fset, "p_test.go", `package p_test
import "fmt"
func ExampleX() { fmt.Println("ok") }
`)

	pdoc, err := doc.NewFromFiles(fset, []*ast.File{mainFile, testFile}, "example/p", doc.PreserveAST)
	if err != nil {
		t.Fatalf("NewFromFiles: %v", err)
	}
	if pdoc == nil {
		t.Fatal("NewFromFiles returned nil package")
	}

	examples := doc.Examples(testFile)
	if len(examples) == 0 {
		t.Fatal("Examples returned no examples")
	}
}

func TestLegacyHelpers(t *testing.T) {
	if !doc.IsPredeclared("int") {
		t.Fatal("int should be predeclared")
	}
	if got := doc.Synopsis("First sentence.\nSecond line."); got != "First sentence." {
		t.Fatalf("Synopsis = %q", got)
	}

	var html bytes.Buffer
	doc.ToHTML(&html, "A [link](https://go.dev).", nil)
	if html.Len() == 0 {
		t.Fatal("ToHTML output is empty")
	}

	var text bytes.Buffer
	doc.ToText(&text, "A paragraph.", "", "\t", 80)
	if text.Len() == 0 {
		t.Fatal("ToText output is empty")
	}
}

func TestPublicAPISymbols(t *testing.T) {
	_ = doc.IllegalPrefixes
	_ = doc.IsPredeclared
	_ = doc.Synopsis
	_ = doc.ToHTML
	_ = doc.ToText
	_ = doc.Examples
	_ = doc.New
	_ = doc.NewFromFiles

	_ = doc.AllDecls
	_ = doc.AllMethods
	_ = doc.PreserveAST
	if doc.Mode(0) != 0 {
		t.Fatalf("Mode conversion mismatch: got %v, want 0", doc.Mode(0))
	}

	var _ doc.Filter = func(string) bool { return true }
	_ = doc.Example{}
	_ = doc.Func{}
	_ = doc.Note{}
	_ = doc.Package{}
	_ = doc.Type{}
	_ = doc.Value{}

	if !strings.Contains(strings.ToLower(strings.Join(doc.IllegalPrefixes, ",")), "copyright") {
		t.Fatal("IllegalPrefixes missing expected value")
	}
}
