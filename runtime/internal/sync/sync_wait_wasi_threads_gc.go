//go:build llgo && wasip1 && wasm && llgo.wasi_threads && llgo.wasm.gc.linear

package sync

import (
	"unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
)

//go:linkname wasiGCCondTimedWait github.com/xgo-dev/llgo/runtime/internal/runtime.WasiGCCondTimedWait
func wasiGCCondTimedWait(cond, mutex unsafe.Pointer, waitNanos int64, monotonic bool)

//go:linkname mutexLock github.com/xgo-dev/llgo/runtime/internal/runtime.wasiGCMutexLock
func mutexLock(m *Mutex)

//go:linkname wasiGCWaitUint32 github.com/xgo-dev/llgo/runtime/internal/runtime.WasiGCWaitUint32
func wasiGCWaitUint32(addr *uint32, value uint32) c.Int

// WaitUint32 publishes Go roots before entering an indefinite atomic wait.
func WaitUint32(addr *uint32, value uint32) c.Int { return wasiGCWaitUint32(addr, value) }

// The published caller is already safe for GC while blocked. Wait for a real
// condition signal instead of waking every goroutine on a polling timer.
func condWait(cond *Cond, mutex *Mutex) c.Int {
	wasiGCCondTimedWait(unsafe.Pointer(cond), unsafe.Pointer(mutex), -1, false)
	return 0
}
