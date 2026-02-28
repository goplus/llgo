package format_test

import (
	"bytes"
	"go/format"
	"go/parser"
	"go/token"
	"strings"
	"testing"
)

func TestSource(t *testing.T) {
	src := []byte("package p\nfunc  f( ) {println(\"x\")}\n")
	out, err := format.Source(src)
	if err != nil {
		t.Fatalf("Source failed: %v", err)
	}
	got := string(out)
	if !strings.Contains(got, "func f()") {
		t.Fatalf("formatted source missing normalized signature:\n%s", got)
	}
	if !strings.Contains(got, `println("x")`) {
		t.Fatalf("formatted source missing function body:\n%s", got)
	}
}

func TestNode(t *testing.T) {
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, "p.go", "package p\nvar  x=1\n", 0)
	if err != nil {
		t.Fatalf("ParseFile failed: %v", err)
	}
	var buf bytes.Buffer
	if err := format.Node(&buf, fset, file); err != nil {
		t.Fatalf("Node failed: %v", err)
	}
	got := buf.String()
	if !strings.Contains(got, "var x = 1") {
		t.Fatalf("formatted node missing normalized var declaration:\n%s", got)
	}
}
