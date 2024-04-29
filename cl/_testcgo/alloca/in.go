package main

import (
	"unsafe"

	"github.com/goplus/llgo/internal/runtime/c"
)

func main() {
	s := c.String("Hi\n")
	s2 := c.Alloca(4)
	c.Memcpy(s2, unsafe.Pointer(s), 4)
	c.Printf(c.String("%s"), s2)
}
