//go:build !nogc && !baremetal

package runtime

import (
	"runtime"

	"github.com/goplus/llgo/runtime/internal/clite/bdwgc"
)

func ReadMemStats(m *runtime.MemStats) {
	if m == nil {
		return
	}
	*m = runtime.MemStats{}
	heapSys := uint64(bdwgc.GetHeapSize())
	heapAlloc := uint64(bdwgc.GetMemoryUse())
	heapIdle := uint64(bdwgc.GetFreeBytes())
	heapInuse := uint64(bdwgc.GetTotalBytes())
	m.Sys = heapSys
	m.Alloc = heapAlloc
	m.TotalAlloc = heapAlloc
	m.HeapAlloc = heapAlloc
	m.HeapSys = heapSys
	m.HeapIdle = heapIdle
	m.HeapInuse = heapInuse
	m.NumGC = uint32(bdwgc.GetGCNo())
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
