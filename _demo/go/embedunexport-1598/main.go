package main

import (
	"go/token"
	"go/types"
)

// wrappedFunc embeds *types.Func to implement types.Object
type wrappedFunc struct {
	*types.Func
}

func main() {
	pkg := types.NewPackage("test", "test")
	scope := pkg.Scope()

	sig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	fn := types.NewFunc(token.NoPos, pkg, "testFunc", sig)

	wrapped := &wrappedFunc{Func: fn}
	var obj types.Object = wrapped

	scope.Insert(obj)
}
