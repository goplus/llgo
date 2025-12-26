//go:build !linux

package runtime

import (
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

//go:linkname Sigsetjmp C.sigsetjmp
func Sigsetjmp(env *SigjmpBuf, savemask c.Int) c.Int
