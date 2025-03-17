package main

import _ "unsafe"

//go:linkname cstr llgo.cstr
func cstr(string) *int8

//go:linkname printf C.printf
func printf(format *int8, __llgo_va_list ...any)

func hello() string {
	return "Hello, world\n"
}

func main() {
	printf(cstr("Hello, world\n"))
	printf(cstr(hello()))
}
