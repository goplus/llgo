package runtime

import (
	"github.com/goplus/llgo/runtime/internal/lib/internal/runtime/atomic"
)

type goroutineProfileStateHolder atomic.Uint32

type mLockProfile struct {
	waitTime   atomic.Int64 // total nanoseconds spent waiting in runtime.lockWithRank
	stack      []uintptr    // stack that experienced contention in runtime.lockWithRank
	pending    uintptr      // *mutex that experienced contention (to be traceback-ed)
	cycles     int64        // cycles attributable to "pending" (if set), otherwise to "stack"
	cyclesLost int64        // contention for which we weren't able to record a call stack
	disabled   bool         // attribute all time to "lost"
}
