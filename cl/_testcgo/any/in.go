package main

import _ "unsafe"

func incVal(a any) int {
	return a.(int) + 1
}

//go:linkname printf C.printf
func printf(format *int8, __llgo_va_list ...any)

var format = [...]int8{'H', 'e', 'l', 'l', 'o', ' ', '%', 'd', '\n', 0}

func main() {
	printf(&format[0], incVal(100))
}
