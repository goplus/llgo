package main

import (
	"github.com/goplus/llgo/internal/runtime/c"
)

func foo() {
	c.Unreachable()
}

func main() {
	foo()
	c.Printf(c.String("Hello\n"))
}
