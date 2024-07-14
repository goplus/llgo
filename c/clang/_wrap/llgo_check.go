package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/clang"
)

const (
	LLGoCFlags = "-I$(llvm-config --includedir)"
)

func main() {
	c.Printf(c.Str("sizeof(clang.Cursor) = %lu\n"), unsafe.Sizeof(clang.Cursor{}))
}
