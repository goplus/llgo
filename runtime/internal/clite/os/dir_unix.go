//go:build !(darwin && amd64)
// +build !darwin !amd64

package os

import (
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/syscall"
)

//go:linkname Fdopendir C.fdopendir
func Fdopendir(fd c.Int) *DIR

//go:linkname Readdir C.readdir
func Readdir(dir *DIR) *syscall.Dirent

//go:linkname Fstatat C.fstatat
func Fstatat(dirfd c.Int, path *c.Char, buf *StatT, flags c.Int) c.Int
