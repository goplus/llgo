// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package atomic

import "unsafe"

type Value struct {
	lock uint32
	val  any
}

// efaceWords is interface{} internal representation.
type efaceWords struct {
	typ  unsafe.Pointer
	data unsafe.Pointer
}

func typeOfValue(val any) unsafe.Pointer {
	return (*efaceWords)(unsafe.Pointer(&val)).typ
}

func (v *Value) lockValue() {
	for !CompareAndSwapUint32(&v.lock, 0, 1) {
	}
}

func (v *Value) unlockValue() {
	StoreUint32(&v.lock, 0)
}

// Load returns the value set by the most recent Store.
// It returns nil if there has been no call to Store for this Value.
func (v *Value) Load() (val any) {
	v.lockValue()
	val = v.val
	v.unlockValue()
	return val
}

// Store sets the value of the Value v to val.
// All calls to Store for a given Value must use values of the same concrete type.
// Store of an inconsistent type panics, as does Store(nil).
func (v *Value) Store(val any) {
	if val == nil {
		panic("sync/atomic: store of nil value into Value")
	}
	newType := typeOfValue(val)
	v.lockValue()
	defer v.unlockValue()
	if oldType := typeOfValue(v.val); oldType != nil && oldType != newType {
		panic("sync/atomic: store of inconsistently typed value into Value")
	}
	v.val = val
}

// Swap stores new into Value and returns the previous value. It returns nil if
// the Value is empty.
//
// All calls to Swap for a given Value must use values of the same concrete
// type. Swap of an inconsistent type panics, as does Swap(nil).
func (v *Value) Swap(new any) (old any) {
	if new == nil {
		panic("sync/atomic: swap of nil value into Value")
	}
	newType := typeOfValue(new)
	v.lockValue()
	defer v.unlockValue()
	old = v.val
	if oldType := typeOfValue(old); oldType != nil && oldType != newType {
		panic("sync/atomic: swap of inconsistently typed value into Value")
	}
	v.val = new
	return old
}

// CompareAndSwap executes the compare-and-swap operation for the Value.
//
// All calls to CompareAndSwap for a given Value must use values of the same
// concrete type. CompareAndSwap of an inconsistent type panics, as does
// CompareAndSwap(old, nil).
func (v *Value) CompareAndSwap(old, new any) (swapped bool) {
	if new == nil {
		panic("sync/atomic: compare and swap of nil value into Value")
	}
	newType := typeOfValue(new)
	oldType := typeOfValue(old)
	if oldType != nil && oldType != newType {
		panic("sync/atomic: compare and swap of inconsistently typed values")
	}
	v.lockValue()
	defer v.unlockValue()
	cur := v.val
	if curType := typeOfValue(cur); curType == nil {
		if old != nil {
			return false
		}
		v.val = new
		return true
	}
	if typeOfValue(cur) != newType {
		panic("sync/atomic: compare and swap of inconsistently typed value into Value")
	}
	if cur != old {
		return false
	}
	v.val = new
	return true
}
