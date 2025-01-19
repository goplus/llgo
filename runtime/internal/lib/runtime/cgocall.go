package runtime

import "unsafe"

func cgocallbackg(fn, frame unsafe.Pointer, ctxt uintptr) {
	panic("todo: cgocallbackg")
}

// Addresses collected in a cgo backtrace when crashing.
// Length must match arg.Max in x_cgo_callers in runtime/cgo/gcc_traceback.c.
type cgoCallers [32]uintptr
