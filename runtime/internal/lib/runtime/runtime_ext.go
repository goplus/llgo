// Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package runtime

// PanicNilError is returned by recover when the argument to panic is nil.
type PanicNilError struct{}

func (e *PanicNilError) Error() string {
	return "panic called with nil argument"
}

func (e *PanicNilError) RuntimeError() {}

// A TypeAssertionError explains a failed type assertion.
type TypeAssertionError struct {
	_interface    *_type
	concrete      *_type
	asserted      *_type
	missingMethod string
}

type _type struct{}

func (e *TypeAssertionError) Error() string {
	return "interface conversion: type assertion failed"
}

func (e *TypeAssertionError) RuntimeError() {}

// StackRecord describes a single execution stack.
type StackRecord struct {
	Stack0 [32]uintptr // stack trace for this record; ends at first 0 entry
}

// Stack returns the stack trace associated with the record,
// a prefix of r.Stack0.
func (r *StackRecord) Stack() []uintptr {
	for i, v := range r.Stack0 {
		if v == 0 {
			return r.Stack0[0:i]
		}
	}
	return r.Stack0[0:]
}

// MemProfileRecord describes the live objects allocated
// by a particular call sequence (stack trace).
type MemProfileRecord struct {
	AllocBytes, FreeBytes     int64       // number of bytes allocated, freed
	AllocObjects, FreeObjects int64       // number of objects allocated, freed
	Stack0                    [32]uintptr // stack trace for this record; ends at first 0 entry
}

// InUseBytes returns the number of bytes in use (AllocBytes - FreeBytes).
func (r *MemProfileRecord) InUseBytes() int64 {
	return r.AllocBytes - r.FreeBytes
}

// InUseObjects returns the number of objects in use (AllocObjects - FreeObjects).
func (r *MemProfileRecord) InUseObjects() int64 {
	return r.AllocObjects - r.FreeObjects
}

// Stack returns the stack trace associated with the record,
// a prefix of r.Stack0.
func (r *MemProfileRecord) Stack() []uintptr {
	for i, v := range r.Stack0 {
		if v == 0 {
			return r.Stack0[0:i]
		}
	}
	return r.Stack0[0:]
}

// FileLine returns the file name and line number of the
// source code corresponding to the program counter pc.
func (f *Func) FileLine(pc uintptr) (file string, line int) {
	// TODO: implement using debug info
	return "", 0
}

// Entry returns the entry address of the function.
func (f *Func) Entry() uintptr {
	// TODO: implement using debug info
	return 0
}

// A Pinner is a set of pinned Go objects.
type Pinner struct {
	// unexported fields
}

// Pin pins a Go object, preventing it from being moved or freed by the garbage collector
// until the Pinner is unpinned.
func (p *Pinner) Pin(pointer any) {
	// TODO: implement object pinning
}

// Unpin unpins all pinned objects of the Pinner.
func (p *Pinner) Unpin() {
	// TODO: implement object unpinning
}

// BlockProfileRecord describes blocking events.
type BlockProfileRecord struct {
	Count  int64
	Cycles int64
	StackRecord
}

// FuncForPC returns a *Func describing the function that contains the given program counter address.
func FuncForPC(pc uintptr) *Func {
	// TODO: implement using debug info
	return nil
}
