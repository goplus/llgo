//go:build !nogc && baremetal

package runtime

import "github.com/goplus/llgo/runtime/internal/runtime/tinygogc"

func GC() {
	tinygogc.GC()
}
