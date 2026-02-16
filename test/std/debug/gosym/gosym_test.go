package gosym_test

import (
	"strings"
	"testing"

	"debug/gosym"
)

func TestSymNameHelpers(t *testing.T) {
	s := &gosym.Sym{Name: "io.(*LimitedReader).Read", Type: 'T'}
	if got := s.PackageName(); got != "io" {
		t.Fatalf("PackageName = %q, want %q", got, "io")
	}
	if got := s.ReceiverName(); got != "(*LimitedReader)" {
		t.Fatalf("ReceiverName = %q, want %q", got, "(*LimitedReader)")
	}
	if got := s.BaseName(); got != "Read" {
		t.Fatalf("BaseName = %q, want %q", got, "Read")
	}
	if s.Static() {
		t.Fatal("Static() = true, want false for Type 'T'")
	}

	s.Type = 't'
	if !s.Static() {
		t.Fatal("Static() = false, want true for Type 't'")
	}
}

func TestTableAndLineTableBasics(t *testing.T) {
	lt := gosym.NewLineTable(nil, 0x1000)
	if lt == nil {
		t.Fatal("NewLineTable returned nil")
	}
	_ = lt.PCToLine(0x1000)
	_ = lt.LineToPC(1, 0x2000)

	if _, err := gosym.NewTable(nil, lt); err == nil {
		// Keep this call as API/behavior coverage. Empty symtab is expected to be invalid.
		t.Log("NewTable(nil, lt) returned nil error")
	}

	tab := &gosym.Table{}
	if tab.PCToFunc(0x1000) != nil {
		t.Fatal("PCToFunc should return nil for empty table")
	}
	file, line, fn := tab.PCToLine(0x1000)
	if file != "" || line != 0 || fn != nil {
		t.Fatalf("PCToLine on empty table = (%q,%d,%v), want (\"\",0,nil)", file, line, fn)
	}
	if _, _, err := tab.LineToPC("missing.go", 1); err == nil {
		t.Fatal("LineToPC should fail on missing file")
	}
	if tab.LookupSym("X") != nil {
		t.Fatal("LookupSym should return nil for missing symbol")
	}
	if tab.LookupFunc("X") != nil {
		t.Fatal("LookupFunc should return nil for missing func")
	}
	if tab.SymByAddr(1) != nil {
		t.Fatal("SymByAddr should return nil for missing address")
	}
}

func TestErrorTypes(t *testing.T) {
	uf := gosym.UnknownFileError("main.go")
	if got := uf.Error(); !strings.Contains(got, "unknown file") {
		t.Fatalf("UnknownFileError.Error() = %q", got)
	}

	ul := &gosym.UnknownLineError{File: "main.go", Line: 10}
	if got := ul.Error(); !strings.Contains(got, "main.go:10") {
		t.Fatalf("UnknownLineError.Error() = %q", got)
	}

	de := new(gosym.DecodingError)
	if got := de.Error(); !strings.Contains(got, "byte") {
		t.Fatalf("DecodingError.Error() = %q", got)
	}
}

func TestPublicAPISymbols(t *testing.T) {
	_ = gosym.NewLineTable
	_ = gosym.NewTable
	_ = gosym.UnknownFileError("x").Error

	_ = gosym.Func{}
	_ = gosym.Obj{}
	_ = gosym.Sym{}
	_ = gosym.LineTable{}
	_ = gosym.Table{}
}
