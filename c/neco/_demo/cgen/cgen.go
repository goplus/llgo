package main

import (
	_ "unsafe"

	_ "github.com/goplus/llgo/c"
)

const (
	LLGoFiles   = "_c/gen.c; ../../_wrap/neco.c"
	LLGoPackage = "link"
)

func main() {
	runMain()
}

//go:linkname runMain C.run_main
func runMain()
