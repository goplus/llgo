package main

import (
	_ "unsafe"

	_ "github.com/goplus/llgo/c"
)

const (
	LLGoFiles   = "_c/generators.c; ../../_neco/neco.c"
	LLGoPackage = "link"
)

func main() {
	run_main()
}

//go:linkname run_main C.run_main
func run_main() {}
