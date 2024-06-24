package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/math/rand"
)

func main() {
	var s c.Uint = 6
	rand.Srand(s)
	rr := rand.RandR(&s)
	r := rand.Rand()
	println("r:", r)
	println("rr:", rr)
}
