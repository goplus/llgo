package main

import (
	"go/token"
	"go/types"
)

func main() {
	pkg := types.NewPackage("example", "example")
	scope := pkg.Scope()

	obj := types.NewVar(token.NoPos, pkg, "testVar", types.Typ[types.Int])

	insertedObj := scope.Insert(obj)
	if insertedObj != nil {
		println("ERROR: Variable already exists in scope")
		return
	}

	lookup := scope.Lookup("testVar")
	if lookup == nil {
		println("ERROR: Failed to lookup variable")
		return
	}

	if lookup.Name() != "testVar" {
		println("ERROR: Wrong variable name")
		return
	}

	println("SUCCESS: Scope.Insert and Lookup work correctly")
}
