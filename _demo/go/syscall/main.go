//go:build llgo

package main

import (
	"syscall"
	"unsafe"

	"github.com/goplus/lib/c"
)

func printErr(prefix string, err error) {
	if err == nil {
		return
	}
	if errno, ok := err.(syscall.Errno); ok {
		c.Printf(c.Str("%s: errno=%d\n"), c.AllocaCStr(prefix), errno)
		return
	}
	c.Printf(c.Str("%s: error\n"), c.AllocaCStr(prefix))
}

func main() {
	pid := syscall.Getpid()
	c.Printf(c.Str("pid=%d\n"), pid)

	if wd, err := syscall.Getwd(); err != nil {
		printErr("getwd", err)
	} else {
		c.Printf(c.Str("cwd=%s\n"), c.AllocaCStr(wd))
	}

	fd, err := syscall.Open("/etc/hosts", 0, 0)
	if err != nil {
		printErr("open /etc/hosts", err)
		return
	}

	var buf [128]byte
	if n, err := syscall.Read(fd, buf[:]); err != nil {
		printErr("read /etc/hosts", err)
	} else {
		c.Printf(c.Str("read=%d\n"), n)
		if n > 0 {
			c.Printf(c.Str("head: %.*s\n"), n, (*c.Char)(unsafe.Pointer(&buf[0])))
		}
	}
	_ = syscall.Close(fd)
}
