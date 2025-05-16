//go:build !darwin
// +build !darwin

package os

import (
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

//go:linkname Stat C.stat
func Stat(path *c.Char, buf *StatT) c.Int

//go:linkname Lstat C.lstat
func Lstat(path *c.Char, buf *StatT) c.Int
