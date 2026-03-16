//go:build darwin || linux

package runtime

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	latomic "github.com/goplus/llgo/runtime/internal/lib/sync/atomic"
)

// Minimal semaphore + notify list support for stdlib sync on llgo/darwin+linux.
//
// Keep the API surface close to Go's runtime hooks, but avoid pthread condvars
// in this path. We use a lock-free state table keyed by the wait address and a
// sequence counter to break sleepers out of short usleep backoff loops.

type waitState struct {
	key     uintptr
	seq     uint32
	waiters uint32
	next    unsafe.Pointer // *waitState
}

var waitStateHead unsafe.Pointer // *waitState

func findWaitState(key uintptr) *waitState {
	for st := (*waitState)(latomic.LoadPointer(&waitStateHead)); st != nil; st = (*waitState)(latomic.LoadPointer(&st.next)) {
		if st.key == key {
			return st
		}
	}
	return nil
}

func getWaitState(key uintptr) *waitState {
	for {
		if st := findWaitState(key); st != nil {
			return st
		}
		head := latomic.LoadPointer(&waitStateHead)
		st := &waitState{key: key}
		latomic.StorePointer(&st.next, head)
		if latomic.CompareAndSwapPointer(&waitStateHead, head, unsafe.Pointer(st)) {
			return st
		}
	}
}

func beginWait(st *waitState) uint32 {
	seq := latomic.LoadUint32(&st.seq)
	latomic.AddUint32(&st.waiters, 1)
	return seq
}

func endWait(st *waitState) {
	latomic.AddUint32(&st.waiters, ^uint32(0))
}

func wakeWaiters(st *waitState) {
	if st == nil || latomic.LoadUint32(&st.waiters) == 0 {
		return
	}
	latomic.AddUint32(&st.seq, 1)
}

func waitForWake(st *waitState, seq uint32) {
	usec := c.Uint(1)
	for latomic.LoadUint32(&st.seq) == seq {
		c.Usleep(usec)
		if usec < 128 {
			usec <<= 1
		}
	}
}

func less(a, b uint32) bool {
	return int32(a-b) < 0
}

func semaAcquire(addr *uint32) {
	key := uintptr(unsafe.Pointer(addr))
	for {
		v := latomic.LoadUint32(addr)
		if v != 0 && latomic.CompareAndSwapUint32(addr, v, v-1) {
			return
		}

		st := getWaitState(key)
		seq := beginWait(st)
		v = latomic.LoadUint32(addr)
		if v != 0 && latomic.CompareAndSwapUint32(addr, v, v-1) {
			endWait(st)
			return
		}
		waitForWake(st, seq)
		endWait(st)
	}
}

func semaRelease(addr *uint32) {
	latomic.AddUint32(addr, 1)
	wakeWaiters(findWaitState(uintptr(unsafe.Pointer(addr))))
}

// sync_runtime_Semacquire should be an internal detail, but is linknamed.
//
//go:linkname sync_runtime_Semacquire sync.runtime_Semacquire
func sync_runtime_Semacquire(addr *uint32) {
	semaAcquire(addr)
}

//go:linkname poll_runtime_Semacquire internal/poll.runtime_Semacquire
func poll_runtime_Semacquire(addr *uint32) {
	semaAcquire(addr)
}

//go:linkname sync_runtime_Semrelease sync.runtime_Semrelease
func sync_runtime_Semrelease(addr *uint32, _ bool, _ int) {
	semaRelease(addr)
}

//go:linkname sync_runtime_SemacquireRWMutexR sync.runtime_SemacquireRWMutexR
func sync_runtime_SemacquireRWMutexR(addr *uint32, _ bool, _ int) {
	semaAcquire(addr)
}

//go:linkname sync_runtime_SemacquireRWMutex sync.runtime_SemacquireRWMutex
func sync_runtime_SemacquireRWMutex(addr *uint32, _ bool, _ int) {
	semaAcquire(addr)
}

//go:linkname sync_runtime_SemacquireWaitGroup sync.runtime_SemacquireWaitGroup
func sync_runtime_SemacquireWaitGroup(addr *uint32, _ bool) {
	semaAcquire(addr)
}

// runtime_SemacquireMutex is used by internal/sync via linkname.
func runtime_SemacquireMutex(addr *uint32, _ bool, _ int) {
	semaAcquire(addr)
}

// sync_runtime_SemacquireMutex is used by older stdlib sync implementations.
//
//go:linkname sync_runtime_SemacquireMutex sync.runtime_SemacquireMutex
func sync_runtime_SemacquireMutex(addr *uint32, lifo bool, skipframes int) {
	runtime_SemacquireMutex(addr, lifo, skipframes)
}

