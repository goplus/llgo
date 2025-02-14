package unix

import (
	"syscall"
	_ "unsafe"
)

// llgo:skip fcntl
const (
	LLGoPackage = "link"
	LLGoFiles   = "_unix/fcntl_unix.c"
)

//go:linkname fcntl C.llgo_fcntl2
func fcntl(fd int32, cmd int32, arg int32) (int32, int32)

func Fcntl(fd int, cmd int, arg int) (int, error) {
	val, errno := fcntl(int32(fd), int32(cmd), int32(arg))
	if val == -1 {
		return int(val), syscall.Errno(errno)
	}
	return int(val), nil
}
