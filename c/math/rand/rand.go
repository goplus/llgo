package rand

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "decl"
)

//go:linkname Rand C.rand
func Rand() c.Int

//go:linkname RandR C.rand_r
func RandR(*c.Uint) c.Int

//go:linkname Srand C.srand
func Srand(c.Uint)

//go:linkname Sranddev C.sranddev
func Sranddev()
