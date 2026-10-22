//go:build !baremetal && !windows && (!wasm || (wasip1 && llgo.wasi_threads && !llgo.wasm.gc.linear))

package runtime

import (
	_ "unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
	psync "github.com/xgo-dev/llgo/runtime/internal/sync"
)

//go:linkname c_timerCondInit C.llgo_timer_cond_init
func c_timerCondInit(cond *psync.Cond) c.Int

//go:linkname c_timerCondTimedWait C.llgo_timer_cond_timedwait
func c_timerCondTimedWait(cond *psync.Cond, mutex *psync.Mutex, waitNanos int64) c.Int

func initTimerSchedulerCond() {
	if c_timerCondInit(&timerSchedulerCond) != 0 {
		panic("runtime: failed to initialize timer condition variable")
	}
}

func timerSchedulerTimedWait(wait int64) {
	c_timerCondTimedWait(&timerSchedulerCond, &timerSchedulerMu, wait)
}
