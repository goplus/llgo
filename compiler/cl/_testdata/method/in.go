package main

import _ "unsafe"

type T int

func (a T) Add(b T) T {
	return a + b
}

//go:linkname printf C.printf
func printf(format *int8, __llgo_va_list ...any)

var format = [...]int8{'H', 'e', 'l', 'l', 'o', ' ', '%', 'd', '\n', 0}

func main() {
	a := T(1)
	printf(&format[0], a.Add(2))
}
