package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/rust/random"
)

func main() {
	num := random.GetRandomNumber()
	c.Printf(c.Str("%d\n"), num)

	code := random.GetCode()
	c.Printf(c.Str("%s\n"), code)
}