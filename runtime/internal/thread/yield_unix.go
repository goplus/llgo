//go:build !windows && !baremetal

package thread

import (
	_ "unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
)

//go:linkname schedYield C.sched_yield
func schedYield() c.Int

// Yield lets another runnable host thread execute without putting this thread
// to sleep. Each goroutine in the pthread backend owns a host thread.
func Yield() {
	schedYield()
}
