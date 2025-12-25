//go:build linux

package runtime

import (
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

//go:linkname Sigsetjmp C.__sigsetjmp
func Sigsetjmp(env *SigjmpBuf, savemask c.Int) c.Int
