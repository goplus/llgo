package time

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

// panicErrno formats a minimal message without pulling in fmt.
func panicErrno(msg string, errno c.Int) {
	var buf [256]c.Char

	errC := c.Strerror(errno)
	if errC == nil {
		errC = c.Str("")
	}

	c.Snprintf(
		(*c.Char)(unsafe.Pointer(&buf[0])),
		uintptr(len(buf)),
		c.Str("%s: errno %d: %s"),
		c.AllocaCStr(msg),
		errno,
		errC,
	)

	panic(c.GoString((*c.Char)(unsafe.Pointer(&buf[0]))))
}
