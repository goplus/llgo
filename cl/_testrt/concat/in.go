package main

import (
	"github.com/goplus/llgo/internal/runtime/c"
)

func main() {
	c.Fprintf(c.Stderr, c.Str("Hello %d\n"), 100)
}
