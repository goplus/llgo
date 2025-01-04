package main

import "C"
import _ "unsafe"

//go:linkname printf C.printf
func printf(format *int8, __llgo_va_list ...any)

//go:linkname strlen C.strlen
func strlen(str *int8) C.int

var format = [...]int8{'H', 'e', 'l', 'l', 'o', ' ', '%', 'd', '\n', 0}

func main() {
	sfmt := &format[0]
	printf(sfmt, strlen(sfmt))
}
