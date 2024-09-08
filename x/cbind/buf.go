package cbind

import "unsafe"

type slice struct {
	data unsafe.Pointer
	len  int
}

func GoBytes(buf *int8, n int) []byte {
	return *(*[]byte)(unsafe.Pointer(&slice{unsafe.Pointer(buf), n}))
}

func CBuffer(data []byte) (*int8, int) {
	return (*int8)(unsafe.Pointer(&data[0])), len(data)
}
