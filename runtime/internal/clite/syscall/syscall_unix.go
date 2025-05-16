//go:build !wasm

package syscall

type Errno uintptr

func (e Errno) Error() string {
	if 0 <= int(e) && int(e) < len(errors) {
		s := errors[e]
		if s != "" {
			return s
		}
	}
	return "errno " + utoa(uint64(e))
}

func (e Errno) Is(target error) bool {
	switch target {
	case ErrPermission:
		return e == EACCES || e == EPERM
	case ErrExist:
		return e == EEXIST || e == ENOTEMPTY
	case ErrNotExist:
		return e == ENOENT
	case ErrUnsupported:
		return e == ENOSYS || e == ENOTSUP || e == EOPNOTSUPP
	}
	return false
}

func (e Errno) Temporary() bool {
	return e == EINTR || e == EMFILE || e == ENFILE || e.Timeout()
}

func (e Errno) Timeout() bool {
	return e == EAGAIN || e == EWOULDBLOCK || e == ETIMEDOUT
}

// A Signal is a number describing a process signal.
// It implements the [os.Signal] interface.
type Signal int

func (s Signal) Signal() {}

func (s Signal) String() string {
	if 0 <= s && int(s) < len(signals) {
		str := signals[s]
		if str != "" {
			return str
		}
	}
	return "signal " + itoa(int64(s))
}
