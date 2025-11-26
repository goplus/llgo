package main

import (
	"go/importer"
	"go/token"
)

func main() {
	fset := token.NewFileSet()
	imp := importer.ForCompiler(fset, "gc", nil)
	_ = imp
}
