// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package time

import (
	"sync"
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/libuv"
)

// Sleep pauses the current goroutine for at least the duration d.
// A negative or zero duration causes Sleep to return immediately.
func Sleep(d Duration) {
	c.Usleep(c.Uint(d.Microseconds()))
}

// Interface to timers implemented in package runtime.
// Must be in sync with ../runtime/time.go:/^type timer
type runtimeTimer struct {
	when   int64
	period int64
	f      func(any, uintptr)
	arg    any

	handle     libuv.Timer
	handleInit bool
	active     bool
}

// when is a helper function for setting the 'when' field of a runtimeTimer.
// It returns what the time will be, in nanoseconds, Duration d in the future.
// If d is negative, it is ignored. If the returned value would be less than
// zero because of an overflow, MaxInt64 is returned.
func when(d Duration) int64 {
	if d <= 0 {
		return runtimeNano()
	}
	t := runtimeNano() + int64(d)
	if t < 0 {
		// N.B. runtimeNano() and d are always positive, so addition
		// (including overflow) will never result in t == 0.
		t = 1<<63 - 1 // math.MaxInt64
	}
	return t
}

/* TODO(xsw):
func modTimer(t *runtimeTimer, when, period int64, f func(any, uintptr), arg any, seq uintptr) {
	panic("todo: time.modTimer")
}
*/

// The Timer type represents a single event.
// When the Timer expires, the current time will be sent on C,
// unless the Timer was created by AfterFunc.
// A Timer must be created with NewTimer or AfterFunc.
type Timer struct {
	C <-chan Time
	r runtimeTimer
}

// Stop prevents the Timer from firing.
// It returns true if the call stops the timer, false if the timer has already
// expired or been stopped.
// Stop does not close the channel, to prevent a read from the channel succeeding
// incorrectly.
//
// To ensure the channel is empty after a call to Stop, check the
// return value and drain the channel.
// For example, assuming the program has not received from t.C already:
//
//	if !t.Stop() {
//		<-t.C
//	}
//
// This cannot be done concurrent to other receives from the Timer's
// channel or other calls to the Timer's Stop method.
//
// For a timer created with AfterFunc(d, f), if t.Stop returns false, then the timer
// has already expired and the function f has been started in its own goroutine;
// Stop does not wait for f to complete before returning.
// If the caller needs to know whether f is completed, it must coordinate
// with f explicitly.
func (t *Timer) Stop() bool {
	return stopTimer(&t.r)
}

// NewTimer creates a new Timer that will send
// the current time on its channel after at least duration d.
func NewTimer(d Duration) *Timer {
	c := make(chan Time, 1)
	t := &Timer{
		C: c,
		r: runtimeTimer{
			when:   when(d),
			period: 0,
			f:      sendTime,
			arg:    c,
		},
	}
	startTimer(&t.r)
	return t
}

// Reset changes the timer to expire after duration d.
// It returns true if the timer had been active, false if the timer had
// expired or been stopped.
//
// For a Timer created with NewTimer, Reset should be invoked only on
// stopped or expired timers with drained channels.
//
// If a program has already received a value from t.C, the timer is known
// to have expired and the channel drained, so t.Reset can be used directly.
// If a program has not yet received a value from t.C, however,
// the timer must be stopped and—if Stop reports that the timer expired
// before being stopped—the channel explicitly drained:
//
//	if !t.Stop() {
//		<-t.C
//	}
//	t.Reset(d)
//
// This should not be done concurrent to other receives from the Timer's
// channel.
//
// Note that it is not possible to use Reset's return value correctly, as there
// is a race condition between draining the channel and the new timer expiring.
// Reset should always be invoked on stopped or expired channels, as described above.
// The return value exists to preserve compatibility with existing programs.
//
// For a Timer created with AfterFunc(d, f), Reset either reschedules
// when f will run, in which case Reset returns true, or schedules f
// to run again, in which case it returns false.
// When Reset returns false, Reset neither waits for the prior f to
// complete before returning nor does it guarantee that the subsequent
// goroutine running f does not run concurrently with the prior
// one. If the caller needs to know whether the prior execution of
// f is completed, it must coordinate with f explicitly.
func (t *Timer) Reset(d Duration) bool {
	w := when(d)
	return resetTimer(&t.r, w, 0)
}

// sendTime does a non-blocking send of the current time on c.
func sendTime(c any, seq uintptr) {
	select {
	case c.(chan Time) <- Now():
	default:
	}
}

// After waits for the duration to elapse and then sends the current time
// on the returned channel.
// It is equivalent to NewTimer(d).C.
// The underlying Timer is not recovered by the garbage collector
// until the timer fires. If efficiency is a concern, use NewTimer
// instead and call Timer.Stop if the timer is no longer needed.
func After(d Duration) <-chan Time {
	return NewTimer(d).C
}

