package stdio

import _ "unsafe"

//go:linkname printf printf
func printf(format *int8, __llgo_va_list ...any)
