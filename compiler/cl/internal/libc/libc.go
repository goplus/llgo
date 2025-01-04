package libc

import "C"
import _ "unsafe"

const (
	LLGoPackage = "decl"
)

//go:linkname Printf C.printf
func Printf(format *int8, __llgo_va_list ...any)

//go:linkname Strlen C.strlen
func Strlen(str *int8) C.int
