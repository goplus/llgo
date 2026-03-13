package runtime

import "unsafe"

var zeroSizedAlloc uint8

func zeroAlloc() unsafe.Pointer {
	return unsafe.Pointer(&zeroSizedAlloc)
}
