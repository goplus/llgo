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

//go:linkname demo1 C.demo1
func demo1(info, c.Int) info

//go:linkname demo2 C.demo2
func demo2(info, *c.Int)

//go:linkname demo3 C.demo3
func demo3(info, c.Int) c.Int

//llgo:type C
type bigArr [128]int32

//llgo:link bigArr.scale C.big1
func (bigArr) scale(n int32) (v bigArr) {
	return
}

//llgo:link bigArr._sum C.big2
func (bigArr) _sum(n *int32) {
}

func (b bigArr) sum() (n int32) {
	b._sum(&n)
	return
}

//go:linkname callback C.callback
func callback(info, c.Int, func(info, c.Int) c.Int) c.Int

//go:linkname callback1 C.callback
func callback1(info, c.Int, func(info, c.Int) c.Int) c.Int

func godemo(i info, n c.Int) c.Int {
	return i.a[0] + i.a[1] + i.b + n
}

func main() {
	Test()
}

func Test() {
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

	b1 := bigArr{0: 1, 1: 2, 127: 4}
	b2 := b1.scale(4)
	if b2[0] != 4 || b2[1] != 8 || b2[127] != 16 {
		println(b2[0], b2[1], b2[127])
		panic("bad abi")
	}
	if n := b2.sum(); n != 28 {
		println(n)
		panic("bad abi")
	}

	// callback go func
	n = callback(info{[2]c.Int{1, 2}, 3}, 100, func(i info, n c.Int) c.Int {
		return i.a[0] + i.a[1] + i.b + n
	})
	if n != 106 {
		panic("bad callback abi")
	}
	// callback go func
	n = callback(info{[2]c.Int{1, 2}, 3}, 100, godemo)
	if n != 106 {
		panic("bad callback abi")
	}
	// callback go func
	n = callback1(info{[2]c.Int{1, 2}, 3}, 101, godemo)
	if n != 107 {
		panic("bad callback abi")
	}
	// callback c func
	n = callback(info{[2]c.Int{1, 2}, 3}, 101, demo3)
	if n != 107 {
		println(n)
		panic("bad callback abi")
	}
}
