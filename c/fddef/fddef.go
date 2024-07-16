package fddef

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

const (
	LLGoFiles   = "_wrap/fddef.c"
	LLGoPackage = "link: c"
)

type FdSet struct {
	Unused [8]byte
}

//go:linkname FdZero C.fd_zero
func FdZero(fdSet *FdSet)

//go:linkname Fdset C.fdSet
func Fdset(fd c.Int, fdSet *FdSet)

//go:linkname FdIsset C.fd_isset
func FdIsset(fd c.Int, fdSet *FdSet) c.Int
