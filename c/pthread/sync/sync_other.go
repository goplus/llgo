//go:build !linux && !darwin

package sync

const (
	PthreadOnceSize       = 4
	PthreadMutexSize      = 40
	PthreadMutexAttrSize  = 4
	PthreadCondSize       = 48
	PthreadCondAttrSize   = 4
	PthreadRWLockSize     = 56
	PthreadRWLockAttrSize = 8
)
