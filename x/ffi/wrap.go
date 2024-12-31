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

	"github.com/goplus/llgo/internal/abi"
)

var (
	ffiTypeClosure = StructOf(TypePointer, TypePointer)
)

type eface struct {
	typ  *abi.Type
	data unsafe.Pointer
}

func rtypeOf(i any) *abi.Type {
	e := *(*eface)(unsafe.Pointer(&i))
	return e.typ
}

func WrapFunc(fn interface{}, wrap interface{}) unsafe.Pointer {
	e := (*eface)(unsafe.Pointer(&fn))
	if !e.typ.IsClosure() {
		panic("invalid func")
	}
	ftyp := e.typ.StructType().Fields[0].Typ.FuncType()
	sig, err := toFFISig(ftyp.In, ftyp.Out)
	if err != nil {
		panic(err)
	}
	wf := newWrapFunc(wrap)
	c := NewClosure()
	if len(ftyp.Out) == 0 {
		c.Bind(sig, func(cif *Signature, ret unsafe.Pointer, args *unsafe.Pointer, userdata unsafe.Pointer) {
			wf := (*wrapFunc)(userdata)
			wf.CallNoRet(args)
		}, unsafe.Pointer(wf))
	} else {
		c.Bind(sig, func(cif *Signature, ret unsafe.Pointer, args *unsafe.Pointer, userdata unsafe.Pointer) {
			wf := (*wrapFunc)(userdata)
			wf.Call(ret, args)
		}, unsafe.Pointer(wf))
	}
	return c.Fn
}

type wrapFunc struct {
	sig  *Signature
	ftyp *abi.FuncType
	fn   unsafe.Pointer
	args []unsafe.Pointer
	n    int
}

func (p *wrapFunc) Call(ret unsafe.Pointer, pargs *unsafe.Pointer) {
	args := unsafe.Slice(pargs, p.n-2)
	for i := 0; i < p.n-2; i++ {
		p.args[i+1] = unsafe.Pointer(&args[i])
	}
	p.args[p.n-1] = unsafe.Pointer(&ret)
	Call(p.sig, p.fn, nil, p.args...)
}

func (p *wrapFunc) CallNoRet(pargs *unsafe.Pointer) {
	args := unsafe.Slice(pargs, p.n-1)
	for i := 0; i < p.n-1; i++ {
		p.args[i+1] = unsafe.Pointer(&args[i])
	}
	Call(p.sig, p.fn, nil, p.args...)
}

func newWrapFunc(fn interface{}) *wrapFunc {
	e := (*eface)(unsafe.Pointer(&fn))
	if !e.typ.IsClosure() {
		panic("invalid wrap func")
	}
	ftyp := e.typ.StructType().Fields[0].Typ.FuncType()
	sig, err := toFFISig(append([]*abi.Type{unsafePointerType}, ftyp.In...), ftyp.Out)
	if err != nil {
		panic(err)
	}
	c := (*struct {
		fn  unsafe.Pointer
		env unsafe.Pointer
	})(e.data)
	n := len(ftyp.In) + 1
	args := make([]unsafe.Pointer, n)
	args[0] = unsafe.Pointer(&c.env)
	return &wrapFunc{sig, ftyp, c.fn, args, n}
}

var (
	unsafePointerType = rtypeOf(unsafe.Pointer(nil))
)

func toFFIType(typ *abi.Type) *Type {
	kind := typ.Kind()
	switch kind {
	case abi.Bool, abi.Int, abi.Int8, abi.Int16, abi.Int32, abi.Int64,
		abi.Uint, abi.Uint8, abi.Uint16, abi.Uint32, abi.Uint64, abi.Uintptr,
		abi.Float32, abi.Float64, abi.Complex64, abi.Complex128:
		return Typ[kind]
	case abi.Array:
		st := typ.ArrayType()
		return ArrayOf(toFFIType(st.Elem), int(st.Len))
	case abi.Chan:
		return TypePointer
	case abi.Func:
		return ffiTypeClosure
	case abi.Interface:
		return TypeInterface
	case abi.Map:
		return TypePointer
	case abi.Pointer:
		return TypePointer
	case abi.Slice:
		return TypeSlice
	case abi.String:
		return TypeString
	case abi.Struct:
		st := typ.StructType()
		fields := make([]*Type, len(st.Fields))
		for i, fs := range st.Fields {
			fields[i] = toFFIType(fs.Typ)
		}
		return StructOf(fields...)
	case abi.UnsafePointer:
		return TypePointer
	}
	panic("ffi.toFFIType unsupport type " + typ.String())
}

func toFFISig(tin, tout []*abi.Type) (*Signature, error) {
	args := make([]*Type, len(tin))
	for i, in := range tin {
		args[i] = toFFIType(in)
	}
	var ret *Type
	switch n := len(tout); n {
	case 0:
		ret = TypeVoid
	case 1:
		ret = toFFIType(tout[0])
	default:
		fields := make([]*Type, n)
		for i, out := range tout {
			fields[i] = toFFIType(out)
		}
		ret = StructOf(fields...)
	}
	return NewSignature(ret, args...)
}
