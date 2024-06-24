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

//go:linkname Rand_r C.rand_r
func Rand_r(*c.Uint) c.Int

//go:linkname Srand C.srand
func Srand(c.Uint)

//go:linkname Sranddev C.sranddev
func Sranddev()
