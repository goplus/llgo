package debug

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link"
	LLGoFiles   = "_wrap/debug.c"
)

type Info struct {
	Fname *c.Char
	Fbase c.Pointer
	Sname *c.Char
	Saddr c.Pointer
}

//go:linkname Address C.llgo_address
func Address() unsafe.Pointer

//go:linkname Addrinfo C.llgo_addrinfo
func Addrinfo(addr unsafe.Pointer, info *Info) c.Int
