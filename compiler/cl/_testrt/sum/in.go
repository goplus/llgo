package main

import (
	"github.com/goplus/llgo/c"
)

func sum(args ...int) (ret int) {
	for _, v := range args {
		ret += v
	}
	return
}

func main() {
	c.Printf(c.Str("Hello %d\n"), sum(1, 2, 3, 4))
}
