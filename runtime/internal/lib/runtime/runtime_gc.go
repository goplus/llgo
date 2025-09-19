//go:build !nogc && !baremetal

package runtime

import (
	"runtime"

	"github.com/goplus/llgo/runtime/internal/clite/bdwgc"
)

func ReadMemStats(m *runtime.MemStats) {
	panic("todo: runtime.ReadMemStats")
}

func GC() {
	bdwgc.Gcollect()
}
