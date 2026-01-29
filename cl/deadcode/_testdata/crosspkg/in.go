package main

import "github.com/goplus/llgo/cl/deadcode/_testdata/crosspkg/foo"

func main() {
	foo.A()
}

func unused() {}
