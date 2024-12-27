package main

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link"
	LLGoFiles   = "wrap/wrap.c"
)

//llgo:type C
type info struct {
	a [2]c.Int
	b c.Int
}

//llgo:type C
type infoBig struct {
	a [128]c.Int
}

//go:linkname demo1 C.demo1
func demo1(info, c.Int) info

//go:linkname demo2 C.demo2
func demo2(info, *c.Int)

//go:linkname big1 C.big1
func big1(infoBig, c.Int) infoBig

//go:linkname big2 C.big2
func big2(infoBig, *c.Int)

func main() {
	i := demo1(info{[2]c.Int{1, 2}, 3}, 4)
	if i.a[0] != 4 || i.a[1] != 8 || i.b != 12 {
		println(i.a[0], i.a[1], i.b)
		panic("bad abi")
	}
	var n c.Int
	demo2(info{[2]c.Int{1, 2}, 3}, &n)
	if n != 6 {
		println(n)
		panic("bad abi")
	}
	b := big1(infoBig{[128]c.Int{0: 1, 1: 2, 127: 3}}, 4)
	if b.a[0] != 4 || b.a[1] != 8 || b.a[127] != 12 {
		println(b.a[0], b.a[1], b.a[127])
		panic("bad abi")
	}
	n = 0
	big2(infoBig{[128]c.Int{0: 1, 1: 2, 127: 3}}, &n)
	if n != 6 {
		println(n)
		panic("bad abi")
	}
}
