package main

import (
	"github.com/goplus/llgo/_demo/interf/foo"
)

func main() {
	if x, ok := foo.Bar().(struct{ V int }); ok {
		println(x.V)
	} else {
		println("Bar: not ok")
	}
	if x, ok := foo.F().(struct{ v int }); ok {
		println(x.v)
	} else {
		println("F: not ok")
	}
}
