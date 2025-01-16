// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Package syscall provides the syscall primitives required for the runtime.
package syscall

/*
#include <stdint.h>
#include <errno.h>
#include <unistd.h>
#include <sys/epoll.h>
#include <sys/eventfd.h>
#include <sys/syscall.h>

static int llgo_errno(void) {
	return errno;
}

static void syscall6(uintptr_t num,
                    uintptr_t a1, uintptr_t a2, uintptr_t a3,
                    uintptr_t a4, uintptr_t a5, uintptr_t a6,
                    uintptr_t *r1, uintptr_t *r2, uintptr_t *err) {
    errno = 0;
    long ret = syscall(num, a1, a2, a3, a4, a5, a6);
    if (ret >= -4095UL) {
        *r1 = ret;
        *r2 = 0;
        *err = 0;
    } else {
        *r1 = (uintptr_t)-1;
        *r2 = 0;
        *err = (uintptr_t)-ret;
    }
}
*/
import "C"

import (
	"syscall"
	"unsafe"
)

// TODO(https://go.dev/issue/51087): This package is incomplete and currently
// only contains very minimal support for Linux.

func EpollCreate1(flags int32) (fd int32, errno uintptr) {
	fd = int32(C.epoll_create1(C.int(flags)))
	return fd, uintptr(C.llgo_errno())
}

var _zero uintptr

func EpollWait(epfd int32, events []syscall.EpollEvent, maxev, waitms int32) (n int32, errno uintptr) {
	var ev unsafe.Pointer
	if len(events) > 0 {
		ev = unsafe.Pointer(&events[0])
	} else {
		ev = unsafe.Pointer(&_zero)
	}
	n = int32(C.epoll_pwait(C.int(epfd), (*C.struct_epoll_event)(ev), C.int(maxev), C.int(waitms), nil))
	return n, uintptr(C.llgo_errno())
}

func EpollCtl(epfd, op, fd int32, event *syscall.EpollEvent) (errno uintptr) {
	if C.epoll_ctl(C.int(epfd), C.int(op), C.int(fd), (*C.struct_epoll_event)(unsafe.Pointer(event))) < 0 {
		return uintptr(C.llgo_errno())
	}
	return 0
}

func Eventfd(initval, flags int32) (fd int32, errno uintptr) {
	r1 := int32(C.eventfd(C.uint(initval), C.int(flags)))
	return r1, uintptr(C.llgo_errno())
}

func Syscall6(num, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, errno uintptr) {
	var r1out, r2out, errout C.uintptr_t
	C.syscall6(C.uintptr_t(num),
		C.uintptr_t(a1), C.uintptr_t(a2), C.uintptr_t(a3),
		C.uintptr_t(a4), C.uintptr_t(a5), C.uintptr_t(a6),
		&r1out, &r2out, &errout)
	return uintptr(r1out), uintptr(r2out), uintptr(errout)
}
