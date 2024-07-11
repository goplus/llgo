// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build unix

package syscall

import (
	"errors"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/internal/lib/internal/oserror"
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
		return e == EACCES || e == EPERM
	case oserror.ErrExist:
		return e == EEXIST || e == ENOTEMPTY
	case oserror.ErrNotExist:
		return e == ENOENT
	case errors.ErrUnsupported:
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
