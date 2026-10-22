//go:build llgo && wasip1 && wasm && llgo.wasi_threads && llgo.wasm.gc.linear

package runtime

import (
	"unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
	llruntime "github.com/xgo-dev/llgo/runtime/internal/runtime"
	psync "github.com/xgo-dev/llgo/runtime/internal/sync"
)

//go:linkname c_timerCondInit C.llgo_timer_cond_init
func c_timerCondInit(cond *psync.Cond) c.Int

func initTimerSchedulerCond() {
	if c_timerCondInit(&timerSchedulerCond) != 0 {
		panic("runtime: failed to initialize timer condition variable")
	}
}

func timerSchedulerTimedWait(wait int64) {
	llruntime.WasiGCCondTimedWait(unsafe.Pointer(&timerSchedulerCond),
		unsafe.Pointer(&timerSchedulerMu), wait, true)
}
