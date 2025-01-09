// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Process etc.

package os

import (
	"runtime"
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/os"
)

// Args hold the command-line arguments, starting with the program name.
var Args []string

func init() {
	if runtime.GOOS == "windows" {
		// TODO(xsw): check windows implementation
		// Initialized in exec_windows.go.
		return
	}
	Args = runtimeArgs(int(c.Argc), c.Argv)
}

func runtimeArgs(argc int, argv **c.Char) []string {
	args := make([]string, argc)
	for i := 0; i < argc; i++ {
		arg := *c.Advance(argv, i)
		args[i] = unsafe.String((*byte)(unsafe.Pointer(arg)), c.Strlen(arg))
	}
	return args
}

// Getgroups returns a list of the numeric ids of groups that the caller belongs to.
//
// On Windows, it returns syscall.EWINDOWS. See the os/user package
// for a possible alternative.
func Getgroups() ([]int, error) {
	/* TODO(xsw):
	gids, e := syscall.Getgroups()
	return gids, NewSyscallError("getgroups", e)
	*/
	panic("todo: os.Getgroups")
}

// Exit causes the current program to exit with the given status code.
// Conventionally, code zero indicates success, non-zero an error.
// The program terminates immediately; deferred functions are not run.
//
// For portability, the status code should be in the range [0, 125].
func Exit(code int) {
	// Inform the runtime that os.Exit is being called. If -race is
	// enabled, this will give race detector a chance to fail the
	// program (racy programs do not have the right to finish
	// successfully). If coverage is enabled, then this call will
	// enable us to write out a coverage data file.
	// TODO(xsw):
	// runtime_beforeExit(code)

	os.Exit(c.Int(code))
}
