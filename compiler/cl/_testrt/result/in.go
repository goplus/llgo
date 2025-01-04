package main

import (
	"github.com/goplus/llgo/c"
)

func main() {
	fn := func() func(int, int) int {
		return func(x, y int) int {
			return x + y
		}
	}()
	c.Printf(c.Str("%d\n"), fn(100, 200))
	c.Printf(c.Str("%d\n"), add()(100, 200))
	fn, n := add2()
	c.Printf(c.Str("%d %d\n"), add()(100, 200), n)
}

func add() func(int, int) int {
	return func(x, y int) int {
		return x + y
	}
}

func add2() (func(int, int) int, int) {
	return func(x, y int) int {
		return x + y
	}, 1
}
