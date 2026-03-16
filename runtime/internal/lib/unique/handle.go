// Copyright 2024 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package unique

import (
	"github.com/goplus/llgo/runtime/abi"
	isync "internal/sync"
	"runtime"
	"sync"
	"unsafe"
	"weak"
)

var zero uintptr

// Handle is a globally unique identity for some value of type T.
//
// Two handles compare equal exactly if the two values used to create the handles
// would have also compared equal. The comparison of two handles is trivial and
// typically much more efficient than comparing the values used to create them.
type Handle[T comparable] struct {
	value *T
}

// Value returns a shallow copy of the T value that produced the Handle.
// Value is safe for concurrent use by multiple goroutines.
func (h Handle[T]) Value() T {
	return *h.value
}

// Make returns a globally unique handle for a value of type T. Handles
// are equal if and only if the values used to produce them are equal.
// Make is safe for concurrent use by multiple goroutines.
func Make[T comparable](value T) Handle[T] {
	typ := abi.TypeFor[T]()
	if typ.Size() == 0 {
		return Handle[T]{(*T)(unsafe.Pointer(&zero))}
	}
	ma, ok := uniqueMaps.Load(typ)
	if !ok {
		setupMake.Do(registerCleanup)
		ma = addUniqueMap[T](typ)
	}
	m := ma.(*uniqueMap[T])

	var (
		toInsert     *T
		toInsertWeak weak.Pointer[T]
	)
	newValue := func() (T, weak.Pointer[T]) {
		if toInsert == nil {
			toInsert = new(T)
			*toInsert = clone(value, &m.cloneSeq)
			toInsertWeak = weak.Make(toInsert)
		}
		return *toInsert, toInsertWeak
	}
	var ptr *T
	for {
		wp, ok := m.Load(value)
		if !ok {
			k, v := newValue()
			wp, _ = m.LoadOrStore(k, v)
		}
		ptr = wp.Value()
		if ptr != nil {
			break
		}
		m.CompareAndDelete(value, wp)
	}
	runtime.KeepAlive(toInsert)
	return Handle[T]{ptr}
}

var (
	uniqueMaps isync.HashTrieMap[*abi.Type, any]

	cleanupMu      sync.Mutex
	cleanupFuncsMu sync.Mutex
	cleanupFuncs   []func()
	cleanupNotify  []func()
)

type uniqueMap[T comparable] struct {
	isync.HashTrieMap[T, weak.Pointer[T]]
	cloneSeq
}

func addUniqueMap[T comparable](typ *abi.Type) *uniqueMap[T] {
	m := &uniqueMap[T]{cloneSeq: makeCloneSeq(typ)}
	a, loaded := uniqueMaps.LoadOrStore(typ, m)
	if !loaded {
		cleanupFuncsMu.Lock()
		cleanupFuncs = append(cleanupFuncs, func() {
			m.All()(func(key T, wp weak.Pointer[T]) bool {
				if wp.Value() == nil {
					m.CompareAndDelete(key, wp)
				}
				return true
			})
		})
		cleanupFuncsMu.Unlock()
	}
	return a.(*uniqueMap[T])
}

var setupMake sync.Once

func registerCleanup() {
	runtime_registerUniqueMapCleanup(func() {
		cleanupMu.Lock()

		cleanupFuncsMu.Lock()
		cf := cleanupFuncs
		cleanupFuncsMu.Unlock()

		for _, f := range cf {
			f()
		}

		for _, f := range cleanupNotify {
			f()
		}
		cleanupNotify = nil

		cleanupMu.Unlock()
	})
}

//go:linkname runtime_registerUniqueMapCleanup
func runtime_registerUniqueMapCleanup(cleanup func())
