package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/rust"
)

func main() {
	a := rust.Add(100, 200)
	c.Printf(c.Str("%d"), a)
}
