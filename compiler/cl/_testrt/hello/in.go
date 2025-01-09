package main

import "github.com/goplus/llgo/compiler/cl/_testrt/hello/libc"

var format = [...]int8{'H', 'e', 'l', 'l', 'o', ' ', '%', 'd', '\n', 0}

func main() {
	sfmt := &format[0]
	libc.Printf(sfmt, libc.Strlen(sfmt))
}
