package main

import (
	"fmt"

	"github.com/goplus/lib/c"
)

func main() {
	println("hello world by println")
	fmt.Println("hello world by fmt.Println")
	c.Printf(c.Str("Hello world by c.Printf\n"))
}
