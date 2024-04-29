package main

import (
	"github.com/goplus/llgo/internal/runtime/c"
)

func incVal(a any) int {
	return a.(int) + 1
}

func main() {
	c.Printf(c.String("Hello %d\n"), incVal(100))
}
