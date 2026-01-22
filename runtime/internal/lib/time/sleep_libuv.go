// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build !baremetal

package time

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/clite/libuv"
	"github.com/goplus/llgo/runtime/internal/lib/internal/itoa"
	"sync"
)

// Interface to timers implemented in package runtime.
// Must be in sync with ../runtime/time.go:/^type timer
type runtimeTimer struct {
	libuv.Timer
	when   int64
	period int64
	active bool
	f      func(any, uintptr)
	arg    any
}

var (
	timerLoop *libuv.Loop
	timerOnce sync.Once
	keepAlive libuv.Async

	// asyncMu guards the pendingAsync set so asyncTimerEvent objects stay
	// reachable while libuv is still holding raw pointers to them.
	asyncMu      sync.Mutex
	pendingAsync map[*asyncTimerEvent]struct{}
)

func init() {
	timerOnce.Do(func() {
		timerLoop = libuv.LoopNew()
		if timerLoop == nil {
			panic("time: failed to create libuv loop")
		}
		pendingAsync = make(map[*asyncTimerEvent]struct{})
		if code := timerLoop.Async(&keepAlive, func(a *libuv.Async) {
			// no-op; keeps loop alive
		}); code != 0 {
			panic(uvError("keepAlive uv_async_init", int(code)))
		}
	})
	go func() {
		if code := timerLoop.Run(libuv.RUN_DEFAULT); code != 0 {
			panic(uvError("libuv loop", int(code)))
		}
	}()
}

// cross thread
func timerEvent(async *libuv.Async) {
	if async == nil {
		panic("time: timerEvent called with nil async")
	}
	a := (*asyncTimerEvent)(unsafe.Pointer(async))
	res := a.cb()
	a.done <- res
	releaseAsyncEvent(a)
	defer a.Close(nil)
}

// asyncTimerEvent embeds libuv.Async as the first field, ensuring
// memory layout compatibility for unsafe pointer casts in timerEvent.
type asyncTimerEvent struct {
	libuv.Async // MUST be first field
	cb          func() bool
	done        chan bool
}

func timerCallback(t *libuv.Timer) {
	r := (*runtimeTimer)(unsafe.Pointer(t))
	r.f(r.arg, 0)
	if r.period <= 0 {
		r.active = false
	}
}

func startTimer(r *runtimeTimer) {
	submitTimerWork(func() bool {
		checkUV("uv_timer_init", int(libuv.InitTimer(timerLoop, &r.Timer)))
		delay := timerDelayMillis(r.when)
		repeat := timerPeriodMillis(r.period)
		checkUV("uv_timer_start", int(r.Start(timerCallback, delay, repeat)))
		r.active = true
		return true
	})
}

func stopTimer(r *runtimeTimer) bool {
	return submitTimerWork(func() bool {
		wasActive := r.active
		if wasActive {
			checkUV("uv_timer_stop", int(r.Stop()))
			r.active = false
		}
		return wasActive
	})
}

func resetTimer(r *runtimeTimer, when int64) bool {
	return submitTimerWork(func() bool {
		wasActive := r.active
		checkUV("uv_timer_stop", int(r.Stop()))
		r.when = when
		delay := timerDelayMillis(when)
		repeat := timerPeriodMillis(r.period)
		checkUV("uv_timer_start", int(r.Start(timerCallback, delay, repeat)))
		r.active = true
		return wasActive
	})
}

func timerDelayMillis(when int64) uint64 {
	now := runtimeNano()
	if when <= now {
		return 0
	}
	delta := when - now
	// Convert nanoseconds to milliseconds, rounding up to avoid firing early.
	ms := (delta + int64(Millisecond) - 1) / int64(Millisecond)
	if ms < 0 {
		return 0
	}
	return uint64(ms)
}

func timerPeriodMillis(period int64) uint64 {
	if period <= 0 {
		return 0
	}
	// Convert nanoseconds to milliseconds, rounding up. Ensure positive periods
	// do not become 0ms, which would disable repeating timers.
	ms := (period + int64(Millisecond) - 1) / int64(Millisecond)
	if ms <= 0 {
		return 1
	}
	return uint64(ms)
}

func submitTimerWork(cb func() bool) bool {
	a := &asyncTimerEvent{cb: cb, done: make(chan bool, 1)}
	trackAsyncEvent(a)
	if code := timerLoop.Async(&a.Async, timerEvent); code != 0 {
		releaseAsyncEvent(a)
		panic(uvError("uv_async_init", int(code)))
	}
	if code := a.Send(); code != 0 {
		releaseAsyncEvent(a)
		panic(uvError("uv_async_send", int(code)))
	}
	return <-a.done
}

func trackAsyncEvent(a *asyncTimerEvent) {
	// Each asyncTimerEvent is referenced only from libuv once submitted, so we
	// keep it in pendingAsync to prevent GC from reclaiming it prematurely.
	asyncMu.Lock()
	pendingAsync[a] = struct{}{}
	asyncMu.Unlock()
}

func releaseAsyncEvent(a *asyncTimerEvent) {
	// Once libuv calls back into timerEvent we can drop our reference so GC
	// can reclaim the async handle and its closure.
	asyncMu.Lock()
	delete(pendingAsync, a)
	asyncMu.Unlock()
}

func checkUV(op string, code int) {
	if code != 0 {
		panic(uvError(op, code))
	}
}

func uvError(op string, code int) string {
	return "time: " + op + " failed (" + itoa.Itoa(code) + ")"
}
