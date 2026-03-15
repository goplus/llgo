//go:build !nogc && !baremetal

package runtime

import (
	"runtime"

	"github.com/goplus/llgo/runtime/internal/clite/bdwgc"
)

var (
	lastBytesSinceGC uintptr
	gcCyclesEstimate uint32
)

func ReadMemStats(m *runtime.MemStats) {
	if m == nil {
		return
	}
	*m = runtime.MemStats{}
	var heapSize, freeBytes, unmappedBytes, bytesSinceGC, totalBytes uintptr
	bdwgc.GetHeapUsageSafe(&heapSize, &freeBytes, &unmappedBytes, &bytesSinceGC, &totalBytes)
	live := heapSize
	if freeBytes <= live {
		live -= freeBytes
	} else {
		live = 0
	}
	if lastBytesSinceGC != 0 && bytesSinceGC < lastBytesSinceGC {
		gcCyclesEstimate++
	}
	lastBytesSinceGC = bytesSinceGC
	if heapSize != 0 {
		if est := uint32(totalBytes / heapSize); est > gcCyclesEstimate {
			gcCyclesEstimate = est
		}
	}
	m.Alloc = uint64(live)
	m.Sys = uint64(heapSize)
	m.HeapAlloc = uint64(live)
	m.HeapInuse = uint64(heapSize - unmappedBytes)
	m.HeapIdle = uint64(freeBytes)
	m.HeapSys = uint64(heapSize)
	m.TotalAlloc = uint64(totalBytes)
	m.NumGC = gcCyclesEstimate
}

func GC() {
	bdwgc.Gcollect()
	// BDW finalizers are observed on a subsequent collection cycle.
	// Run one extra cycle so weak-pointer cleanup hooks (unique/weak) see
	// finalized state before we trigger map cleanup callbacks.
	bdwgc.Gcollect()
	gcCyclesEstimate += 2
	lastBytesSinceGC = 0
	unique_runtime_notifyMapCleanup()
	if poolCleanup != nil {
		poolCleanup()
	}
}
