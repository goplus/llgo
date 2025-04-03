package main

import (
	"github.com/goplus/lib/c"
)

func hello() string {
	return "Hello world\n"
}

func main() {
	c.Printf(c.AllocaCStr(hello()))
}
