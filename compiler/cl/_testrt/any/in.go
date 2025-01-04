package main

import (
	"github.com/goplus/llgo/c"
)

func hi(a any) *c.Char {
	return a.(*c.Char)
}

func incVal(a any) int {
	return a.(int) + 1
}

func main() {
	c.Printf(c.Str("%s %d\n"), hi(c.Str("Hello")), incVal(100))
}
