//go:build !baremetal

package runtime

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	clitedebug "github.com/goplus/llgo/runtime/internal/clite/debug"
	psync "github.com/goplus/llgo/runtime/internal/clite/pthread/sync"
	"github.com/goplus/llgo/runtime/internal/clite/sync/atomic"
)

const memProfileMaxStack = 8

type memProfileSite struct {
	next         *memProfileSite
	allocBytes   int64
	allocObjects int64
	nstk         int
	stack        [memProfileMaxStack]uintptr
}

var (
	memProfileMu           psync.Mutex
	memProfileSites        *memProfileSite
	memProfileSnapshotting int32
	memProfileRatePtr      unsafe.Pointer
)

func init() {
	memProfileMu.Init(nil)
}

func SetMemProfileRatePtr(p *int) {
	atomic.Store(&memProfileRatePtr, unsafe.Pointer(p))
}

func memProfileEnabled() bool {
	ratePtr := loadMemProfileRatePtr()
	if ratePtr == nil {
		return false
	}
	rate := atomic.Load(ratePtr)
	return rate > 0 && rate <= 64*1024 && atomic.Load(&memProfileSnapshotting) == 0
}

func DisableMemProfileRecording() {
}

func memProfileShouldSample(size uintptr) bool {
	ratePtr := loadMemProfileRatePtr()
	if ratePtr == nil {
		return false
	}
	rate := uintptr(atomic.Load(ratePtr))
	if rate <= 1 {
		return true
	}
	// Approximate p = 1-exp(-size/rate) with the rational function:
	// p ~= x / (1 + 9x/16), x=size/rate. This tracks the exact sampling
	// probability closely over the range exercised by GOROOT/test/heapsampling.
	num := uint64(size) * 16
	den := uint64(rate)*16 + uint64(size)*9
	if den == 0 {
		return false
	}
	threshold := (num << 32) / den
	if threshold >= 1<<32 {
		return true
	}
	return uint64(uint32(fastrand64())) < threshold
}

func loadMemProfileRatePtr() *int {
	ptr := atomic.Load(&memProfileRatePtr)
	if ptr == nil {
		return nil
	}
	return (*int)(ptr)
}

func equalMemProfileStack(a [memProfileMaxStack]uintptr, an int, b [memProfileMaxStack]uintptr, bn int) bool {
	if an != bn {
		return false
	}
	for i := 0; i < an; i++ {
		if a[i] != b[i] {
			return false
		}
	}
	return true
}

func recordMemProfileAlloc(size uintptr) {
	if size == 0 {
		return
	}
	candidate := (*memProfileSite)(c.Malloc(unsafe.Sizeof(memProfileSite{})))
	c.Memset(unsafe.Pointer(candidate), 0, unsafe.Sizeof(memProfileSite{}))
	candidate.allocBytes = int64(size)
	candidate.allocObjects = 1
	candidate.nstk = clitedebug.StackTracePCs(0, candidate.stack[:])
	if candidate.nstk == 0 {
		c.Free(unsafe.Pointer(candidate))
		return
	}

	memProfileMu.Lock()
	if atomic.Load(&memProfileSnapshotting) != 0 {
		memProfileMu.Unlock()
		c.Free(unsafe.Pointer(candidate))
		return
	}
	for p := memProfileSites; p != nil; p = p.next {
		if equalMemProfileStack(p.stack, p.nstk, candidate.stack, candidate.nstk) {
			p.allocObjects++
			p.allocBytes += int64(size)
			memProfileMu.Unlock()
			c.Free(unsafe.Pointer(candidate))
			return
		}
	}
	candidate.next = memProfileSites
	memProfileSites = candidate
	memProfileMu.Unlock()
}

//go:noinline
func afterAlloc(size uintptr) {
	if memProfileEnabled() && memProfileShouldSample(size) {
		recordMemProfileAlloc(size)
	}
}

func MemProfileSiteCount() int {
	atomic.Store(&memProfileSnapshotting, 1)
	memProfileMu.Lock()
	defer func() {
		memProfileMu.Unlock()
		atomic.Store(&memProfileSnapshotting, 0)
	}()
	n := 0
	for p := memProfileSites; p != nil; p = p.next {
		n++
	}
	return n
}

func MemProfileIterate(fn func(stack []uintptr, allocBytes, allocObjects int64)) {
	atomic.Store(&memProfileSnapshotting, 1)
	memProfileMu.Lock()
	defer func() {
		memProfileMu.Unlock()
		atomic.Store(&memProfileSnapshotting, 0)
	}()
	for p := memProfileSites; p != nil; p = p.next {
		fn(p.stack[:p.nstk], p.allocBytes, p.allocObjects)
	}
}
