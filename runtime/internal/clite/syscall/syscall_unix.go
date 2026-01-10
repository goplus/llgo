//go:build !wasm

package syscall

type Errno uintptr

func Error(e Errno) string {
	if 0 <= int(e) && int(e) < len(errors) {
		s := errors[e]
		if s != "" {
			return s
		}
	}
	return "errno " + utoa(uint64(e))
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
