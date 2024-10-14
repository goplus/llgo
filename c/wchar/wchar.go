package wchar

import (
	"unicode/utf16"
	"unsafe"

	"github.com/goplus/llgo/c"
)

func AllocWCStr(s string) *c.Wchar {
	wchars := utf16.Encode([]rune(s))
	wbuf := unsafe.SliceData(wchars)
	buf := (*c.Wchar)(c.Malloc(uintptr((len(wchars) + 1) * 2)))
	c.Memcpy(unsafe.Pointer(buf), unsafe.Pointer(wbuf), uintptr(len(wchars)*2))
	plast := c.Advance(buf, len(wchars)*2)
	*plast = 0
	return buf
}
