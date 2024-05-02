package main

import (
	_ "unsafe"

	"github.com/goplus/llgo/internal/runtime/c"
)

//go:linkname print github.com/goplus/llgo/cl/internal/linktarget.F
func print(a, b, c, d *c.Char)

func main() {
	print(c.Str("a"), c.Str("b"), c.Str("c"), c.Str("d"))
	print(c.Str("1"), c.Str("2"), c.Str("3"), c.Str("4"))
}
