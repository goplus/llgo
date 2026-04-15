// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Garbage collector: finalizers and block profiling.

package runtime

import (
	"unsafe"
)

type finalizerFuncValue struct {
	fn  unsafe.Pointer
	ctx unsafe.Pointer
}

type registeredFinalizer struct {
	fn  uintptr
	ctx uintptr
	obj uintptr
}

var finalizerQueue []registeredFinalizer

//go:linkname c_call_finalizer C.llgo_call_finalizer
func c_call_finalizer(fn, ctx, obj unsafe.Pointer)

func SetFinalizer(obj any, finalizer any) {
	if obj == nil || finalizer == nil {
		return
	}
	ptr := (*eface)(unsafe.Pointer(&obj)).data
	fnData := (*eface)(unsafe.Pointer(&finalizer)).data
	if ptr == nil || fnData == nil {
		return
	}
	fn := (*finalizerFuncValue)(fnData)
	fnAddr := uintptr(fn.fn)
	ctxAddr := uintptr(fn.ctx)
	ptrAddr := uintptr(ptr) ^ 0xffff // hide obj from the cleanup closure.
	finalizerQueue = append(finalizerQueue, registeredFinalizer{fnAddr, ctxAddr, ptrAddr})
}

func runQueuedFinalizers() {
	queue := finalizerQueue
	finalizerQueue = nil
	for _, f := range queue {
		c_call_finalizer(unsafe.Pointer(f.fn), unsafe.Pointer(f.ctx), unsafe.Pointer(f.obj^0xffff))
	}
}
