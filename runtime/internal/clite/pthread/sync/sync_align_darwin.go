//go:build darwin

package sync

type alignOnce = align8
type alignMutex = align8
type alignCond = align8
type alignMutexAttr = align8
type alignCondAttr = align8
type alignRWLock = align8
type alignRWLockAttr = align8
