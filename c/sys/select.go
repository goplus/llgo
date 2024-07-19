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

// -----------------------------------------------------------------------------

type (
	FdSet   = syscall.FdSet
	Timeval = syscall.Timeval
)

//go:linkname FD_ZERO C.llgo_FD_ZERO
func FD_ZERO(fds *FdSet)

//go:linkname FD_SET C.llgo_FD_SET
func FD_SET(fd c.Int, fds *FdSet)

//go:linkname FD_ISSET C.llgo_FD_ISSET
func FD_ISSET(fd c.Int, fds *FdSet) c.Int

//go:linkname Select C.select
func Select(n c.Int, fdsRead, fdsWrite, fdsError *FdSet, timeout *Timeval) c.Int

// -----------------------------------------------------------------------------
