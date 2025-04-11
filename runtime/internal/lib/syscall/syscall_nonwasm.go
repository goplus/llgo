//go:build !wasm

package syscall

import (
	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/os"
	"github.com/goplus/llgo/runtime/internal/clite/syscall"
)

type Rlimit syscall.Rlimit

func Getrlimit(which int, lim *Rlimit) (err error) {
	ret := os.Getrlimit(c.Int(which), (*syscall.Rlimit)(lim))
	if ret == 0 {
		return nil
	}
	return Errno(ret)
}

func setrlimit(which int, lim *Rlimit) (err error) {
	ret := os.Setrlimit(c.Int(which), (*syscall.Rlimit)(lim))
	if ret == 0 {
		return nil
	}
	return Errno(ret)
}

func wait4(pid int, wstatus *c.Int, options int, rusage *syscall.Rusage) (wpid int, err error) {
	ret := os.Wait4(os.PidT(pid), wstatus, c.Int(options), rusage)
	if ret >= 0 {
		return int(ret), nil
	}
	return 0, Errno(os.Errno())
}

func fork() (uintptr, Errno) {
	ret := os.Fork()
	if ret >= 0 {
		return uintptr(ret), Errno(0)
	}
	return 0, Errno(os.Errno())
}

func Pipe(p []int) (err error) {
	if len(p) != 2 {
		return Errno(syscall.EINVAL)
	}
	var q [2]c.Int
	ret := os.Pipe(&q)
	if ret == 0 {
		p[0] = int(q[0])
		p[1] = int(q[1])
		return nil
	}
	return Errno(ret)
}
