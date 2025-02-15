//go:build !nogc

package runtime

import "github.com/goplus/llgo/runtime/internal/clite/bdwgc"

func GC() {
	bdwgc.Gcollect()
}
