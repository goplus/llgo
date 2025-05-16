package os

import (
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

//go:linkname Stat C.stat64
func Stat(path *c.Char, buf *StatT) c.Int

//go:linkname Lstat C.lstat64
func Lstat(path *c.Char, buf *StatT) c.Int
