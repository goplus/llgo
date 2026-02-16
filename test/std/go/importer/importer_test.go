package importer_test

import (
	"go/importer"
	"go/token"
	"testing"
)

func TestDefaultImporter(t *testing.T) {
	imp := importer.Default()
	if imp == nil {
		t.Fatalf("Default returned nil importer")
	}
	if _, err := imp.Import("fmt"); err != nil {
		t.Fatalf("Default importer failed to import fmt: %v", err)
	}
}

func TestForAndForCompiler(t *testing.T) {
	imp := importer.For("gc", nil)
	if imp == nil {
		t.Fatalf("For(gc,nil) returned nil importer")
	}
	if _, err := imp.Import("math"); err != nil {
		t.Fatalf("For(gc,nil) failed to import math: %v", err)
	}

	fset := token.NewFileSet()
	imp2 := importer.ForCompiler(fset, "gc", nil)
	if imp2 == nil {
		t.Fatalf("ForCompiler returned nil importer")
	}
	if _, err := imp2.Import("strings"); err != nil {
		t.Fatalf("ForCompiler failed to import strings: %v", err)
	}

	// Reference exported Lookup type explicitly.
	var _ importer.Lookup
}
