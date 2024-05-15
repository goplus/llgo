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

	out(cap(s))
	out(cap(a))
	out(cap(&a))

	out(len(s[1:]))
	out(cap(s[1:]))
	out(len(s[1:2]))
	out(cap(s[1:2]))
	out(len(s[1:2:2]))
	out(cap(s[1:2:2]))

	out(len(a[1:]))
	out(cap(a[1:]))
	out(len(a[1:2]))
	out(cap(a[1:2]))
	out(len(a[1:2:2]))
	out(cap(a[1:2:2]))

	string_len("hello")
	string_len("hello"[1:])
	string_len("hello"[1:2])
	string_len("hello"[5:])

	s = append(s, 5, 6, 7, 8)
	out(len(s))
	data := []byte{'a', 'b', 'c'}
	data = append(data, "def"...)
	out(len(data))
}

func string_len(s string) {
	out(len(s))
}

func out(n int) {
	c.Printf(c.Str("%d\n"), n)
}
