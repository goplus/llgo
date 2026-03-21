//go:build wasm && !go1.23
// +build wasm,!go1.23

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
	f        func(any, uintptr)
	arg      any
	seq      uintptr
	nextwhen int64
	status   uint32
}

func startTimer(r *runtimeTimer) {
	if r == nil || r.f == nil {
		return
	}
	go func() {
		sleepUntil(r.when)
		r.f(r.arg, r.seq)
	}()
}

func stopTimer(r *runtimeTimer) bool {
	return r != nil
}

func resetTimer(r *runtimeTimer, when int64) bool {
	if r == nil {
		return false
	}
	r.when = when
	startTimer(r)
	return true
}

func modTimer(r *runtimeTimer, when, period int64, f func(any, uintptr), arg any, seq uintptr) {
	if r == nil {
		return
	}
	r.when = when
	r.period = period
	r.f = f
	r.arg = arg
	r.seq = seq
	startTimer(r)
}

func resetRuntimeTimer(r *runtimeTimer, when, period int64, f func(any, uintptr), arg any, seq uintptr) bool {
	modTimer(r, when, period, f, arg, seq)
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
