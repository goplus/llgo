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

package ffi

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/ffi"
)

type Type = ffi.Type

type Signature = ffi.Cif

type Error int

func (s Error) Error() string {
	switch s {
	case ffi.OK:
		return "ok"
	case ffi.BAD_TYPEDEF:
		return "bad type def"
	case ffi.BAD_ABI:
		return "bad ABI"
	case ffi.BAD_ARGTYPE:
		return "bad argument type"
	}
	return "invalid status"
}

func NewSignature(ret *Type, args ...*Type) (*Signature, error) {
	var cif Signature
	var atype **Type
	if len(args) > 0 {
		atype = &args[0]
	}
	status := ffi.PrepCif(&cif, ffi.DefaultAbi, c.Uint(len(args)), ret, atype)
	if status == 0 {
		return &cif, nil
	}
	return nil, Error(status)
}

func NewSignatureVar(ret *Type, fixed int, args ...*Type) (*Signature, error) {
	var cif Signature
	var atype **Type
	if len(args) > 0 {
		atype = &args[0]
	}
	status := ffi.PrepCifVar(&cif, ffi.DefaultAbi, c.Uint(fixed), c.Uint(len(args)), ret, atype)
	if status == ffi.OK {
		return &cif, nil
	}
	return nil, Error(status)
}

func Call(cif *Signature, fn unsafe.Pointer, ret unsafe.Pointer, args ...unsafe.Pointer) {
	var avalues *unsafe.Pointer
	if len(args) > 0 {
		avalues = &args[0]
	}
	ffi.Call(cif, fn, ret, avalues)
}

type Closure struct {
	ptr unsafe.Pointer
	Fn  unsafe.Pointer
}

func NewClosure() *Closure {
	c := &Closure{}
	c.ptr = ffi.ClosureAlloc(&c.Fn)
	return c
}

func (c *Closure) Free() {
	if c != nil && c.ptr != nil {
		ffi.ClosureFree(c.ptr)
		c.ptr = nil
	}
}

func (c *Closure) Bind(cif *Signature, fn ffi.ClosureFunc, userdata unsafe.Pointer) error {
	status := ffi.PreClosureLoc(c.ptr, cif, fn, userdata, c.Fn)
	if status == ffi.OK {
		return nil
	}
	return Error(status)
}

func Index(args *unsafe.Pointer, i uintptr) unsafe.Pointer {
	return ffi.Index(args, i)
}
