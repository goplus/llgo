//go:build linux && !timer_usleep

package time

import (
	"sync"
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	cos "github.com/goplus/llgo/runtime/internal/clite/os"
	csys "github.com/goplus/llgo/runtime/internal/clite/syscall"
)

// Linux timer implementation using timerfd + epoll, sharing a single wait loop.

type timespec struct {
	Sec  int64
	Nsec int64
}

type itimerspec struct {
	Interval timespec
	Value    timespec
}

type epollEvent struct {
	Events uint32
	Fd     int32
	Pad    int32
}

const (
	CLOCK_MONOTONIC = 1

	TFD_CLOEXEC  = 0x80000
	TFD_NONBLOCK = 0x800

	EPOLL_CTL_ADD = 1
	EPOLL_CTL_DEL = 2
	EPOLL_CTL_MOD = 3

	EPOLLIN       = 0x001
	EPOLL_CLOEXEC = 0x80000
)

//go:linkname timerfd_create C.timerfd_create
func timerfd_create(clockid c.Int, flags c.Int) c.Int

//go:linkname timerfd_settime C.timerfd_settime
func timerfd_settime(fd c.Int, flags c.Int, newValue *itimerspec, oldValue *itimerspec) c.Int

//go:linkname epoll_create1 C.epoll_create1
func epoll_create1(flags c.Int) c.Int

//go:linkname epoll_ctl C.epoll_ctl
func epoll_ctl(epfd c.Int, op c.Int, fd c.Int, event *epollEvent) c.Int

//go:linkname epoll_wait C.epoll_wait
func epoll_wait(epfd c.Int, events *epollEvent, maxevents c.Int, timeout c.Int) c.Int

var (
	epfd    int
	epOnce  sync.Once
	timerMx sync.Map // fd -> *runtimeTimer
)

func initEpoll() {
	epfd = int(epoll_create1(EPOLL_CLOEXEC))
	if epfd < 0 {
		panicErrno("timer: epoll_create1 failed", cos.Errno())
	}
	go epollLoop()
}

func epollLoop() {
	events := make([]epollEvent, 64)
	for {
		n := int(epoll_wait(c.Int(epfd), &events[0], c.Int(len(events)), -1))
		if n < 0 {
			if cos.Errno() == c.Int(csys.EINTR) {
				continue
			}
			panicErrno("timer: epoll_wait failed", cos.Errno())
		}
		for i := 0; i < n; i++ {
			fd := int(events[i].Fd)
			val, ok := timerMx.Load(fd)
			if !ok {
				continue
			}
			r := val.(*runtimeTimer)

			var buf [8]byte
			nr := cos.Read(c.Int(fd), unsafe.Pointer(&buf[0]), unsafe.Sizeof(buf))
			if nr < 0 {
				errno := cos.Errno()
				if errno == c.Int(csys.EINTR) || errno == c.Int(csys.EAGAIN) {
					continue
				}
				panicErrno("timer: read timerfd failed", errno)
			}

			r.mu.Lock()
			if r.state == timerWaiting {
				r.state = timerFired
				r.mu.Unlock()
				go r.f(r.arg, 0)
			} else {
				r.mu.Unlock()
			}
		}
	}
}

func startTimer(r *runtimeTimer) {
	epOnce.Do(initEpoll)

	r.mu.Lock()
	if r.fd == 0 {
		r.fd = int(timerfd_create(CLOCK_MONOTONIC, TFD_CLOEXEC|TFD_NONBLOCK))
		if r.fd < 0 {
			r.fd = 0
			r.mu.Unlock()
			panicErrno("timer: timerfd_create failed", cos.Errno())
		}
	}
	r.seq++
	when := r.when
	fd := r.fd
	r.state = timerWaiting
	r.mu.Unlock()

	prog := itimerspec{}
	setItimerFromWhen(when, &prog)
	setTimerfd(fd, &prog)

	ev := epollEvent{Events: EPOLLIN, Fd: int32(fd)}
	addOrModEpoll(fd, &ev)
	timerMx.Store(fd, r)
}

func stopTimer(r *runtimeTimer) bool {
	epOnce.Do(initEpoll)

	r.mu.Lock()
	active := r.state == timerWaiting
	fd := r.fd
	if active {
		r.state = timerStopped
		r.seq++
	}
	r.mu.Unlock()

	if fd != 0 {
		timerMx.Delete(fd)
		epollCtlRetry(epfd, EPOLL_CTL_DEL, fd, nil)
		var disarm itimerspec
		setTimerfd(fd, &disarm)
	}

	return active
}

func resetTimer(r *runtimeTimer, when int64) bool {
	epOnce.Do(initEpoll)

	r.mu.Lock()
	wasActive := r.state == timerWaiting
	if r.fd == 0 {
		r.fd = int(timerfd_create(CLOCK_MONOTONIC, TFD_CLOEXEC|TFD_NONBLOCK))
		if r.fd < 0 {
			r.fd = 0
			r.mu.Unlock()
			panicErrno("timer: timerfd_create failed", cos.Errno())
		}
	}
	r.seq++
	fd := r.fd
	r.when = when
	r.state = timerWaiting
	r.mu.Unlock()

	prog := itimerspec{}
	setItimerFromWhen(when, &prog)
	setTimerfd(fd, &prog)

	ev := epollEvent{Events: EPOLLIN, Fd: int32(fd)}
	addOrModEpoll(fd, &ev)
	timerMx.Store(fd, r)

	return wasActive
}

func setItimerFromWhen(when int64, spec *itimerspec) {
	now := runtimeNano()
	if when <= now {
		spec.Value.Sec = 0
		spec.Value.Nsec = 1
		return
	}
	delta := when - now
	spec.Value.Sec = delta / int64(1e9)
	spec.Value.Nsec = delta % int64(1e9)
	if spec.Value.Nsec == 0 {
		spec.Value.Nsec = 1 // avoid 0 which disarms
	}
}

func cleanupTimerfd(fd int) {
	timerMx.Delete(fd)
	cos.Close(c.Int(fd))
}

func setTimerfd(fd int, spec *itimerspec) {
	for {
		if timerfd_settime(c.Int(fd), 0, spec, nil) == 0 {
			return
		}
		errno := cos.Errno()
		if errno == c.Int(csys.EINTR) {
			continue
		}
		cleanupTimerfd(fd)
		panicErrno("timer: timerfd_settime failed", errno)
	}
}

func epollCtlRetry(epfd int, op int, fd int, ev *epollEvent) {
	for {
		if epoll_ctl(c.Int(epfd), c.Int(op), c.Int(fd), ev) == 0 {
			return
		}
		if cos.Errno() == c.Int(csys.EINTR) {
			continue
		}
		panicErrno("timer: epoll_ctl failed", cos.Errno())
	}
}

func addOrModEpoll(fd int, ev *epollEvent) {
	if epoll_ctl(c.Int(epfd), EPOLL_CTL_ADD, c.Int(fd), ev) == 0 {
		return
	}
	errno := cos.Errno()
	if errno == c.Int(csys.EEXIST) {
		// fd already registered; update it.
		if epoll_ctl(c.Int(epfd), EPOLL_CTL_MOD, c.Int(fd), ev) == 0 {
			return
		}
		errno = cos.Errno()
	}
	cleanupTimerfd(fd)
	panicErrno("timer: epoll_ctl ADD/MOD failed", errno)
}
