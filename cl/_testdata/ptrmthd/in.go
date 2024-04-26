package main

import _ "unsafe"

//go:linkname printf C.printf
func printf(format *int8, __llgo_va_list ...any)

type T int8

func (f *T) Print(v int) {
	printf((*int8)(f), v)
}

var format = [...]T{'H', 'e', 'l', 'l', 'o', ' ', '%', 'd', '\n', 0}

func main() {
	f := &format[0]
	f.Print(100)
}
