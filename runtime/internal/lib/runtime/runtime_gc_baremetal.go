//go:build !nogc && baremetal

package runtime

import (
	"runtime"

	"github.com/goplus/llgo/runtime/internal/runtime/tinygogc"
)

func ReadMemStats(m *runtime.MemStats) {
	stats := tinygogc.ReadGCStats()
	m.StackInuse = stats.StackInuse
	m.StackSys = stats.StackSys
	m.HeapSys = stats.HeapSys
	m.GCSys = stats.GCSys
	m.TotalAlloc = stats.TotalAlloc
	m.Mallocs = stats.Mallocs
	m.Frees = stats.Frees
	m.Sys = stats.Sys
	m.HeapAlloc = stats.HeapAlloc
	m.Alloc = stats.Alloc
}

func GC() {
	tinygogc.GC()
}
