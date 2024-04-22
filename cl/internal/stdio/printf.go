package stdio

import _ "unsafe"

//go:linkname Printf printf
func Printf(format *int8, __llgo_va_list ...any)
