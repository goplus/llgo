package main

import "C"
import _ "unsafe"

//go:linkname printf C.printf
func printf(format *int8, __llgo_va_list ...any)

type Foo = struct {
	A  C.int
	ok bool
}

var format = [...]int8{'H', 'e', 'l', 'l', 'o', ' ', '%', 'd', '\n', 0}

func Print(p *Foo) {
	if p.ok {
		printf(&format[0], p.A)
	}
}

func main() {
	foo := &Foo{100, true}
	Print(foo)
}
