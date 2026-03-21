//go:build (darwin || linux) && !baremetal

package runtime

import (
	"unsafe"

	clitedebug "github.com/goplus/llgo/runtime/internal/clite/debug"
	iruntime "github.com/goplus/llgo/runtime/internal/runtime"
)

type rawStackRecord struct {
	Stack []uintptr
}

type rawMemProfileRecord struct {
	AllocBytes, FreeBytes     int64
	AllocObjects, FreeObjects int64
	Stack                     []uintptr
}

type rawBlockProfileRecord struct {
	Count  int64
	Cycles int64
	Stack  []uintptr
}

func init() {
	iruntime.SetMemProfileRatePtr(&MemProfileRate)
}

type StackRecord struct {
	Stack0 [32]uintptr
}

func (r *StackRecord) Stack() []uintptr {
	for i, v := range r.Stack0 {
		if v == 0 {
			return r.Stack0[:i]
		}
	}
	return r.Stack0[:]
}

type MemProfileRecord struct {
	AllocBytes, FreeBytes     int64
	AllocObjects, FreeObjects int64
	Stack0                    [32]uintptr
}

func (r *MemProfileRecord) InUseBytes() int64 {
	return r.AllocBytes - r.FreeBytes
}

func (r *MemProfileRecord) InUseObjects() int64 {
	return r.AllocObjects - r.FreeObjects
}

func (r *MemProfileRecord) Stack() []uintptr {
	for i, v := range r.Stack0 {
		if v == 0 {
			return r.Stack0[:i]
		}
	}
	return r.Stack0[:]
}

type BlockProfileRecord struct {
	Count  int64
	Cycles int64
	StackRecord
}

func MemProfile(p []MemProfileRecord, inuseZero bool) (n int, ok bool) {
	raw := make([]rawMemProfileRecord, len(p))
	n, ok = pprof_memProfileInternal(raw, inuseZero)
	if ok {
		for i := 0; i < n; i++ {
			copyMemProfileRecord(&p[i], raw[i])
		}
	}
	return n, ok
}

func BlockProfile(p []BlockProfileRecord) (n int, ok bool) {
	raw := make([]rawBlockProfileRecord, len(p))
	n, ok = pprof_blockProfileInternal(raw)
	if ok {
		for i := 0; i < n; i++ {
			copyBlockProfileRecord(&p[i], raw[i])
		}
	}
	return n, ok
}

func MutexProfile(p []BlockProfileRecord) (n int, ok bool) {
	raw := make([]rawBlockProfileRecord, len(p))
	n, ok = pprof_mutexProfileInternal(raw)
	if ok {
		for i := 0; i < n; i++ {
			copyBlockProfileRecord(&p[i], raw[i])
		}
	}
	return n, ok
}

func ThreadCreateProfile(p []StackRecord) (n int, ok bool) {
	raw := make([]rawStackRecord, len(p))
	n, ok = pprof_threadCreateInternal(raw)
	if ok {
		for i := 0; i < n; i++ {
			copyStackRecord(&p[i], raw[i])
		}
	}
	return n, ok
}

func NumGoroutine() int {
	return iruntime.NumGoroutine()
}

func SetCPUProfileRate(hz int) {}

func copyMemProfileRecord(dst *MemProfileRecord, src rawMemProfileRecord) {
	dst.AllocBytes = src.AllocBytes
	dst.FreeBytes = src.FreeBytes
	dst.AllocObjects = src.AllocObjects
	dst.FreeObjects = src.FreeObjects
	n := copy(dst.Stack0[:], src.Stack)
	for i := n; i < len(dst.Stack0); i++ {
		dst.Stack0[i] = 0
	}
}

func copyBlockProfileRecord(dst *BlockProfileRecord, src rawBlockProfileRecord) {
	dst.Count = src.Count
	dst.Cycles = src.Cycles
	n := copy(dst.Stack0[:], src.Stack)
	for i := n; i < len(dst.Stack0); i++ {
		dst.Stack0[i] = 0
	}
}

func copyStackRecord(dst *StackRecord, src rawStackRecord) {
	n := copy(dst.Stack0[:], src.Stack)
	for i := n; i < len(dst.Stack0); i++ {
		dst.Stack0[i] = 0
	}
}

func FuncForPC(pc uintptr) *Func {
	info := &clitedebug.Info{}
	if clitedebug.Addrinfo(unsafe.Pointer(pc), info) == 0 {
		return nil
	}
	name := safeGoString(info.Sname, "")
	if name == "" {
		name = unknownFunctionName(pc)
	} else {
		name = userVisibleFuncName(name)
	}
	return (*Func)(unsafe.Pointer(&funcValue{
		name:  name,
		entry: uintptr(info.Saddr),
	}))
}
