//go:build go1.23

package main

import (
	"fmt"
	"go/build"
	"runtime"
)

func main() {
	fmt.Printf("runtime.Compiler = %q\n", runtime.Compiler)
	pkg, err := build.Import("fmt", "", build.FindOnly)
	if err != nil {
		panic(err)
	}
	fmt.Printf("Package: %s\n", pkg.ImportPath)
	fmt.Printf("Success! go/build works with llgo\n")
}
