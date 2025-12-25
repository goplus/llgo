//go:build darwin

package runtime

import "github.com/goplus/llgo/c"

const LLGoPackage = "link"

//go:linkname Sigsetjmp C.sigsetjmp
func Sigsetjmp(env *SigjmpBuf, savemask c.Int) c.Int

//go:linkname Siglongjmp C.siglongjmp
func Siglongjmp(env *SigjmpBuf, val c.Int)
