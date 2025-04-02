package main

import (
	"github.com/goplus/llgo/c"
)

func hello() string {
	return "Hello world\n"
}

func main() {
	c.Printf(c.AllocaCStr(hello()))
}
