//go:build (darwin || linux) && !baremetal

package runtime

import (
	"strings"
	"unsafe"

	iruntime "github.com/goplus/llgo/runtime/internal/runtime"
)

var pprofLabel unsafe.Pointer

//go:linkname runtime_setProfLabel runtime/pprof.runtime_setProfLabel
func runtime_setProfLabel(labels unsafe.Pointer) {
	pprofLabel = labels
}

//go:linkname runtime_getProfLabel runtime/pprof.runtime_getProfLabel
func runtime_getProfLabel() unsafe.Pointer {
	return pprofLabel
}

//go:linkname runtime_FrameStartLine runtime/pprof.runtime_FrameStartLine
func runtime_FrameStartLine(f *Frame) int {
	if f == nil {
		return 0
	}
	return f.startLine
}

//go:linkname runtime_FrameSymbolName runtime/pprof.runtime_FrameSymbolName
func runtime_FrameSymbolName(f *Frame) string {
	if f == nil {
		return ""
	}
	return f.Function
}

//go:linkname runtime_expandFinalInlineFrame runtime/pprof.runtime_expandFinalInlineFrame
func runtime_expandFinalInlineFrame(stk []uintptr) []uintptr {
	return stk
}

//go:linkname pprof_cyclesPerSecond runtime/pprof.runtime_cyclesPerSecond
func pprof_cyclesPerSecond() int64 {
	return 1
}

var (
	cpuProfilePeriodRecord = []uint64{3, 0, 100}   // [len, timestamp, hz]
	cpuProfilePeriodTags   = []unsafe.Pointer{nil} // one tag slot for the period record
	cpuProfileEOF          = true                  // minimal stub: no streaming samples
)

//go:linkname runtime_pprof_readProfile runtime/pprof.readProfile
func runtime_pprof_readProfile() (data []uint64, tags []unsafe.Pointer, eof bool) {
	// Provide a minimal, valid profile stream for runtime/pprof.
	// The stdlib expects at least the initial "period" record (3 uint64s).
	return cpuProfilePeriodRecord, cpuProfilePeriodTags, cpuProfileEOF
}

//go:linkname pprof_goroutineProfileWithLabels runtime.pprof_goroutineProfileWithLabels
func pprof_goroutineProfileWithLabels(p []rawStackRecord, labels []unsafe.Pointer) (n int, ok bool) {
	return 0, true
}

func isRuntimeProfileFrame(name string) bool {
	return strings.HasPrefix(name, "runtime.") ||
		strings.HasPrefix(name, "github.com/goplus/llgo/runtime/internal/runtime.") ||
		strings.HasPrefix(name, "github.com/goplus/llgo/runtime/internal/lib/runtime.") ||
		strings.HasPrefix(name, "__llgo_") ||
		strings.HasPrefix(name, "GC_") ||
		strings.HasPrefix(name, "_pthread_")
}

func trimProfileStack(callers []uintptr) []uintptr {
	if len(callers) == 0 {
		return callers
	}
	frames := CallersFrames(callers)
	start := -1
	end := len(callers)
	userCount := 0
	for i := 0; i < len(callers); i++ {
		fr, more := frames.Next()
		if isRuntimeProfileFrame(fr.Function) {
			if userCount > 0 {
				end = i
				break
			}
		} else {
			if start < 0 {
				start = i
			}
			userCount++
			end = i + 1
			if userCount >= 2 {
				break
			}
		}
		if !more {
			break
		}
	}
	if start < 0 {
		return callers
	}
	return callers[start:end]
}

//go:linkname pprof_memProfileInternal runtime.pprof_memProfileInternal
func pprof_memProfileInternal(p []rawMemProfileRecord, inuseZero bool) (n int, ok bool) {
	n = iruntime.MemProfileSiteCount()
	if n > len(p) {
		return n, false
	}
	i := 0
	iruntime.MemProfileIterate(func(stack []uintptr, allocBytes, allocObjects int64) {
		stack = trimProfileStack(stack)
		p[i] = rawMemProfileRecord{
			AllocBytes:   allocBytes,
			AllocObjects: allocObjects,
			Stack:        append([]uintptr(nil), stack...),
		}
		i++
	})
	return n, true
}

//go:linkname pprof_blockProfileInternal runtime.pprof_blockProfileInternal
func pprof_blockProfileInternal(p []rawBlockProfileRecord) (n int, ok bool) {
	return 0, true
}

//go:linkname pprof_mutexProfileInternal runtime.pprof_mutexProfileInternal
func pprof_mutexProfileInternal(p []rawBlockProfileRecord) (n int, ok bool) {
	return 0, true
}

//go:linkname pprof_threadCreateInternal runtime.pprof_threadCreateInternal
func pprof_threadCreateInternal(p []rawStackRecord) (n int, ok bool) {
	return 0, true
}

//go:linkname pprof_fpunwindExpand runtime.pprof_fpunwindExpand
func pprof_fpunwindExpand(dst, src []uintptr) int {
	return copy(dst, src)
}

//go:linkname pprof_makeProfStack runtime.pprof_makeProfStack
func pprof_makeProfStack() []uintptr {
	return make([]uintptr, 64)
}
