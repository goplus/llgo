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
	// BDW finalizers are observed on a subsequent collection cycle.
	// Run one extra cycle so weak-pointer cleanup hooks (unique/weak) see
	// finalized state before we trigger map cleanup callbacks.
	bdwgc.Gcollect()
	unique_runtime_notifyMapCleanup()
	if poolCleanup != nil {
		poolCleanup()
	}
}
