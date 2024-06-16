package main

import (
	"github.com/goplus/llgo/c"
)

func foo() {
	c.Unreachable()
}

func main() {
	foo()
	c.Printf(c.Str("Hello\n"))
}
