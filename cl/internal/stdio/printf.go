package stdio

import _ "unsafe"

const (
	LLGoPackage = true
)

//go:linkname Printf printf
func Printf(format *int8, __llgo_va_list ...any)

func Max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
