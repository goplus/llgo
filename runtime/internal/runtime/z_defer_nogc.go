//go:build nogc
// +build nogc

package runtime

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

// FreeDeferNode releases the defer node when GC integration is disabled.
func FreeDeferNode(ptr unsafe.Pointer) {
	if ptr != nil {
		c.Free(ptr)
	}
}
