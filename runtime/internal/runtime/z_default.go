//go:build !baremetal

package runtime

import (
	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/debug"
	"github.com/goplus/llgo/runtime/internal/clite/pthread"
)

var (
	printFormatPrefixInt  = c.Str("%lld")
	printFormatPrefixUInt = c.Str("%llu")
	printFormatPrefixHex  = c.Str("%llx")
)

func throwCurrent(cur *Defer) {
	c.Siglongjmp(cur.Addr, 1)
}

// Rethrow rethrows the panic currently being unwound in the given defer frame.
func Rethrow(cur *Defer) {
	if ptr := excepKey.Get(); ptr != nil {
		if cur == nil {
			TracePanic((*panicRecord)(ptr).val)
			debug.PrintStack(2)
			c.Free(ptr)
			c.Exit(2)
		}
		if cur.Pan == ptr {
			next := cur.Link
			if next == nil {
				TracePanic((*panicRecord)(ptr).val)
				debug.PrintStack(2)
				c.Free(ptr)
				c.Exit(2)
			}
			next.Pan = ptr
			c.Siglongjmp(next.Addr, 1)
		}
	} else if ptr := goexitKey.Get(); ptr != nil {
		// Goexit must run deferred functions before terminating the current
		// goroutine. Reuse the longjmp-based defer unwinding:
		// 1) If we have a defer frame, longjmp to it so it can execute defers.
		// 2) Once we've unwound past the last frame (link==nil), terminate the
		//    current pthread.
		if cur != nil {
			c.Siglongjmp(cur.Addr, 1)
		}
		finishGoroutine()
		if pthread.Equal(mainThread, pthread.Self()) != 0 && NumGoroutine() == 0 {
			fatal("no goroutines (main called runtime.Goexit) - deadlock!")
			c.Exit(2)
		}
		pthread.Exit(nil)
	}
}