// runtime_Semrelease is used by internal/sync via linkname.
func runtime_Semrelease(addr *uint32, _ bool, _ int) {
	semaRelease(addr)
}

//go:linkname poll_runtime_Semrelease internal/poll.runtime_Semrelease
func poll_runtime_Semrelease(addr *uint32) {
	semaRelease(addr)
}

// runtime_canSpin/runtime_doSpin/runtime_nanotime are used by internal/sync.
func runtime_canSpin(_ int) bool { return false }
func runtime_doSpin()            {}
func runtime_nanotime() int64    { return runtimeNano() }

// sync_runtime_canSpin/sync_runtime_doSpin/sync_runtime_nanotime are used by
// older stdlib sync implementations.
//
//go:linkname sync_runtime_canSpin sync.runtime_canSpin
func sync_runtime_canSpin(i int) bool { return runtime_canSpin(i) }

//go:linkname sync_runtime_doSpin sync.runtime_doSpin
func sync_runtime_doSpin() { runtime_doSpin() }

//go:linkname sync_runtime_nanotime sync.runtime_nanotime
func sync_runtime_nanotime() int64 { return runtime_nanotime() }

// internal/sync uses these runtime hooks on Go 1.24+.
//
//go:linkname internal_sync_runtime_canSpin internal/sync.runtime_canSpin
func internal_sync_runtime_canSpin(i int) bool { return runtime_canSpin(i) }

//go:linkname internal_sync_runtime_doSpin internal/sync.runtime_doSpin
func internal_sync_runtime_doSpin() { runtime_doSpin() }

//go:linkname internal_sync_runtime_nanotime internal/sync.runtime_nanotime
func internal_sync_runtime_nanotime() int64 { return runtime_nanotime() }

//go:linkname internal_sync_runtime_SemacquireMutex internal/sync.runtime_SemacquireMutex
func internal_sync_runtime_SemacquireMutex(addr *uint32, lifo bool, skipframes int) {
	runtime_SemacquireMutex(addr, lifo, skipframes)
}

//go:linkname internal_sync_runtime_Semrelease internal/sync.runtime_Semrelease
func internal_sync_runtime_Semrelease(addr *uint32, handoff bool, skipframes int) {
	runtime_Semrelease(addr, handoff, skipframes)
}

//go:linkname internal_sync_throw internal/sync.throw
func internal_sync_throw(s string) { throw(s) }

//go:linkname internal_sync_fatal internal/sync.fatal
func internal_sync_fatal(s string) { fatal(s) }

// notifyList matches sync.notifyList size/layout.
type notifyList struct {
	wait   uint32
	notify uint32
	lock   uintptr
	head   unsafe.Pointer
	tail   unsafe.Pointer
}

//go:linkname sync_runtime_notifyListAdd sync.runtime_notifyListAdd
func sync_runtime_notifyListAdd(l *notifyList) uint32 {
	return latomic.AddUint32(&l.wait, 1) - 1
}

//go:linkname sync_runtime_notifyListWait sync.runtime_notifyListWait
func sync_runtime_notifyListWait(l *notifyList, t uint32) {
	key := uintptr(unsafe.Pointer(l))
	for {
		if less(t, latomic.LoadUint32(&l.notify)) {
			return
		}
		st := getWaitState(key)
		seq := beginWait(st)
		if less(t, latomic.LoadUint32(&l.notify)) {
			endWait(st)
			return
		}
		waitForWake(st, seq)
		endWait(st)
	}
}

//go:linkname sync_runtime_notifyListNotifyAll sync.runtime_notifyListNotifyAll
func sync_runtime_notifyListNotifyAll(l *notifyList) {
	latomic.StoreUint32(&l.notify, latomic.LoadUint32(&l.wait))
	wakeWaiters(findWaitState(uintptr(unsafe.Pointer(l))))
}

//go:linkname sync_runtime_notifyListNotifyOne sync.runtime_notifyListNotifyOne
func sync_runtime_notifyListNotifyOne(l *notifyList) {
	for {
		notify := latomic.LoadUint32(&l.notify)
		if notify == latomic.LoadUint32(&l.wait) {
			return
		}
		if latomic.CompareAndSwapUint32(&l.notify, notify, notify+1) {
			wakeWaiters(findWaitState(uintptr(unsafe.Pointer(l))))
			return
		}
	}
}

//go:linkname sync_runtime_notifyListCheck sync.runtime_notifyListCheck
func sync_runtime_notifyListCheck(size uintptr) {
	if size != unsafe.Sizeof(notifyList{}) {
		panic("sync.notifyList size mismatch")
	}
}
