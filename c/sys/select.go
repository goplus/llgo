package sys

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/syscall"
)

const (
	LLGoFiles   = "_wrap/fddef.c"
	LLGoPackage = "link"
)

//go:linkname FD_ZERO C.fd_zero
func FD_ZERO(fdSet *syscall.FdSet)

//go:linkname FD_SET C.fdSet
func FD_SET(fd c.Int, fdSet *syscall.FdSet)

//go:linkname FD_ISSET C.fd_isset
func FD_ISSET(fd c.Int, fdSet *syscall.FdSet) c.Int

//go:linkname Select C.select
func Select(n c.Int, r *syscall.FdSet, w *syscall.FdSet, e *syscall.FdSet, timeout *syscall.Timeval) c.Int
