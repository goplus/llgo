//go:build llgo

package runtime

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/libuv"
	cliteos "github.com/goplus/llgo/runtime/internal/clite/os"
	psync "github.com/goplus/llgo/runtime/internal/clite/pthread/sync"
	ct "github.com/goplus/llgo/runtime/internal/clite/time"
	latomic "github.com/goplus/llgo/runtime/internal/lib/sync/atomic"
)

// Minimal time/timer support for stdlib time on llgo/darwin.

type runtimeTimer struct {
	libuv.Timer
	mu        psync.Mutex
	sendMu    psync.Mutex
	when      int64
	period    int64
	active    bool
	isChan    bool
	f         func(any, uintptr, int64)
	arg       any
	seq       uintptr
	isSending int32
}

// timeTimer must match the prefix layout of time.Timer.
type timeTimer struct {
	c         unsafe.Pointer
	initTimer bool
	rt        runtimeTimer
}

var (
	timerLoop  *libuv.Loop
	timerOnce  psync.Once
	keepAlive  libuv.Async
	timerAsync libuv.Async

	// asyncMu guards asyncQueue so asyncTimerEvent objects stay reachable
	// until the libuv loop drains them.
	asyncMu    psync.Mutex
	asyncQueue []*asyncTimerEvent

	asyncTimerChan2State uint32

	timerDebugOnce    psync.Once
	timerDebugEnabled bool
)

