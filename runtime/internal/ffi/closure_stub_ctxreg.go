//go:build llgo_pass_ctx_by_reg
// +build llgo_pass_ctx_by_reg

package ffi

import (
	"sync"
	"unsafe"
)

type closureStubKey struct {
	fn         unsafe.Pointer
	env        unsafe.Pointer
	stackBytes uint32
}

var (
	closureStubMu    sync.Mutex
	closureStubCache = map[closureStubKey]unsafe.Pointer{}
)

// WrapClosure returns a function pointer that can be called via libffi under
// ctx-reg closure ABI.
//
// For plain functions (env == nil) it returns fn directly.
// For closures it returns (stub, true) when supported, otherwise (nil, false)
// so callers may fall back to other strategies.
func WrapClosure(fn, env unsafe.Pointer, stackBytes uint32) (unsafe.Pointer, bool) {
	if env == nil {
		return fn, true
	}
	key := closureStubKey{fn: fn, env: env, stackBytes: stackBytes}

	closureStubMu.Lock()
	defer closureStubMu.Unlock()
	if p, ok := closureStubCache[key]; ok {
		return p, true
	}
	p := makeClosureStub(fn, env, stackBytes)
	if p != nil {
		closureStubCache[key] = p
		return p, true
	}
	return nil, false
}
