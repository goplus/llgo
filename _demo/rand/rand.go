package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/math/rand"
)

func main() {
	var s c.Uint = 6
	rand.Srand(s)
	r := rand.Rand_r(&s)
	println("r:", r)
}
