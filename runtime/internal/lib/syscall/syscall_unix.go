// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build unix && !wasm && (!llgo || !darwin)

package syscall

import (
	"errors"

	csyscall "github.com/goplus/llgo/runtime/internal/clite/syscall"
	"github.com/goplus/llgo/runtime/internal/lib/internal/oserror"
)

var (
	Stdin  = 0
	Stdout = 1
	Stderr = 2
)

type Errno uintptr

type Dirent = csyscall.Dirent

func (e Errno) Error() string {
	return csyscall.Error(csyscall.Errno(e))
}

func (e Errno) Is(target error) bool {
	switch target {
	case oserror.ErrPermission:
		return e == Errno(csyscall.EACCES) || e == Errno(csyscall.EPERM)
	case oserror.ErrExist:
		return e == Errno(csyscall.EEXIST) || e == Errno(csyscall.ENOTEMPTY)
	case oserror.ErrNotExist:
		return e == Errno(csyscall.ENOENT)
	case errors.ErrUnsupported:
		return e == Errno(csyscall.ENOSYS) || e == Errno(csyscall.ENOTSUP) || e == Errno(csyscall.EOPNOTSUPP)
	}
	return false
}

func (e Errno) Temporary() bool {
	return e == Errno(csyscall.EINTR) || e == Errno(csyscall.EMFILE) ||
		e == Errno(csyscall.ENFILE) || e.Timeout()
}

func (e Errno) Timeout() bool {
	return e == Errno(csyscall.EAGAIN) || e == Errno(csyscall.EWOULDBLOCK) || e == Errno(csyscall.ETIMEDOUT)
}

// A Signal is a number describing a process signal.
// It implements the os.Signal interface.
type Signal int

func (s Signal) Signal() {}

func (s Signal) String() string {
	/*
		if 0 <= s && int(s) < len(signals) {
			str := signals[s]
			if str != "" {
				return str
			}
		}
		return "signal " + itoa.Itoa(int(s))
	*/
	panic("todo: csyscall.Signal.String")
}

func Mmap(fd int, offset int64, length int, prot int, flags int) (data []byte, err error) {
	panic("todo: csyscall.Mmap")
}

func Munmap(b []byte) (err error) {
	panic("todo: csyscall.Munmap")
}
