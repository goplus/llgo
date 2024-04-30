package main

import (
	"unsafe"

	"github.com/goplus/llgo/internal/runtime/c"
)

func main() {
	s := c.Str("Hi\n")
	s2 := c.Alloca(4)
	c.Memcpy(s2, unsafe.Pointer(s), 4)
	c.Printf(c.Str("%s"), s2)
}
