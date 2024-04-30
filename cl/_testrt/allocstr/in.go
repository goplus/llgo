package main

import (
	"github.com/goplus/llgo/internal/runtime/c"
)

func hello() string {
	return "Hello world\n"
}

func main() {
	c.Printf(c.AllocaCStr(hello()))
}
