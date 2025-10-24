// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/clite/debug"
)

func Caller(skip int) (pc uintptr, file string, line int, ok bool) {
	found := false
	debug.StackTrace(skip+1, func(fr *debug.Frame) bool {
		pc = fr.PC
		file = fr.Name
		line = 0 // Line number not available from current debug info
		ok = true
		found = true
		return false // Stop after first frame
	})
	return pc, file, line, found
}

func Callers(skip int, pc []uintptr) int {
	if len(pc) == 0 {
		return 0
	}
	n := 0
	debug.StackTrace(skip, func(fr *debug.Frame) bool {
		if n >= len(pc) {
			return false
		}
		pc[n] = fr.PC
		n++
		return true
	})
	return n
}

// NumCPU returns the number of logical CPUs usable by the current process.
func NumCPU() int {
	// For now, return 1 as a simple implementation
	// TODO: implement proper CPU detection
	return 1
}

// Gosched yields the processor, allowing other goroutines to run.
func Gosched() {
	// TODO: implement goroutine scheduling
}

// NumCgoCall returns the number of cgo calls made by the current process.
func NumCgoCall() int64 {
	return 0
}

// Breakpoint executes a breakpoint trap.
func Breakpoint() {
	// TODO: implement breakpoint
}

// SetCgoTraceback records three C functions to use to gather
// traceback information from C code and to convert that traceback
// information into symbolic information.
func SetCgoTraceback(version int, traceback, context, symbolizer unsafe.Pointer) {
	// TODO: implement cgo traceback
}

// CPUProfile returns the next chunk of binary CPU profiling stack trace data.
func CPUProfile() []byte {
	return nil
}

// GoroutineProfile returns n, the number of records in the active goroutine stack profile.
func GoroutineProfile(p []StackRecord) (n int, ok bool) {
	// TODO: implement goroutine profiling
	return 0, true
}

// BlockProfile returns n, the number of records in the current blocking profile.
func BlockProfile(p []BlockProfileRecord) (n int, ok bool) {
	// TODO: implement block profiling
	return 0, true
}

// MutexProfile returns n, the number of records in the current mutex profile.
func MutexProfile(p []BlockProfileRecord) (n int, ok bool) {
	// TODO: implement mutex profiling
	return 0, true
}

// ThreadCreateProfile returns n, the number of records in the thread creation profile.
func ThreadCreateProfile(p []StackRecord) (n int, ok bool) {
	// TODO: implement thread creation profiling
	return 0, true
}

// NumGoroutine returns the number of goroutines that currently exist.
func NumGoroutine() int {
	// TODO: implement goroutine counting
	return 1
}

// MemProfile returns a profile of memory allocations.
func MemProfile(p []MemProfileRecord, inuseZero bool) (n int, ok bool) {
	// TODO: implement memory profiling
	return 0, true
}

// SetCPUProfileRate sets the CPU profiling rate.
func SetCPUProfileRate(hz int) {
	// TODO: implement CPU profile rate setting
}

// LockOSThread wires the calling goroutine to its current operating system thread.
func LockOSThread() {
	// TODO: implement OS thread locking
}

// UnlockOSThread undoes an earlier call to LockOSThread.
func UnlockOSThread() {
	// TODO: implement OS thread unlocking
}
