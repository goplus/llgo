package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/runtime/math"
)

func unsafeRangeOK(data unsafe.Pointer, size uintptr) bool {
	if size == 0 {
		return true
	}
	base := uintptr(data)
	end := base + size - 1
	return end >= base
}

func UnsafeString(data unsafe.Pointer, n int) String {
	if n < 0 {
		panic(errorString("unsafe.String: len out of range"))
	}
	if data == nil {
		if n == 0 {
			return String{}
		}
		panic(errorString("unsafe.String: ptr is nil and len is not zero"))
	}
	if !unsafeRangeOK(data, uintptr(n)) {
		panic(errorString("unsafe.String: len out of range"))
	}
	return String{data: data, len: n}
}

func UnsafeSlice(data unsafe.Pointer, n int, elemSize int) Slice {
	if n < 0 {
		panic(errorString("unsafe.Slice: len out of range"))
	}
	if data == nil {
		if n == 0 {
			return Slice{}
		}
		panic(errorString("unsafe.Slice: ptr is nil and len is not zero"))
	}
	if elemSize == 0 {
		return Slice{data: data, len: n, cap: n}
	}
	size, overflow := math.MulUintptr(uintptr(n), uintptr(elemSize))
	if overflow || !unsafeRangeOK(data, size) {
		panic(errorString("unsafe.Slice: len out of range"))
	}
	return Slice{data: data, len: n, cap: n}
}
