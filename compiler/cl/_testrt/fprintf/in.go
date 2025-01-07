package main

import "unsafe"

//go:linkname cstr llgo.cstr
func cstr(string) *int8

//go:linkname stderr __stderrp
var stderr unsafe.Pointer

//go:linkname fprintf C.fprintf
func fprintf(fp unsafe.Pointer, format *int8, __llgo_va_list ...any)

func main() {
	fprintf(stderr, cstr("Hello %d\n"), 100)
}
