package main

import (
	"github.com/goplus/llgo/_demo/runtest/bar"
	"github.com/goplus/llgo/_demo/runtest/foo"
)

func Zoo() int {
	return 3
}

func main() {
	println("foo.Foo()", foo.Foo())
	println("bar.Bar()", bar.Bar())
	println("Zoo()", Zoo())
}
