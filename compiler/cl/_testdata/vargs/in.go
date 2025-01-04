package main

import "github.com/goplus/llgo/c"

func test(a ...any) {
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v.(int))
	}
}

func main() {
	test(1, 2, 3)
}
