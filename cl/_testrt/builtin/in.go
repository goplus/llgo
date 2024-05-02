package main

import (
	"github.com/goplus/llgo/internal/runtime/c"
)

var a int64 = 1<<63 - 1
var b int64 = -1 << 63
var n uint64 = 1<<64 - 1

func main() {
	var s = []int{1, 2, 3, 4}
	var a = [...]int{1, 2, 3, 4}

	out(len(s))
	out(len([]int{1, 2, 3, 4}))
	out(len(a))
	out(len(&a))
	out(len([4]int{1, 2, 3, 4}))
	string_len("hello")

	out(cap(s))
	out(cap(a))
	out(cap(&a))
}

func string_len(s string) {
	out(len(s))
}

func out(n int) {
	c.Printf(c.Str("%d\n"), n)
}
