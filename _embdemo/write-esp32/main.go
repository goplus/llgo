package main

import "github.com/goplus/lib/c"

func main() {
	buf := c.Malloc(6)
	c.Memset(buf, 0, 6)
	c.Strncpy((*c.Char)(buf), c.Str("abcde"), 5)

	write(1, (*c.Char)(buf), 5)

}
