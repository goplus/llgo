//go:build darwin && !timer_usleep

package time

import (
	"sync"
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	cos "github.com/goplus/llgo/runtime/internal/clite/os"
	csys "github.com/goplus/llgo/runtime/internal/clite/syscall"
)

// Darwin timer implementation using kqueue EVFILT_TIMER.

// kevent_t mirrors struct kevent on Darwin.
type kevent_t struct {
	Ident  uintptr
	Filter int16
	Flags  uint16
	Fflags uint32
	Data   int64
	Udata  unsafe.Pointer
}

type timespec struct {
	Sec  int64
	Nsec int64
}

const (
	EVFILT_TIMER = int16(-7)

	EV_ADD     = uint16(0x0001)
	EV_DELETE  = uint16(0x0002)
	EV_ONESHOT = uint16(0x0010)

	NOTE_USECONDS = uint32(0x00000002)
)

//go:linkname kqueue C.kqueue
func kqueue() c.Int

//go:linkname kevent_sys C.kevent
func kevent_sys(kq c.Int, changelist *kevent_t, nchanges c.Int, eventlist *kevent_t, nevents c.Int, timeout *timespec) c.Int

var (
	kqFd   c.Int
	kqOnce sync.Once
)

type timerCookie struct {
	r   *runtimeTimer
	seq uint64
}

func initKqueue() {
	kqFd = kqueue()
	go kqueueLoop()
}

// keventWait waits for one event and retries on EINTR.
func keventWait(kq c.Int, ev *kevent_t, panicMsg string) {
	for {
		n := kevent_sys(kq, nil, 0, ev, 1, nil)
		if n >= 0 {
			return
		}
		if cos.Errno() == c.Int(csys.EINTR) {
			continue
		}
		panicErrno(panicMsg, cos.Errno())
	}
}

// keventCtl applies a single change (add/del) and retries on EINTR.
// If allowENOENT is true, ENOENT is treated as success (useful for DEL).
func keventCtl(kq c.Int, ev *kevent_t, panicMsg string, allowENOENT bool) {
	for {
		if kevent_sys(kq, ev, 1, nil, 0, nil) >= 0 {
			return
		}
		errno := cos.Errno()
		if errno == c.Int(csys.EINTR) {
			continue
		}
		if allowENOENT && errno == c.Int(csys.ENOENT) {
			return
		}
		panicErrno(panicMsg, errno)
	}
}

func kqueueLoop() {
	for {
		var ev kevent_t
		keventWait(kqFd, &ev, "timer: kevent loop failed")
		if ev.Udata == nil {
			continue
		}
		cookie := (*timerCookie)(ev.Udata)
		r := cookie.r
		r.mu.Lock()
		if r.seq != cookie.seq || r.state != timerWaiting {
			r.mu.Unlock()
			continue
		}
		r.state = timerFired
		r.mu.Unlock()
		go r.f(r.arg, 0)
	}
}

func startTimer(r *runtimeTimer) {
	kqOnce.Do(initKqueue)
	if kqFd < 0 {
		panicErrno("timer: kqueue init failed", cos.Errno())
	}

	r.mu.Lock()
	r.seq++
	seq := r.seq
	when := r.when
	r.state = timerWaiting
	if r.cookie == nil {
		r.cookie = &timerCookie{r: r}
	}
	r.cookie.seq = seq
	cookiePtr := r.cookie
	r.mu.Unlock()

	delay := timerDelayMillis(when)
	ev := kevent_t{
		Ident:  uintptr(unsafe.Pointer(r)),
		Filter: EVFILT_TIMER,
		Flags:  EV_ADD | EV_ONESHOT,
		Fflags: NOTE_USECONDS,
		Data:   int64(delay * 1000), // microseconds
		Udata:  unsafe.Pointer(cookiePtr),
	}
	keventCtl(kqFd, &ev, "timer: kevent add failed", false)
}

func stopTimer(r *runtimeTimer) bool {
	kqOnce.Do(initKqueue)
	if kqFd < 0 {
		panicErrno("timer: kqueue init failed", cos.Errno())
	}

	r.mu.Lock()
	active := r.state == timerWaiting
	if active {
		r.state = timerStopped
		r.seq++
	}
	cookiePtr := r.cookie
	r.mu.Unlock()

	if cookiePtr != nil {
		ev := kevent_t{
			Ident:  uintptr(unsafe.Pointer(r)),
			Filter: EVFILT_TIMER,
			Flags:  EV_DELETE,
			Udata:  unsafe.Pointer(cookiePtr),
		}
		keventCtl(kqFd, &ev, "timer: kevent delete failed", true)
	}
	return active
}

func resetTimer(r *runtimeTimer, when int64) bool {
	wasActive := stopTimer(r)
	r.mu.Lock()
	r.when = when
	r.state = timerWaiting
	r.mu.Unlock()
	startTimer(r)
	return wasActive
}

func timerDelayMillis(when int64) uint64 {
	now := runtimeNano()
	if when <= now {
		return 0
	}
	delta := when - now
	ms := (delta + int64(Millisecond) - 1) / int64(Millisecond)
	if ms < 0 {
		return 0
	}
	return uint64(ms)
}
