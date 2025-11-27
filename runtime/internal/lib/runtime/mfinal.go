// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Garbage collector: finalizers and block profiling.

package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/runtime"
)

func SetFinalizer(obj any, finalizer any) {
	// TODO(xsw):
	// panic("todo: runtime.SetFinalizer")
}

func addCleanupPtr(ptr unsafe.Pointer, fn func()) (cancel func()) {
	return runtime.AddCleanupPtr(ptr, fn)
}
