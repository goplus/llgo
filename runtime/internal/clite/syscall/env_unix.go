package syscall

import (
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

//go:linkname c_getenv C.getenv
func c_getenv(name *c.Char) *c.Char

func Getenv(key string) (value string, found bool) {
	if len(key) == 0 {
		return "", false
	}
	name := c.AllocaCStr(key)
	v := c_getenv(name)
	if v == nil {
		return "", false
	}
	return c.GoString(v), true
}
