//go:build testGC

package tinygogc

import (
	_ "unsafe"
)

var currentStack uintptr

func getsp() uintptr {
	return currentStack
}

var _heapStart byte

var _heapEnd byte

var _stackStart byte

var _stackEnd byte

var _globals_start byte

var _globals_end byte
