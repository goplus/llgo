package main

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
	_ "github.com/goplus/llgo/compiler/cl/_testrt/linkname/linktarget"
)

//go:linkname print github.com/goplus/llgo/compiler/cl/_testrt/linkname/linktarget.F
func print(a, b, c, d *c.Char)

type m struct {
	s string
}

//go:linkname setInfo github.com/goplus/llgo/compiler/cl/_testrt/linkname/linktarget.(*m).setInfo
func setInfo(*m, string)

//go:linkname info github.com/goplus/llgo/compiler/cl/_testrt/linkname/linktarget.m.info
func info(m) string

func main() {
	print(c.Str("a"), c.Str("b"), c.Str("c"), c.Str("d"))
	print(c.Str("1"), c.Str("2"), c.Str("3"), c.Str("4"))
	var m m
	setInfo(&m, "hello")
	println(info(m))
}