// AfterFunc waits for the duration to elapse and then calls f
// in its own goroutine. It returns a Timer that can
// be used to cancel the call using its Stop method.
func AfterFunc(d Duration, f func()) *Timer {
	t := &Timer{
		r: runtimeTimer{
			when:   when(d),
			period: 0,
			f:      goFunc,
			arg:    f,
		},
	}
	startTimer(&t.r)
	return t
}

func goFunc(arg any, seq uintptr) {
	go arg.(func())()
}

type timerOpType int

const (
	timerOpStart timerOpType = iota
	timerOpStop
	timerOpReset
)

type timerOp struct {
	typ    timerOpType
	timer  *runtimeTimer
	when   int64
	period int64
	done   chan bool
	result bool
}

var (
	timerOnce sync.Once

	timerLoop  *libuv.Loop
	timerAsync *libuv.Async

	timerReady chan struct{}

	timerOpsMu sync.Mutex
	timerOps   []*timerOp
)

func ensureTimerLoop() {
	timerOnce.Do(func() {
		timerReady = make(chan struct{})
		go runTimerLoop()
		<-timerReady
	})
}

func runTimerLoop() {
	loop := libuv.DefaultLoop()
	timerLoop = loop

	async := &libuv.Async{}
	if loop.Async(async, timerAsyncCallback) != 0 {
		panic("time: failed to initialize async timer loop")
	}
	timerAsync = async
	close(timerReady)

	loop.Run(libuv.RUN_DEFAULT)
}

func timerAsyncCallback(_ *libuv.Async) {
	drainTimerOps()
}

func drainTimerOps() {
	for {
		timerOpsMu.Lock()
		if len(timerOps) == 0 {
			timerOpsMu.Unlock()
			return
		}
		ops := timerOps
		timerOps = nil
		timerOpsMu.Unlock()

		for _, op := range ops {
			switch op.typ {
			case timerOpStart:
				op.result = timerLoopStart(op.timer, op.when, op.period)
			case timerOpStop:
				op.result = timerLoopStop(op.timer)
			case timerOpReset:
				op.result = timerLoopReset(op.timer, op.when, op.period)
			}
			if op.done != nil {
				op.done <- op.result
			}
		}
	}
}

func submitTimerOp(op *timerOp) {
	ensureTimerLoop()
	timerOpsMu.Lock()
	timerOps = append(timerOps, op)
	timerOpsMu.Unlock()
	if timerAsync != nil {
		timerAsync.Send()
	}
}

func startTimer(r *runtimeTimer) {
	op := &timerOp{
		typ:    timerOpStart,
		timer:  r,
		when:   r.when,
		period: r.period,
		done:   make(chan bool, 1),
	}
	submitTimerOp(op)
	<-op.done
}

func stopTimer(r *runtimeTimer) bool {
	op := &timerOp{
		typ:   timerOpStop,
		timer: r,
		done:  make(chan bool, 1),
	}
	submitTimerOp(op)
	return <-op.done
}

func resetTimer(r *runtimeTimer, when, period int64) bool {
	op := &timerOp{
		typ:    timerOpReset,
		timer:  r,
		when:   when,
		period: period,
		done:   make(chan bool, 1),
	}
	submitTimerOp(op)
	return <-op.done
}

func timerLoopStart(r *runtimeTimer, when, period int64) bool {
	if timerLoop == nil {
		return false
	}
	if period < 0 {
		period = 0
	}
	delay := when - runtimeNano()
	if delay < 0 {
		delay = 0
	}
	timeout := nanosToMillis(delay)
	repeat := nanosToMillis(period)
	if period > 0 && repeat == 0 {
		repeat = 1
	}
	if !r.handleInit {
		if libuv.InitTimer(timerLoop, &r.handle) != 0 {
			return false
		}
		handle := (*libuv.Handle)(unsafe.Pointer(&r.handle))
		handle.SetData(c.Pointer(unsafe.Pointer(r)))
		r.handleInit = true
	} else {
		r.handle.Stop()
	}
	if timeout == 0 && delay > 0 {
		timeout = 1
	}
	if rc := r.handle.Start(timerCallback, timeout, repeat); rc != 0 {
		return false
	}
	r.when = when
	r.period = period
	r.active = true
	return true
}

func timerLoopStop(r *runtimeTimer) bool {
	if !r.handleInit || !r.active {
		return false
	}
	r.handle.Stop()
	r.active = false
	r.period = 0
	return true
}

func timerLoopReset(r *runtimeTimer, when, period int64) bool {
	wasActive := r.active
	timerLoopStart(r, when, period)
	return wasActive
}

func timerCallback(t *libuv.Timer) {
	handle := (*libuv.Handle)(unsafe.Pointer(t))
	data := handle.GetData()
	if data == nil {
		return
	}
	r := (*runtimeTimer)(unsafe.Pointer(data))
	if r.period == 0 {
		r.active = false
	} else {
		r.when += r.period
	}
	r.f(r.arg, 0)
}

func nanosToMillis(ns int64) uint64 {
	if ns <= 0 {
		return 0
	}
	const milli = int64(Millisecond)
	ms := ns / milli
	if ns%milli != 0 {
		ms++
	}
	return uint64(ms)
}
