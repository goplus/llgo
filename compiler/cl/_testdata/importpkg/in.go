package main

import "github.com/goplus/llgo/compiler/cl/_testdata/importpkg/stdio"

var hello = [...]int8{'H', 'e', 'l', 'l', 'o', '\n', 0}

func main() {
	_ = stdio.Max(2, 100)
	stdio.Printf(&hello[0])
}
