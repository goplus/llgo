// Copyright 2023 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build wasip1

package syscall

import "syscall"

const (
	SHUT_RD   = 0x1
	SHUT_WR   = 0x2
	SHUT_RDWR = SHUT_RD | SHUT_WR
)

type sdflags = uint32

func Socket(proto, sotype, unused int) (fd int, err error) {
	panic("not implemented")
}

func Bind(fd int, sa syscall.Sockaddr) error {
	panic("not implemented")
}

func StopIO(fd int) error {
	panic("not implemented")
}

func Listen(fd int, backlog int) error {
	panic("not implemented")
}

func Connect(fd int, sa syscall.Sockaddr) error {
	panic("not implemented")
}

func Recvfrom(fd int, p []byte, flags int) (n int, from syscall.Sockaddr, err error) {
	panic("not implemented")
}

func Sendto(fd int, p []byte, flags int, to syscall.Sockaddr) error {
	panic("not implemented")
}

func Recvmsg(fd int, p, oob []byte, flags int) (n, oobn, recvflags int, from syscall.Sockaddr, err error) {
	panic("not implemented")
}

func SendmsgN(fd int, p, oob []byte, to syscall.Sockaddr, flags int) (n int, err error) {
	panic("not implemented")
}

func GetsockoptInt(fd, level, opt int) (value int, err error) {
	panic("not implemented")
}

func SetsockoptInt(fd, level, opt int, value int) error {
	panic("not implemented")
}

func SetReadDeadline(fd int, t int64) error {
	panic("not implemented")
}

func SetWriteDeadline(fd int, t int64) error {
	panic("not implemented")
}

func Shutdown(fd int, how int) error {
	panic("not implemented")
}
