package main

import (
	"github.com/goplus/llgo/cl/internal/foo"
)

func main() {
	bar := foo.Bar()
	if x, ok := bar.(struct{ V int }); ok {
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
