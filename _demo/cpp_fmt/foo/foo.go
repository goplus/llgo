package foo

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $(pkg-config --libs fmt_utils); -lfmtutil -lfmt"
)

//go:linkname F C.Cprint
func F(cb *c.Char)
