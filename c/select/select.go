package _select

import (
	"github.com/goplus/llgo/c/fddef"
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "decl"
)

// (TODO) merge to timeval
//
type TimeVal struct {
	TvSec  c.Long
	TvUSec c.Int
}

//go:linkname Select C.select
func Select(n c.Int, r *fddef.FdSet, w *fddef.FdSet, e *fddef.FdSet, timeout *TimeVal) c.Int
