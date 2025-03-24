package syscall

import (
	"errors"
	"strconv"

	"github.com/goplus/llgo/runtime/internal/clite/syscall"
	"github.com/goplus/llgo/runtime/internal/lib/internal/itoa"
	"github.com/goplus/llgo/runtime/internal/lib/internal/oserror"
)

// An Errno is an unsigned number describing an error condition.
// It implements the error interface. The zero Errno is by convention
// a non-error, so code to convert from Errno to error should use:
//
//	var err = nil
//	if errno != 0 {
//		err = errno
//	}
type Errno uint32

func (e Errno) Error() string {
	if 0 <= int(e) && int(e) < len(errorstr) {
		s := errorstr[e]
		if s != "" {
			return s
		}
	}
	return "errno " + itoa.Itoa(int(e))
}

func (e Errno) Is(target error) bool {
	switch target {
	case oserror.ErrPermission:
		return e == EACCES || e == EPERM
	case oserror.ErrExist:
		return e == EEXIST || e == ENOTEMPTY
	case oserror.ErrNotExist:
		return e == ENOENT
	case errors.ErrUnsupported:
		return e == ENOSYS
	}
	return false
}

func (e Errno) Temporary() bool {
	return e == EINTR || e == EMFILE || e.Timeout()
}

func (e Errno) Timeout() bool {
	return e == EAGAIN || e == ETIMEDOUT
}

// A Signal is a number describing a process signal.
// It implements the [os.Signal] interface.
type Signal uint8

const (
	SIGNONE Signal = iota
	SIGHUP
	SIGINT
	SIGQUIT
	SIGILL
	SIGTRAP
	SIGABRT
	SIGBUS
	SIGFPE
	SIGKILL
	SIGUSR1
	SIGSEGV
	SIGUSR2
	SIGPIPE
	SIGALRM
	SIGTERM
	SIGCHLD
	SIGCONT
	SIGSTOP
	SIGTSTP
	SIGTTIN
	SIGTTOU
	SIGURG
	SIGXCPU
	SIGXFSZ
	SIGVTARLM
	SIGPROF
	SIGWINCH
	SIGPOLL
	SIGPWR
	SIGSYS
)

func (s Signal) Signal() {}

func (s Signal) String() string {
	switch s {
	case SIGNONE:
		return "no signal"
	case SIGHUP:
		return "hangup"
	case SIGINT:
		return "interrupt"
	case SIGQUIT:
		return "quit"
	case SIGILL:
		return "illegal instruction"
	case SIGTRAP:
		return "trace/breakpoint trap"
	case SIGABRT:
		return "abort"
	case SIGBUS:
		return "bus error"
	case SIGFPE:
		return "floating point exception"
	case SIGKILL:
		return "killed"
	case SIGUSR1:
		return "user defined signal 1"
	case SIGSEGV:
		return "segmentation fault"
	case SIGUSR2:
		return "user defined signal 2"
	case SIGPIPE:
		return "broken pipe"
	case SIGALRM:
		return "alarm clock"
	case SIGTERM:
		return "terminated"
	case SIGCHLD:
		return "child exited"
	case SIGCONT:
		return "continued"
	case SIGSTOP:
		return "stopped (signal)"
	case SIGTSTP:
		return "stopped"
	case SIGTTIN:
		return "stopped (tty input)"
	case SIGTTOU:
		return "stopped (tty output)"
	case SIGURG:
		return "urgent I/O condition"
	case SIGXCPU:
		return "CPU time limit exceeded"
	case SIGXFSZ:
		return "file size limit exceeded"
	case SIGVTARLM:
		return "virtual timer expired"
	case SIGPROF:
		return "profiling timer expired"
	case SIGWINCH:
		return "window changed"
	case SIGPOLL:
		return "I/O possible"
	case SIGPWR:
		return "power failure"
	case SIGSYS:
		return "bad system call"
	default:
		return "signal " + strconv.Itoa(int(s))
	}
}

type Dircookie = uint64

type Filetype = uint8

type Dirent struct {
	// The offset of the next directory entry stored in this directory.
	Next Dircookie
	// The serial number of the file referred to by this directory entry.
	Ino uint64
	// The length of the name of the directory entry.
	Namlen uint32
	// The type of the file referred to by this directory entry.
	Type Filetype
	// Name of the directory entry.
	Name *byte
}

type WaitStatus uint32

func (w WaitStatus) Exited() bool       { return false }
func (w WaitStatus) ExitStatus() int    { return 0 }
func (w WaitStatus) Signaled() bool     { return false }
func (w WaitStatus) Signal() Signal     { return 0 }
func (w WaitStatus) CoreDump() bool     { return false }
func (w WaitStatus) Stopped() bool      { return false }
func (w WaitStatus) Continued() bool    { return false }
func (w WaitStatus) StopSignal() Signal { return 0 }
func (w WaitStatus) TrapCause() int     { return 0 }

func Wait4(pid int, wstatus *WaitStatus, options int, rusage *syscall.Rusage) (wpid int, err error) {
	return 0, ENOSYS
}
