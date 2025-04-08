/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package syscall

import (
	errorsPkg "errors"
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

const (
	LLGoPackage = "noinit"
)

var (
	ErrInvalid     = errorsPkg.New("invalid argument")
	ErrPermission  = errorsPkg.New("permission denied")
	ErrExist       = errorsPkg.New("file already exists")
	ErrNotExist    = errorsPkg.New("file does not exist")
	ErrClosed      = errorsPkg.New("file already closed")
	ErrUnsupported = errorsPkg.New("operation not supported")
)

// Nano returns the time stored in ts as nanoseconds.
func (ts *Timespec) Nano() int64 {
	return int64(ts.Sec)*1e9 + int64(ts.Nsec)
}

// Nano returns the time stored in tv as nanoseconds.
func (tv *Timeval) Nano() int64 {
	return int64(tv.Sec)*1e9 + int64(tv.Usec)*1000
}

// Unix returns the time stored in ts as seconds plus nanoseconds.
func (ts *Timespec) Unix() (sec int64, nsec int64) {
	return int64(ts.Sec), int64(ts.Nsec)
}

// Unix returns the time stored in tv as seconds plus nanoseconds.
func (tv *Timeval) Unix() (sec int64, nsec int64) {
	return int64(tv.Sec), int64(tv.Usec) * 1000
}

//go:linkname c_getpid C.getpid
func c_getpid() c.Int

func Kill(pid int, signum Signal) error {
	// WASI does not have the notion of processes nor signal handlers.
	//
	// Any signal that the application raises to the process itself will
	// be interpreted as being cause for termination.
	if pid > 0 && pid != int(c_getpid()) {
		return ESRCH
	}
	ProcExit(128 + int32(signum))
	return nil
}

func ProcExit(code int32) {
	panic("not implemented")
}
