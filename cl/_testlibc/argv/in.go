package main

import (
	"github.com/goplus/lib/c"
)

func main() {
	for i := c.Int(0); i < c.Argc; i++ {
		c.Printf(c.Str("%s\n"), c.Index(c.Argv, i))
	}
}
