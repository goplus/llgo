package main

import (
	"go/types"
)

func main() {
	scope := types.NewScope(nil, 0, 0, "test")
	obj := types.NewVar(0, nil, "x", types.Typ[types.Int])

	scope.Insert(obj)

	retrieved := scope.Lookup("x")
	if retrieved == nil {
		println("FAIL: Lookup returned nil")
		return
	}
	if retrieved.Name() != "x" {
		println("FAIL: Name mismatch")
		return
	}

	println("SUCCESS: Scope.Insert and Lookup work correctly")
}
