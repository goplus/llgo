// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build unix

package syscall

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/syscall"
	"github.com/goplus/llgo/runtime/internal/lib/internal/oserror"
)

var (
	Stdin  = 0
	Stdout = 1
	Stderr = 2
)

type Errno uintptr

func (e Errno) Error() string {
	ret := c.Strerror(c.Int(e))
	return unsafe.String((*byte)(unsafe.Pointer(ret)), c.Strlen(ret))
}

func (e Errno) Is(target error) bool {
	switch target {
	case oserror.ErrPermission:
		return e == Errno(syscall.EACCES) || e == Errno(syscall.EPERM)
	case oserror.ErrExist:
		return e == Errno(syscall.EEXIST) || e == Errno(syscall.ENOTEMPTY)
	case oserror.ErrNotExist:
		return e == Errno(syscall.ENOENT)
		// TODO(xsw): go1.21
		// case errors.ErrUnsupported:
		//	return e == ENOSYS || e == ENOTSUP || e == EOPNOTSUPP
	}
	return false
}

func (e Errno) Temporary() bool {
	return e == Errno(syscall.EINTR) || e == Errno(syscall.EMFILE) ||
		e == Errno(syscall.ENFILE) || e.Timeout()
}

func (e Errno) Timeout() bool {
	return e == Errno(syscall.EAGAIN) || e == Errno(syscall.EWOULDBLOCK) || e == Errno(syscall.ETIMEDOUT)
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
	panic("todo: syscall.Signal.String")
}
