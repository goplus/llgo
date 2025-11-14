//go:build testGC

package tinygogc

import (
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
