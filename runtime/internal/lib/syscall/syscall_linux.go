// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Linux system calls.
// This file is compiled as ordinary Go code,
// but it is also input to mksyscall,
// which parses the //sys lines and generates system call stubs.
// Note that sometimes we use a lowercase //sys name and
// wrap it in our own nicer implementation.

package syscall

import (
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/os"
	"github.com/goplus/llgo/runtime/internal/clite/syscall"
)

// -----------------------------------------------------------------------------

type WaitStatus uint32

// Wait status is 7 bits at bottom, either 0 (exited),
// 0x7F (stopped), or a signal number that caused an exit.
// The 0x80 bit is whether there was a core dump.
// An extra number (exit code, signal causing a stop)
// is in the high bits. At least that's the idea.
// There are various irregularities. For example, the
// "continued" status is 0xFFFF, distinguishing itself
// from stopped via the core dump bit.

const (
	mask    = 0x7F
	core    = 0x80
	exited  = 0x00
	stopped = 0x7F
	shift   = 8
)

func (w WaitStatus) Exited() bool { return w&mask == exited }

func (w WaitStatus) Signaled() bool { return w&mask != stopped && w&mask != exited }

func (w WaitStatus) Stopped() bool { return w&0xFF == stopped }

func (w WaitStatus) Continued() bool { return w == 0xFFFF }

func (w WaitStatus) CoreDump() bool { return w.Signaled() && w&core != 0 }

func (w WaitStatus) ExitStatus() int {
	if !w.Exited() {
		return -1
	}
	return int(w>>shift) & 0xFF
}

func (w WaitStatus) Signal() Signal {
	if !w.Signaled() {
		return -1
	}
	return Signal(w & mask)
}

func (w WaitStatus) StopSignal() Signal {
	if !w.Stopped() {
		return -1
	}
	return Signal(w>>shift) & 0xFF
}

func (w WaitStatus) TrapCause() int {
	/*
		if w.StopSignal() != SIGTRAP {
			return -1
		}

		return int(w>>shift) >> 8
	*/
	panic("todo: syscall.WaitStatus.TrapCause")
}

func Wait4(pid int, wstatus *WaitStatus, options int, rusage *syscall.Rusage) (wpid int, err error) {
	var status c.Int
	wpid, err = wait4(pid, &status, options, rusage)
	if wstatus != nil {
		*wstatus = WaitStatus(status)
	}
	return
}

// -----------------------------------------------------------------------------

// int pipe2(int pipefd[2], int flags);
//
//go:linkname pipe2 C.pipe2
func pipe2(pipefd *[2]c.Int, flags c.Int) c.Int

func Pipe2(p []int, flags int) error {
	if len(p) != 2 {
		return Errno(syscall.EINVAL)
	}
	var pp [2]c.Int
	ret := pipe2(&pp, c.Int(flags))
	if ret == 0 {
		p[0] = int(pp[0])
		p[1] = int(pp[1])
		return nil
	}
	return Errno(ret)
}

// -----------------------------------------------------------------------------

func Faccessat(dirfd int, path string, mode uint32, flags int) (err error) {
	ret := faccessat(c.Int(dirfd), c.AllocaCStr(path), c.Int(mode), c.Int(flags))
	if ret != 0 {
		return Errno(os.Errno())
	}
	return nil
}

//go:linkname faccessat C.faccessat
func faccessat(dirfd c.Int, path *c.Char, mode c.Int, flags c.Int) c.Int

// -----------------------------------------------------------------------------
