package main

import (
	"github.com/goplus/llgo/c"
)

func main() {
	s := c.Str("Hi\n")
	s2 := c.Alloca(4)
	c.Memcpy(s2, c.Pointer(s), 4)
	c.Printf(c.Str("%s"), s2)
}
