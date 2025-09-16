//go:build testGC

package tinygogc

import (
	"unsafe"
	_ "unsafe"
)

var currentStack uintptr

func getsp() uintptr {
	return currentStack
}

var _heapStart [0]byte

var _heapEnd [0]byte

var _stackStart [0]byte

var _globals_start [0]byte

var _globals_end [0]byte

//go:linkname memclrNoHeapPointers runtime.memclrNoHeapPointers
func memclrNoHeapPointers(unsafe.Pointer, uintptr) unsafe.Pointer

//go:linkname memcpy runtime.memmove
func memcpy(to unsafe.Pointer, from unsafe.Pointer, size uintptr)

func memset(ptr unsafe.Pointer, n int, size uintptr) unsafe.Pointer {
	memclrNoHeapPointers(ptr, size)
	return ptr
}
