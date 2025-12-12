package main

import _ "github.com/goplus/llgo/_demo/embed/targetsbuild/C"

func main() {
	defer println("defer 1")
	defer println("defer 2")

	for i := 0; i < 3; i++ {
		defer println("defer in loop", i)
	}
}
