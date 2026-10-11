//go:build windows

/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
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

// Package thread exposes the hosted runtime's native thread and TLS backend.
package thread

import (
	_ "unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
)

//llgo:type C
type RoutineFunc func(c.Pointer) c.Pointer

//llgo:type C
type KeyDestructor func(c.Pointer)

type Key struct {
	index      c.Uint
	destructor KeyDestructor
}

const invalidKey = ^c.Uint(0)

//go:linkname createDetached C.llgo_win_thread_create_detached
func createDetached(stackSize uintptr, routine RoutineFunc, arg c.Pointer) c.Int

//go:linkname exit C.llgo_win_thread_exit
func exit()

// Yield lets another runnable host thread execute.
//
//go:linkname Yield C.llgo_win_thread_yield
func Yield()

//go:linkname exitProcess C.llgo_win_thread_exit_process
func exitProcess(code c.Uint)

//go:linkname keyCreate C.llgo_win_fls_create
func keyCreate(index *c.Uint) c.Int

//go:linkname keyDelete C.llgo_win_fls_delete
func keyDelete(index c.Uint) c.Int

//go:linkname keyGet C.llgo_win_fls_get
func keyGet(index c.Uint) c.Pointer

//go:linkname keySet C.llgo_win_fls_set
func keySet(index c.Uint, destructor KeyDestructor, value c.Pointer) c.Int

// CreateDetached starts a detached host thread. GC-enabled builds select the
// collector's CRT-aware entry point; nogc builds select CreateThread.
// The collector's entry point takes a 32-bit stack size, so GC-enabled builds
// reject stackSize > 0xffffffff bytes with a nonzero return.
func CreateDetached(stackSize uintptr, routine RoutineFunc, arg c.Pointer) c.Int {
	return createDetached(stackSize, routine, arg)
}

func Exit() {
	exit()
}

// ExitProcess terminates the current process without DLL or FLS teardown.
// Such callbacks can deadlock after Windows has killed their lock owners.
func ExitProcess(code uint32) {
	exitProcess(c.Uint(code))
}

func (key *Key) Create(destructor KeyDestructor) c.Int {
	key.index = invalidKey
	if ret := keyCreate(&key.index); ret != 0 {
		return ret
	}
	key.destructor = destructor
	return 0
}

func (key Key) Delete() c.Int {
	if key.index == invalidKey {
		return 0
	}
	return keyDelete(key.index)
}

func (key Key) Get() c.Pointer {
	if key.index == invalidKey {
		return nil
	}
	return keyGet(key.index)
}

func (key Key) Set(value c.Pointer) c.Int {
	if key.index == invalidKey {
		return 87 // ERROR_INVALID_PARAMETER
	}
	return keySet(key.index, key.destructor, value)
}
