package main

import (
	"github.com/goplus/llgo/_demo/interf/foo"
	"github.com/goplus/llgo/c"
)

func main() {
	if x, ok := foo.Bar().(struct{ V int }); ok {
		c.Printf(c.Str("%d\n"), x.V)
	} else {
		c.Printf(c.Str("Bar: not ok\n"))
	}
	if x, ok := foo.F().(struct{ v int }); ok {
		c.Printf(c.Str("%d\n"), x.v)
	} else {
		c.Printf(c.Str("F: not ok\n"))
	}
}
