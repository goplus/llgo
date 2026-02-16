package printer_test

import (
	"bytes"
	"go/parser"
	"go/printer"
	"go/token"
	"strings"
	"testing"
)

func TestFprintAndConfig(t *testing.T) {
	src := "package p\n// c\nvar x=1\n"
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, "p.go", src, parser.ParseComments)
	if err != nil {
		t.Fatalf("ParseFile failed: %v", err)
	}

	var buf bytes.Buffer
	if err := printer.Fprint(&buf, fset, file); err != nil {
		t.Fatalf("printer.Fprint failed: %v", err)
	}
	if got := buf.String(); !strings.Contains(got, "var x = 1") {
		t.Fatalf("Fprint output missing var decl:\n%s", got)
	}

	cfg := &printer.Config{
		Mode:     printer.TabIndent | printer.UseSpaces,
		Tabwidth: 8,
		Indent:   1,
	}
	buf.Reset()
	if err := cfg.Fprint(&buf, fset, &printer.CommentedNode{Node: file, Comments: file.Comments}); err != nil {
		t.Fatalf("Config.Fprint failed: %v", err)
	}
	if got := buf.String(); !strings.Contains(got, "// c") {
		t.Fatalf("Config.Fprint output missing comments:\n%s", got)
	}
}

func TestModeConstants(t *testing.T) {
	var _ printer.Mode = printer.RawFormat
	m := printer.RawFormat | printer.SourcePos | printer.TabIndent | printer.UseSpaces
	if m&printer.RawFormat == 0 || m&printer.SourcePos == 0 {
		t.Fatalf("mode flags not set as expected: %v", m)
	}
}
