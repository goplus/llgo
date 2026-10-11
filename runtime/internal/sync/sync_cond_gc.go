//go:build !windows && !wasm && !baremetal && !nogc

package sync

import (
	"unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
	"github.com/xgo-dev/llgo/runtime/internal/clite/bdwgc"
)

func condWait(cond *Cond, mutex *Mutex) c.Int {
	return bdwgc.CondWait(unsafe.Pointer(cond), unsafe.Pointer(mutex))
}
