//go:build !testGC

package tinygogc

import (
	"unsafe"
	_ "unsafe"
)

//go:linkname getsp llgo.stackSave
func getsp() unsafe.Pointer

// when executing initGC(), we must ensure there's no any allocations.
// use linking here to avoid import clite
//
//go:linkname memset C.memset
func memset(unsafe.Pointer, int, uintptr) unsafe.Pointer

//go:linkname memcpy C.memcpy
func memcpy(unsafe.Pointer, unsafe.Pointer, uintptr)

//go:linkname _heapStart _heapStart
var _heapStart [0]byte

//go:linkname _heapEnd _heapEnd
var _heapEnd [0]byte

//go:linkname _stackStart _stack_top
var _stackStart [0]byte

//go:linkname _stackEnd _stack_end
var _stackEnd [0]byte

//go:linkname _globals_start _globals_start
var _globals_start [0]byte

//go:linkname _globals_end _globals_end
var _globals_end [0]byte
