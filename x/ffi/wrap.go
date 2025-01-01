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

// MakeFunc make go func/closure to c func ptr
func MakeFunc(fn interface{}) unsafe.Pointer {
	e := (*eface)(unsafe.Pointer(&fn))
	var ftyp *abi.FuncType
	if e.typ.Kind() == abi.Func {
		ftyp = e.typ.FuncType()
	} else if e.typ.IsClosure() {
		ftyp = e.typ.StructType().Fields[0].Typ.FuncType()
	} else {
		panic("invalid func")
	}
	sig, err := toFFISig(ftyp.In, ftyp.Out)
	if err != nil {
		panic(err)
	}
	wf := newMakeFunc(fn)
	c := NewClosure()
	c.Bind(sig, func(cif *Signature, ret unsafe.Pointer, args *unsafe.Pointer, userdata unsafe.Pointer) {
		wf := (*makeFunc)(userdata)
		wf.Call(ret, args)
	}, unsafe.Pointer(wf))
	return c.Fn
}

// WrapFunc wrap go func to c func ptr by fn type
func WrapFunc(fn interface{}, wrap WrapperFunc) unsafe.Pointer {
	e := (*eface)(unsafe.Pointer(&fn))
	var ftyp *abi.FuncType
	if e.typ.Kind() == abi.Func {
		ftyp = e.typ.FuncType()
	} else if e.typ.IsClosure() {
		ftyp = e.typ.StructType().Fields[0].Typ.FuncType()
	} else {
		panic("invalid func")
	}
	return WrapFuncType(ftyp, wrap)
}

// WrapFuncType wrap go func to c func ptr by ftyp
func WrapFuncType(ftyp *abi.FuncType, wrap WrapperFunc) unsafe.Pointer {
	sig, err := toFFISig(ftyp.In, ftyp.Out)
	if err != nil {
		panic(err)
	}
	wf := &wrapFunc{wrap, len(ftyp.In)}
	c := NewClosure()
	c.Bind(sig, func(cif *Signature, ret unsafe.Pointer, args *unsafe.Pointer, userdata unsafe.Pointer) {
		wf := (*wrapFunc)(userdata)
		wf.fn(ret, unsafe.Slice(args, wf.nargs))
	}, unsafe.Pointer(wf))
	return c.Fn
}

// llgo:type C
type WrapperFunc func(ret unsafe.Pointer, args []unsafe.Pointer)

type wrapFunc struct {
	fn    WrapperFunc
	nargs int
}

type makeFunc struct {
	sig  *Signature
	ftyp *abi.FuncType
	fn   unsafe.Pointer
	args []unsafe.Pointer
	n    int
}

func (p *makeFunc) Call(ret unsafe.Pointer, pargs *unsafe.Pointer) {
	args := unsafe.Slice(pargs, p.n-1)
	copy(p.args[1:], args)
	Call(p.sig, p.fn, ret, p.args...)
}

func newMakeFunc(fn interface{}) *makeFunc {
	e := (*eface)(unsafe.Pointer(&fn))
	if !e.typ.IsClosure() {
		panic("invalid make func")
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
	return &makeFunc{sig, ftyp, c.fn, args, n}
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
