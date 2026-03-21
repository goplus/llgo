//go:build wasm && go1.23
// +build wasm,go1.23

package runtime

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	ct "github.com/goplus/llgo/runtime/internal/clite/time"
)

type runtimeTimer struct {
	pp       uintptr
	when     int64
	period   int64
	f        func(any, uintptr, int64)
	arg      any
	seq      uintptr
	nextwhen int64
	status   uint32
}

type timeTimer struct {
	c    unsafe.Pointer
	init bool
	r    runtimeTimer
}

func startRuntimeTimer(r *runtimeTimer) {
	if r == nil || r.f == nil {
		return
	}
	go func() {
		sleepUntil(r.when)
		r.f(r.arg, r.seq, 0)
	}()
}

func stopRuntimeTimer(r *runtimeTimer) bool {
	return r != nil
}

func resetRuntimeTimer(r *runtimeTimer, when, period int64, f func(any, uintptr, int64), arg any, seq uintptr) bool {
	if r == nil {
		return false
	}
	r.when = when
	r.period = period
	r.f = f
	r.arg = arg
	r.seq = seq
	startRuntimeTimer(r)
	return true
}

//go:linkname time_now time.now
func time_now() (sec int64, nsec int32, mono int64) {
	tv := (*ct.Timespec)(c.Alloca(unsafe.Sizeof(ct.Timespec{})))
	ct.ClockGettime(ct.CLOCK_REALTIME, tv)
	sec = int64(tv.Sec)
	nsec = int32(tv.Nsec)
	mono = runtimeNano()
	return
}

//go:linkname time_runtimeNow time.runtimeNow
func time_runtimeNow() (sec int64, nsec int32, mono int64) {
	return time_now()
}

//go:linkname time_runtimeNano time.runtimeNano
func time_runtimeNano() int64 {
	return runtimeNano()
}

//go:linkname time_runtimeIsBubbled time.runtimeIsBubbled
func time_runtimeIsBubbled() bool {
	return false
}

//go:linkname timeSleep time.Sleep
func timeSleep(ns int64) {
	if ns <= 0 {
		return
	}
	sleepNanos(ns)
}

func timeSleepWake(arg any, _ uintptr, _ int64) {
	ch := arg.(chan struct{})
	ch <- struct{}{}
}

//go:linkname newTimer time.newTimer
func newTimer(when, period int64, f func(any, uintptr, int64), arg any, cp unsafe.Pointer) *timeTimer {
	t := &timeTimer{c: cp, init: true}
	t.r.when = when
	t.r.period = period
	t.r.f = f
	t.r.arg = arg
	t.r.seq = 0
	startRuntimeTimer(&t.r)
	return t
}

//go:linkname stopTimer time.stopTimer
func stopTimer(t *timeTimer) bool {
	if t == nil {
		return false
	}
	return stopRuntimeTimer(&t.r)
}

//go:linkname resetTimer time.resetTimer
func resetTimer(t *timeTimer, when, period int64) bool {
	if t == nil {
		return false
	}
	r := &t.r
	return resetRuntimeTimer(r, when, period, r.f, r.arg, r.seq)
}

func runtimeNano() int64 {
	tv := (*ct.Timespec)(c.Alloca(unsafe.Sizeof(ct.Timespec{})))
	ct.ClockGettime(ct.CLOCK_MONOTONIC, tv)
	return int64(tv.Sec)*1e9 + int64(tv.Nsec)
}

func sleepUntil(when int64) {
	for {
		now := runtimeNano()
		if when <= now {
			return
		}
		sleepNanos(when - now)
	}
}

func sleepNanos(ns int64) {
	if ns <= 0 {
		return
	}
	us := ns / 1e3
	if ns%1e3 != 0 {
		us++
	}
	if us <= 0 {
		us = 1
	}
	c.Usleep(c.Uint(us))
}
