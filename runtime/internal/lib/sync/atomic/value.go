// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package atomic

import (
	"unsafe"
)

type Value struct {
	// Publish immutable cells atomically so readers and GC never observe a
	// partially initialized interface header.
	pad [2]unsafe.Pointer
}

// efaceWords is interface{} internal representation.
type efaceWords struct {
	typ  unsafe.Pointer
	data unsafe.Pointer
}

type valueCell struct {
	val any
}

func valueCellType(cell *valueCell) unsafe.Pointer {
	return (*efaceWords)(unsafe.Pointer(&cell.val)).typ
}

// Load returns the value set by the most recent Store.
// It returns nil if there has been no call to Store for this Value.
func (v *Value) Load() (val any) {
	cell := (*valueCell)(LoadPointer(&v.pad[0]))
	if cell == nil {
		return nil
	}
	return cell.val
}

// Store sets the value of the Value v to val.
// All calls to Store for a given Value must use values of the same concrete type.
// Store of an inconsistent type panics, as does Store(nil).
func (v *Value) Store(val any) {
	if val == nil {
		panic("sync/atomic: store of nil value into Value")
	}
	newCell := &valueCell{val: val}
	newType := valueCellType(newCell)
	for {
		oldPtr := LoadPointer(&v.pad[0])
		if oldPtr == nil {
			if CompareAndSwapPointer(&v.pad[0], nil, unsafe.Pointer(newCell)) {
				return
			}
			continue
		}
		oldCell := (*valueCell)(oldPtr)
		if valueCellType(oldCell) != newType {
			panic("sync/atomic: store of inconsistently typed value into Value")
		}
		StorePointer(&v.pad[0], unsafe.Pointer(newCell))
		return
	}
}

func typeOfValue(val any) unsafe.Pointer {
	return (*efaceWords)(unsafe.Pointer(&val)).typ
}

func valuePointer(v *Value) *unsafe.Pointer {
	return &v.pad[0]
}

func loadValuePointer(v *Value) unsafe.Pointer {
	return LoadPointer(valuePointer(v))
}

func compareAndSwapValuePointer(v *Value, old, new unsafe.Pointer) bool {
	return CompareAndSwapPointer(valuePointer(v), old, new)
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
	newCell := &valueCell{val: new}
	newType := valueCellType(newCell)
	for {
		oldPtr := loadValuePointer(v)
		if oldPtr == nil {
			if compareAndSwapValuePointer(v, nil, unsafe.Pointer(newCell)) {
				return nil
			}
			continue
		}
		oldCell := (*valueCell)(oldPtr)
		old = oldCell.val
		if valueCellType(oldCell) != newType {
			panic("sync/atomic: swap of inconsistently typed value into Value")
		}
		if compareAndSwapValuePointer(v, oldPtr, unsafe.Pointer(newCell)) {
			return
		}
	}
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
	newCell := &valueCell{val: new}
	newType := valueCellType(newCell)
	oldType := typeOfValue(old)
	if oldType != nil && oldType != newType {
		panic("sync/atomic: compare and swap of inconsistently typed values")
	}
	for {
		curPtr := loadValuePointer(v)
		if curPtr == nil {
			if old != nil {
				return false
			}
			if compareAndSwapValuePointer(v, nil, unsafe.Pointer(newCell)) {
				return true
			}
			continue
		}
		curCell := (*valueCell)(curPtr)
		curVal := curCell.val
		if valueCellType(curCell) != newType {
			panic("sync/atomic: compare and swap of inconsistently typed value into Value")
		}
		if curVal != old {
			return false
		}
		if compareAndSwapValuePointer(v, curPtr, unsafe.Pointer(newCell)) {
			return true
		}
	}
}
