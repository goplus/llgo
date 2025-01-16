package runtime

import "github.com/goplus/llgo/runtime/internal/lib/internal/runtime/atomic"

type limiterEvent struct {
	stamp atomic.Uint64 // Stores a limiterEventStamp.
}
