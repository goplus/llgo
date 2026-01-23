// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build !baremetal && (!llgo || !darwin)

package time

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/libuv"
	cliteos "github.com/goplus/llgo/runtime/internal/clite/os"
	"github.com/goplus/llgo/runtime/internal/lib/internal/itoa"
	"sync"
)

// Interface to timers implemented in package runtime.
// Must be in sync with ../runtime/time.go:/^type timer
type runtimeTimer struct {
	libuv.Timer
	mu     sync.Mutex
	when   int64
	period int64
	active bool
	seq    uintptr
	f      func(any, uintptr)
	arg    any
}

var (
	timerLoop  *libuv.Loop
	timerOnce  sync.Once
	keepAlive  libuv.Async
	timerAsync libuv.Async

	// asyncMu guards asyncQueue so asyncTimerEvent objects stay reachable
	// until the libuv loop drains them.
	asyncMu    sync.Mutex
	asyncQueue []*asyncTimerEvent

	timerDebugOnce    sync.Once
	timerDebugEnabled bool
)

func init() {
	timerOnce.Do(func() {
		timerLoop = initTimerLoop()
		if timerLoop == nil {
			panic("time: failed to create libuv loop")
		}
		asyncQueue = nil
		timerDebugMsg("AsyncInit keepAlive begin")
		if code := libuv.AsyncInitNoop(timerLoop, &keepAlive); code != 0 {
			panic(uvError("keepAlive uv_async_init", int(code)))
		}
		timerDebugMsg("AsyncInit keepAlive ok")
		timerDebugMsg("AsyncInit timerEvent begin")
		if code := libuv.AsyncInitTime(timerLoop, &timerAsync); code != 0 {
			panic(uvError("timerEvent uv_async_init", int(code)))
		}
		timerDebugMsg("AsyncInit timerEvent ok")
	})
	go func() {
		timerDebugMsg("Loop.Run begin")
		if code := timerLoop.Run(libuv.RUN_DEFAULT); code != 0 {
			panic(uvError("libuv loop", int(code)))
		}
		timerDebugMsg("Loop.Run end")
	}()
}

func timerDebug() bool {
	timerDebugOnce.Do(func() {
		timerDebugEnabled = cliteos.Getenv(c.AllocaCStr("LLGO_TIMER_DEBUG")) != nil
	})
	return timerDebugEnabled
}

func timerDebugLoop(label string, loop *libuv.Loop) {
	if !timerDebug() {
		return
	}
	c.Fprintf(c.Stderr, c.Str("timer: %s=%p\n"), c.AllocaCStr(label), loop)
}

func timerDebugUint(label string, v uintptr) {
	if !timerDebug() {
		return
	}
	c.Fprintf(c.Stderr, c.Str("timer: %s=%u\n"), c.AllocaCStr(label), c.Uint(v))
}

func timerDebugInt(label string, v int) {
	if !timerDebug() {
		return
	}
	c.Fprintf(c.Stderr, c.Str("timer: %s=%d\n"), c.AllocaCStr(label), c.Int(v))
}

func timerDebugMsg(label string) {
	if !timerDebug() {
		return
	}
	c.Fprintf(c.Stderr, c.Str("timer: %s\n"), c.AllocaCStr(label))
}

func initTimerLoop() *libuv.Loop {
	loop := libuv.LoopNew()
	timerDebugLoop("LoopNew", loop)
	if loop != nil {
		return loop
	}
	loop = libuv.LoopDefault()
	timerDebugLoop("LoopDefault", loop)
	if loop != nil {
		return loop
	}
	size := libuv.LoopSize()
	timerDebugUint("LoopSize", size)
	if size == 0 {
		return nil
	}
	mem := c.Malloc(size)
	timerDebugLoop("LoopAlloc", (*libuv.Loop)(mem))
	if mem == nil {
		return nil
	}
	loop = (*libuv.Loop)(mem)
	if code := loop.Init(); code != 0 {
		timerDebugInt("LoopInit", int(code))
		c.Free(mem)
		return nil
	}
	timerDebugInt("LoopInit", 0)
	return loop
}

//export llgo_time_timerEvent
func llgo_time_timerEvent(async *libuv.Async) {
	timerEvent(async)
}

// cross thread
func timerEvent(async *libuv.Async) {
	timerDebugMsg("timerEvent")
	for {
		asyncMu.Lock()
		if len(asyncQueue) == 0 {
			asyncMu.Unlock()
			return
		}
		a := asyncQueue[0]
		asyncQueue[0] = nil
		asyncQueue = asyncQueue[1:]
		asyncMu.Unlock()
		if a == nil {
			timerDebugMsg("timerEvent nil event")
			continue
		}
		if a.cb == nil {
			timerDebugMsg("timerEvent nil cb")
			a.done <- false
			continue
		}
		res := a.cb()
		a.done <- res
	}
}

type asyncTimerEvent struct {
	cb   func() bool
	done chan bool
}

//export llgo_time_timerCallback
func llgo_time_timerCallback(t *libuv.Timer) {
	timerCallback(t)
}

func timerCallback(t *libuv.Timer) {
	timerDebugMsg("timerCallback")
	r := (*runtimeTimer)(unsafe.Pointer(t))
	fireTimer(r, runtimeNano(), 0)
}

func startTimer(r *runtimeTimer) {
	submitTimerWork(func() bool {
		checkUV("uv_timer_init", int(libuv.InitTimer(timerLoop, &r.Timer)))
		delay := timerDelayMillis(r.when)
		repeat := timerPeriodMillis(r.period)
		checkUV("uv_timer_start", int(libuv.TimerStartTime(&r.Timer, delay, repeat)))
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
		checkUV("uv_timer_start", int(libuv.TimerStartTime(&r.Timer, delay, repeat)))
		r.active = true
		return wasActive
	})
}

func sleepNs(ns int64) {
	if ns <= 0 {
		return
	}
	us := ns / 1000
	if us <= 0 {
		us = 1
	}
	c.Usleep(c.Uint(us))
}

func fireTimer(r *runtimeTimer, now int64, expectSeq uintptr) bool {
	timerDebugMsg("fireTimer")
	r.mu.Lock()
	if !r.active || (expectSeq != 0 && r.seq != expectSeq) {
		r.mu.Unlock()
		return false
	}
	when := r.when
	period := r.period
	f := r.f
	arg := r.arg
	if period > 0 {
		if now > when {
			next := when + period*(1+(now-when)/period)
			if next < 0 {
				next = when + period
			}
			r.when = next
		} else {
			r.when = when + period
		}
	} else {
		r.active = false
	}
	r.mu.Unlock()
	f(arg, 0)
	return period > 0
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
	asyncMu.Lock()
	asyncQueue = append(asyncQueue, a)
	asyncMu.Unlock()
	if code := timerAsync.Send(); code != 0 {
		panic(uvError("uv_async_send", int(code)))
	}
	return <-a.done
}

func checkUV(op string, code int) {
	if code != 0 {
		panic(uvError(op, code))
	}
}

func uvError(op string, code int) string {
	return "time: " + op + " failed (" + itoa.Itoa(code) + ")"
}
