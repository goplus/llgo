package main

import (
	_ "unsafe"

	"github.com/goplus/lib/c"
)

//go:linkname write C.write
func write(c.Int, *c.Char, c.SizeT) int

func main() {
	buf := c.Malloc(6)
	c.Memset(buf, 0, 6)
	c.Strncpy((*c.Char)(buf), c.Str("abcde"), 5)

	if c.Strcmp((*c.Char)(buf), c.Str("abcde")) == 0 {
		write(1, c.Str("pass strcmp"), 11)
	}

	if byte(c.Index((*c.Char)(buf), 0)) == 'a' {
		write(1, c.Str("pass index"), 10)
	}

	c.Memset(buf, c.Int('A'), 5)
	if c.Strcmp((*c.Char)(buf), c.Str("AAAAA")) == 0 {
		write(1, c.Str("pass memeset"), 11)
	}

	write(1, (*c.Char)(buf), 5)
}
