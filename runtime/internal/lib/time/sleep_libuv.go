// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build !baremetal

package time

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/clite/libuv"
	"github.com/goplus/llgo/runtime/internal/lib/internal/itoa"
	libsync "github.com/goplus/llgo/runtime/internal/lib/sync"
)

// Interface to timers implemented in package runtime.
// Must be in sync with ../runtime/time.go:/^type timer
type runtimeTimer struct {
	libuv.Timer
	when int64
	f    func(any, uintptr)
	arg  any
}

var (
	timerLoop *libuv.Loop
	timerOnce libsync.Once
	keepAlive libuv.Async

	// asyncMu guards the pendingAsync set so asyncTimerEvent objects stay
	// reachable while libuv is still holding raw pointers to them.
	asyncMu      libsync.Mutex
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
	a := (*asyncTimerEvent)(unsafe.Pointer(async))
	releaseAsyncEvent(a)
	defer a.Close(nil)
	a.cb()
}

type asyncTimerEvent struct {
	libuv.Async
	cb func()
}

func timerCallback(t *libuv.Timer) {
	r := (*runtimeTimer)(unsafe.Pointer(t))
	r.f(r.arg, 0)
}

func startTimer(r *runtimeTimer) {
	submitTimerWork(func() {
		checkUV("uv_timer_init", int(libuv.InitTimer(timerLoop, &r.Timer)))
		delay := timerDelayMillis(r.when)
		checkUV("uv_timer_start", int(r.Start(timerCallback, delay, 0)))
	})
}

func stopTimer(r *runtimeTimer) bool {
	return submitTimerWork(func() {
		checkUV("uv_timer_stop", int(r.Stop()))
	})
}

func resetTimer(r *runtimeTimer, when int64) bool {
	return submitTimerWork(func() {
		checkUV("uv_timer_stop", int(r.Stop()))
		r.when = when
		delay := timerDelayMillis(when)
		checkUV("uv_timer_start", int(r.Start(timerCallback, delay, 0)))
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

func submitTimerWork(cb func()) bool {
	a := &asyncTimerEvent{cb: cb}
	trackAsyncEvent(a)
	if code := timerLoop.Async(&a.Async, timerEvent); code != 0 {
		releaseAsyncEvent(a)
		panic(uvError("uv_async_init", int(code)))
	}
	if code := a.Send(); code != 0 {
		releaseAsyncEvent(a)
		panic(uvError("uv_async_send", int(code)))
	}
	return true
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
