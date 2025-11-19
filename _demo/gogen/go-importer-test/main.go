package main

import (
	"go/importer"
	"go/token"
)

func main() {
	// ForCompiler - just call it to ensure it exists
	// May return nil without proper lookup function, which is expected
	fset := token.NewFileSet()
	_ = importer.ForCompiler(fset, "gc", nil)
}
