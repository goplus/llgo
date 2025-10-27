package main

import (
	"go/types"
)

func main() {
	scope := types.NewScope(nil, 0, 0, "test")
	obj := types.NewVar(0, nil, "x", types.Typ[types.Int])

	scope.Insert(obj)

	if scope.Lookup("x") == obj {
		println("SUCCESS: Scope.Insert and Lookup work correctly")
	} else {
		println("FAIL: Lookup returned wrong object")
	}
}
