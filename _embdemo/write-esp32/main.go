package main

import (
	_ "unsafe"
	"github.com/goplus/lib/c"
)

//go:linkname write C.write
func write(fd c.Int, *c.Char, c.SizeT) int

func main() {
	buf := c.Malloc(6)
	c.Memset(buf, 0, 6)
	c.Strncpy((*c.Char)(buf), c.Str("abcde"), 5)

	write(1, (*c.Char)(buf), 5)
}
