package main

import "github.com/goplus/llgo/internal/deadcode/_testdata/crosspkg/foo"

func main() {
	foo.A()
}

func unused() {}
