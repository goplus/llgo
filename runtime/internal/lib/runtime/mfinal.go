// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Garbage collector: finalizers and block profiling.

package runtime

import (
	"github.com/goplus/llgo/runtime/abi"
	"unsafe"

	psync "github.com/goplus/llgo/runtime/internal/clite/pthread/sync"
	"github.com/goplus/llgo/runtime/internal/ffi"
	iruntime "github.com/goplus/llgo/runtime/internal/runtime"
)

type finalizerClosure struct {
	fn  unsafe.Pointer
	env unsafe.Pointer
}

type finalizerKey struct {
	a uintptr
	b uintptr
}

func mixFinalizerKeyWord(x uintptr, salt uint64) uintptr {
	v := uint64(x) + salt
	v ^= v >> 30
	v *= 0xbf58476d1ce4e5b9
	v ^= v >> 27
	v *= 0x94d049bb133111eb
	v ^= v >> 31
	return uintptr(v)
}

func makeFinalizerKey(objPtr unsafe.Pointer) finalizerKey {
	x := uintptr(objPtr)
	return finalizerKey{
		a: mixFinalizerKeyWord(x, 0x9e3779b97f4a7c15),
		b: mixFinalizerKeyWord(x, 0x243f6a8885a308d3),
	}
}

var (
	finalizerInitOnce psync.Once
	finalizerMu       psync.Mutex
	finalizerCancels  map[finalizerKey]func()
)

func ensureFinalizerInit() {
	finalizerInitOnce.Do(func() {
		finalizerMu.Init(nil)
		finalizerCancels = make(map[finalizerKey]func())
	})
}

func cancelFinalizer(key finalizerKey) {
	finalizerMu.Lock()
	cancel := finalizerCancels[key]
	delete(finalizerCancels, key)
	finalizerMu.Unlock()
	if cancel != nil {
		cancel()
	}
}

func finalizerFunc(v any) (finalizerClosure, *ffi.Signature) {
	e := (*eface)(unsafe.Pointer(&v))
	if e._type == nil {
		return finalizerClosure{}, nil
	}
	if !e._type.IsClosure() {
		panic("runtime.SetFinalizer: second argument is not a function")
	}
	ft := e._type.StructType().Fields[0].Typ.FuncType()
	if len(ft.In) != 1 || ft.In[0] == nil {
		panic("runtime.SetFinalizer: second argument must be func(*T)")
	}
	sig, err := ffi.NewSignature(finalizerFFIRetType(ft.Out), ffi.TypePointer, finalizerFFIType(ft.In[0]))
	if err != nil {
		panic(err)
	}
	return *(*finalizerClosure)(e.data), sig
}

func setFinalizer(objType *abi.Type, objPtr unsafe.Pointer, finalizer any) {
	if objType == nil || objType.Kind() != abi.Pointer {
		panic("runtime.SetFinalizer: first argument must be pointer")
	}
	if objPtr == nil {
		return
	}

	ensureFinalizerInit()
	key := makeFinalizerKey(objPtr)
	cancelFinalizer(key)

	if typeOf(finalizer) == nil {
		return
	}
	fn, sig := finalizerFunc(finalizer)
	fnptr := fn.fn
	env0 := fn.env
	invokeKey := key
	invokeFnptr := fnptr
	invokeEnv0 := env0
	invokeSig := sig

	var cancel func()
	invoke := func(p unsafe.Pointer) {
		cancelFinalizer(invokeKey)
		env := invokeEnv0
		arg := p
		var ret unsafe.Pointer
		if invokeSig.RType != ffi.TypeVoid {
			ret = iruntime.AllocZ(invokeSig.RType.Size)
		}
		ffi.Call(invokeSig, invokeFnptr, ret, unsafe.Pointer(&env), unsafe.Pointer(&arg))
	}
	cancel = iruntime.AddCleanupValuePtr(objPtr, objType.Elem().Size(), invoke)

	finalizerMu.Lock()
	finalizerCancels[key] = cancel
	finalizerMu.Unlock()

	objPtr = nil
	cancel = nil
	fnptr = nil
	env0 = nil
	sig = nil
	ClobberPointerRegs()
}

func SetFinalizer(obj any, finalizer any) {
	setFinalizer(typeOf(obj), (*eface)(unsafe.Pointer(&obj)).data, finalizer)
}

func SetFinalizerType(objType *abi.Type, obj unsafe.Pointer, finalizer any) {
	setFinalizer(objType, obj, finalizer)
}

func SetFinalizerTypeHidden(objType *abi.Type, obj uintptr, finalizer any) {
	setFinalizer(objType, iruntime.DecodeHiddenPointerKey(obj), finalizer)
}

func SetFinalizerTypeHiddenSlot(objType *abi.Type, obj *uintptr, finalizer any) {
	if obj == nil {
		return
	}
	key := *obj
	*obj = 0
	setFinalizer(objType, iruntime.DecodeHiddenPointerKey(key), finalizer)
	key = 0
	ClobberPointerRegs()
}

func SetFinalizerTypeHiddenSlotKeepalive(objType *abi.Type, obj *uintptr, finalizer any, keep *unsafe.Pointer) {
	if obj == nil {
		return
	}
	key := *obj
	*obj = 0
	ptr := iruntime.DecodeHiddenPointerKey(key)
	if keep != nil {
		*keep = ptr
	}
	setFinalizer(objType, ptr, finalizer)
	if keep != nil {
		*keep = nil
	}
	ptr = nil
	key = 0
	ClobberPointerRegs()
}

func finalizerFFIType(typ *abi.Type) *ffi.Type {
	if typ.IsClosure() {
		return ffi.ArrayOf(ffi.TypePointer, 2)
	}
	switch kind := typ.Kind(); kind {
	case abi.Bool, abi.Int, abi.Int8, abi.Int16, abi.Int32, abi.Int64,
		abi.Uint, abi.Uint8, abi.Uint16, abi.Uint32, abi.Uint64, abi.Uintptr,
		abi.Float32, abi.Float64, abi.Complex64, abi.Complex128:
		return ffi.Typ[kind]
	case abi.Array:
		at := typ.ArrayType()
		return ffi.ArrayOf(finalizerFFIType(at.Elem), int(at.Len))
	case abi.Chan, abi.Map, abi.Pointer, abi.UnsafePointer:
		return ffi.TypePointer
	case abi.Func:
		return ffi.ArrayOf(ffi.TypePointer, 2)
	case abi.Interface:
		return ffi.TypeInterface
	case abi.Slice:
		return ffi.TypeSlice
	case abi.String:
		return ffi.TypeString
	case abi.Struct:
		st := typ.StructType()
		fields := make([]*ffi.Type, 0, len(st.Fields))
		for _, fs := range st.Fields {
			if fs.Typ.Size() == 0 {
				continue
			}
			fields = append(fields, finalizerFFIType(fs.Typ))
		}
		if len(fields) == 0 {
			return ffi.TypeVoid
		}
		return ffi.StructOf(fields...)
	}
	panic("runtime.SetFinalizer: unsupported finalizer type " + typ.String())
}

func finalizerFFIRetType(tout []*abi.Type) *ffi.Type {
	switch len(tout) {
	case 0:
		return ffi.TypeVoid
	case 1:
		return finalizerFFIType(tout[0])
	default:
		fields := make([]*ffi.Type, len(tout))
		for i, out := range tout {
			fields[i] = finalizerFFIType(out)
		}
		return ffi.StructOf(fields...)
	}
}