func ensureTimerLoop() {
	timerOnce.Do(func() {
		asyncMu.Init(nil)
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
		if code := libuv.AsyncInitRuntime(timerLoop, &timerAsync); code != 0 {
			panic(uvError("timerEvent uv_async_init", int(code)))
		}
		timerDebugMsg("AsyncInit timerEvent ok")
		go func() {
			timerDebugMsg("Loop.Run begin")
			if code := timerLoop.Run(libuv.RUN_DEFAULT); code != 0 {
				panic(uvError("libuv loop", int(code)))
			}
			timerDebugMsg("Loop.Run end")
		}()
	})
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

func isAsyncTimerChan2() bool {
	const (
		asyncTimerChan2Uninit uint32 = iota
		asyncTimerChan2No
		asyncTimerChan2Yes
		asyncTimerChan2Busy
	)
	for {
		state := latomic.LoadUint32(&asyncTimerChan2State)
		switch state {
		case asyncTimerChan2Yes:
			return true
		case asyncTimerChan2No:
			return false
		case asyncTimerChan2Uninit:
			if latomic.CompareAndSwapUint32(&asyncTimerChan2State, asyncTimerChan2Uninit, asyncTimerChan2Busy) {
				v := cliteos.Getenv(c.AllocaCStr("GODEBUG"))
				async := v != nil && godebugHasValue(c.GoString(v), "asynctimerchan", "2")
				if async {
					latomic.StoreUint32(&asyncTimerChan2State, asyncTimerChan2Yes)
					return true
				}
				latomic.StoreUint32(&asyncTimerChan2State, asyncTimerChan2No)
				return false
			}
		}
		c.Usleep(1)
	}
}

func godebugHasValue(s, key, value string) bool {
	for len(s) > 0 {
		token := s
		if i := indexByte(s, ','); i >= 0 {
			token = s[:i]
			s = s[i+1:]
		} else {
			s = ""
		}
		if len(token) == len(key)+1+len(value) &&
			token[:len(key)] == key &&
			token[len(key)] == '=' &&
			token[len(key)+1:] == value {
			return true
		}
	}
	return false
}

func indexByte(s string, b byte) int {
	for i := 0; i < len(s); i++ {
		if s[i] == b {
			return i
		}
	}
	return -1
}

//export llgo_runtime_timerEvent
func llgo_runtime_timerEvent(async *libuv.Async) {
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

//export llgo_runtime_timerCallback
func llgo_runtime_timerCallback(t *libuv.Timer) {
	timerCallback(t)
}

func timerCallback(t *libuv.Timer) {
	timerDebugMsg("timerCallback")
	r := (*runtimeTimer)(unsafe.Pointer(t))
	fireRuntimeTimer(r, runtimeNano(), 0)
}

func fireRuntimeTimer(r *runtimeTimer, now int64, expectSeq uintptr) bool {
	timerDebugMsg("fireRuntimeTimer")
	r.mu.Lock()
	if !r.active || (expectSeq != 0 && r.seq != expectSeq) {
		r.mu.Unlock()
		return false
	}
	when := r.when
	period := r.period
	f := r.f
	arg := r.arg
	seq := r.seq
	isChan := r.isChan
	isSending := isChan && period == 0
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

	delay := now - when
	if isChan {
		if isSending {
			latomic.AddInt32(&r.isSending, 1)
		}
		r.sendMu.Lock()
		r.mu.Lock()
		if r.seq != seq {
			r.mu.Unlock()
			if isSending {
				latomic.AddInt32(&r.isSending, -1)
			}
			r.sendMu.Unlock()
			return false
		}
		r.mu.Unlock()
		f(arg, seq, delay)
		if isSending {
			latomic.AddInt32(&r.isSending, -1)
		}
		r.sendMu.Unlock()
		return period > 0
	}
	f(arg, seq, delay)
	return period > 0
}

func startTimer(r *runtimeTimer) {
	ensureTimerLoop()
	submitTimerWork(func() bool {
		checkUV("uv_timer_init", int(libuv.InitTimer(timerLoop, &r.Timer)))
		r.mu.Lock()
		delay := timerDelayMillis(r.when)
		repeat := timerPeriodMillis(r.period)
		r.active = true
		r.seq++
		r.mu.Unlock()
		checkUV("uv_timer_start", int(libuv.TimerStartRuntime(&r.Timer, delay, repeat)))
		return true
	})
}

func stopRuntimeTimer(r *runtimeTimer) bool {
	ensureTimerLoop()
	if r.isChan {
		r.sendMu.Lock()
	}
	r.mu.Lock()
	wasActive := r.active
	period := r.period
	r.active = false
	r.seq++
	r.mu.Unlock()
	if r.isChan {
		r.sendMu.Unlock()
	}
	pending := wasActive
	if r.isChan && period == 0 && latomic.LoadInt32(&r.isSending) > 0 {
		pending = true
	}
	submitTimerWork(func() bool {
		checkUV("uv_timer_stop", int(r.Stop()))
		return true
	})
	return pending
}

func resetRuntimeTimer(r *runtimeTimer, when, period int64) bool {
	ensureTimerLoop()
	if r.isChan {
		r.sendMu.Lock()
	}
	r.mu.Lock()
	wasActive := r.active
	oldPeriod := r.period
	r.active = false
	r.seq++
	r.mu.Unlock()
	if r.isChan {
		r.sendMu.Unlock()
	}
	pending := wasActive
	if r.isChan && oldPeriod == 0 && latomic.LoadInt32(&r.isSending) > 0 {
		pending = true
	}

	submitTimerWork(func() bool {
		checkUV("uv_timer_stop", int(r.Stop()))
		return true
	})

	r.mu.Lock()
	r.when = when
	r.period = period
	r.active = true
	r.seq++
	r.mu.Unlock()

	submitTimerWork(func() bool {
		delay := timerDelayMillis(when)
		repeat := timerPeriodMillis(period)
		checkUV("uv_timer_start", int(libuv.TimerStartRuntime(&r.Timer, delay, repeat)))
		return true
	})
	return pending
}

func timerDelayMillis(when int64) uint64 {
	now := runtimeNano()
	if when <= now {
		return 0
	}
	delta := when - now
	// Convert nanoseconds to milliseconds, rounding up to avoid firing early.
	ms := (delta + int64(1e6) - 1) / int64(1e6)
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
	ms := (period + int64(1e6) - 1) / int64(1e6)
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
	return "time: " + op + " failed (" + itoa(code) + ")"
}

func itoa(v int) string {
	if v == 0 {
		return "0"
	}
	neg := v < 0
	if neg {
		v = -v
	}
	var buf [20]byte
	i := len(buf)
	for v > 0 {
		i--
		buf[i] = byte('0' + v%10)
		v /= 10
	}
	if neg {
		i--
		buf[i] = '-'
	}
	return string(buf[i:])
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
	done := make(chan struct{}, 1)
	r := new(runtimeTimer)
	r.mu.Init(nil)
	r.sendMu.Init(nil)
	r.when = runtimeNano() + ns
	r.f = timeSleepWake
	r.arg = done
	startTimer(r)
	<-done
	stopRuntimeTimer(r)
}

func timeSleepWake(arg any, _ uintptr, _ int64) {
	ch := arg.(chan struct{})
	ch <- struct{}{}
}

//go:linkname newTimer time.newTimer
func newTimer(when, period int64, f func(any, uintptr, int64), arg any, cp unsafe.Pointer) *timeTimer {
	_ = cp
	t := new(timeTimer)
	t.initTimer = true
	t.c = cp
	t.rt.mu.Init(nil)
	t.rt.sendMu.Init(nil)
	t.rt.isChan = cp != nil && !isAsyncTimerChan2()
	t.rt.when = when
	t.rt.period = period
	t.rt.f = f
	t.rt.arg = arg
	startTimer(&t.rt)
	return t
}

//go:linkname stopTimer time.stopTimer
func stopTimer(t *timeTimer) bool {
	return stopRuntimeTimer(&t.rt)
}

//go:linkname resetTimer time.resetTimer
func resetTimer(t *timeTimer, when, period int64) bool {
	return resetRuntimeTimer(&t.rt, when, period)
}

func runtimeNano() int64 {
	tv := (*ct.Timespec)(c.Alloca(unsafe.Sizeof(ct.Timespec{})))
	ct.ClockGettime(ct.CLOCK_MONOTONIC, tv)
	return int64(tv.Sec)*1e9 + int64(tv.Nsec)
}
