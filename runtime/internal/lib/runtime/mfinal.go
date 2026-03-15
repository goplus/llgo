// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Garbage collector: finalizers and block profiling.

package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/abi"
	"github.com/goplus/llgo/runtime/internal/ffi"
	psync "github.com/goplus/llgo/runtime/internal/clite/pthread/sync"
	iruntime "github.com/goplus/llgo/runtime/internal/runtime"
)

type finalizerClosure struct {
	fn  unsafe.Pointer
	env unsafe.Pointer
}

var (
	finalizerInitOnce psync.Once
	finalizerMu       psync.Mutex
	finalizerCancels  map[uintptr]func()
	finalizerSig      *ffi.Signature
)

func ensureFinalizerInit() {
	finalizerInitOnce.Do(func() {
		finalizerMu.Init(nil)
		finalizerCancels = make(map[uintptr]func())
		sig, err := ffi.NewSignature(ffi.TypeVoid, ffi.TypePointer, ffi.TypePointer)
		if err != nil {
			panic(err)
		}
		finalizerSig = sig
	})
}

func cancelFinalizer(key uintptr) {
	finalizerMu.Lock()
	cancel := finalizerCancels[key]
	delete(finalizerCancels, key)
	finalizerMu.Unlock()
	if cancel != nil {
		cancel()
	}
}

func finalizerFunc(v any) finalizerClosure {
	e := (*eface)(unsafe.Pointer(&v))
	if e._type == nil {
		return finalizerClosure{}
	}
	if !e._type.IsClosure() {
		panic("runtime.SetFinalizer: second argument is not a function")
	}
	ft := e._type.StructType().Fields[0].Typ.FuncType()
	if len(ft.In) != 1 || ft.In[0] == nil {
		panic("runtime.SetFinalizer: second argument must be func(*T)")
	}
	return *(*finalizerClosure)(e.data)
}

func SetFinalizer(obj any, finalizer any) {
	objType := typeOf(obj)
	if objType == nil || objType.Kind() != abi.Pointer {
		panic("runtime.SetFinalizer: first argument must be pointer")
	}
	objPtr := (*eface)(unsafe.Pointer(&obj)).data
	if objPtr == nil {
		return
	}

	ensureFinalizerInit()
	key := uintptr(objPtr) ^ 0xffff
	cancelFinalizer(key)

	if typeOf(finalizer) == nil {
		return
	}
	fn := finalizerFunc(finalizer)

	objWord := key
	var cancel func()
	invoke := func() {
		cancelFinalizer(objWord)
		env := fn.env
		arg := unsafe.Pointer(objWord ^ 0xffff)
		ffi.Call(finalizerSig, fn.fn, nil, unsafe.Pointer(&env), unsafe.Pointer(&arg))
	}
	cancel = iruntime.AddCleanupPtr(objPtr, invoke)

	finalizerMu.Lock()
	finalizerCancels[key] = cancel
	finalizerMu.Unlock()
}
