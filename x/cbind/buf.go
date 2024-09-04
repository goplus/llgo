package cbind

import "unsafe"

type slice struct {
	data unsafe.Pointer
	len  int
}

func GoBytes(buf *int8, n int) []byte {
	return *(*[]byte)(unsafe.Pointer(&slice{unsafe.Pointer(buf), n}))
}
