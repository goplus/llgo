package test

/*
#include <time.h>
#include <pthread.h>
#include <setjmp.h>
#include <sys/types.h>
*/
import "C"
import (
	"runtime"
	"unsafe"

	_ "github.com/goplus/llgo/c"
)

var mode C.mode_t
var uid C.uid_t
var gid C.gid_t
var off C.off_t
var dev C.dev_t

var once C.pthread_once_t
var mutex C.pthread_mutex_t
var cond C.pthread_cond_t
var rwlock C.pthread_rwlock_t
var mutexattr C.pthread_mutexattr_t
var condattr C.pthread_condattr_t
var rwlockattr C.pthread_rwlockattr_t
var clock C.clock_t
var sigjmpbuf C.sigjmp_buf
var jmpbuf C.jmp_buf

const (
	// Real sizes from the current platform
	pthreadOnceSizeReal       = unsafe.Sizeof(once)
	pthreadMutexSizeReal      = unsafe.Sizeof(mutex)
	pthreadMutexAttrSizeReal  = unsafe.Sizeof(mutexattr)
	pthreadCondSizeReal       = unsafe.Sizeof(cond)
	pthreadCondAttrSizeReal   = unsafe.Sizeof(condattr)
	pthreadRWLockSizeReal     = unsafe.Sizeof(rwlock)
	pthreadRWLockAttrSizeReal = unsafe.Sizeof(rwlockattr)
	clockSizeReal             = unsafe.Sizeof(clock)
	sigjmpBufSizeReal         = unsafe.Sizeof(sigjmpbuf)
	jmpBufSizeReal            = unsafe.Sizeof(jmpbuf)
)

// Linux amd64 specific sizes
var linuxAmd64 = runtime.GOOS == "linux" && runtime.GOARCH == "amd64"

// Linux arm64 specific sizes
var linuxArm64 = runtime.GOOS == "linux" && runtime.GOARCH == "arm64"

// macOS amd64 specific sizes
var darwinAmd64 = runtime.GOOS == "darwin" && runtime.GOARCH == "amd64"

// macOS arm64 specific sizes
var darwinArm64 = runtime.GOOS == "darwin" && runtime.GOARCH == "arm64"

const (
	// Linux amd64 pthread sizes
	pthreadOnceSizeLinuxAmd64       = 4
	pthreadMutexSizeLinuxAmd64      = 40
	pthreadMutexAttrSizeLinuxAmd64  = 4
	pthreadCondSizeLinuxAmd64       = 48
	pthreadCondAttrSizeLinuxAmd64   = 4
	pthreadRWLockSizeLinuxAmd64     = 56
	pthreadRWLockAttrSizeLinuxAmd64 = 8
	clockSizeLinuxAmd64             = 8
	sigjmpBufSizeLinuxAmd64         = 200
	jmpBufSizeLinuxAmd64            = 200

	// Linux arm64 pthread sizes
	pthreadOnceSizeLinuxArm64       = 4
	pthreadMutexSizeLinuxArm64      = 48
	pthreadMutexAttrSizeLinuxArm64  = 8
	pthreadCondSizeLinuxArm64       = 48
	pthreadCondAttrSizeLinuxArm64   = 8
	pthreadRWLockSizeLinuxArm64     = 56
	pthreadRWLockAttrSizeLinuxArm64 = 8
	clockSizeLinuxArm64             = 8
	sigjmpBufSizeLinuxArm64         = 312
	jmpBufSizeLinuxArm64            = 312

	// macOS amd64 pthread sizes
	pthreadOnceSizeDarwinAmd64       = 16
	pthreadMutexSizeDarwinAmd64      = 56
	pthreadMutexAttrSizeDarwinAmd64  = 8
	pthreadCondSizeDarwinAmd64       = 40
	pthreadCondAttrSizeDarwinAmd64   = 8
	pthreadRWLockSizeDarwinAmd64     = 192
	pthreadRWLockAttrSizeDarwinAmd64 = 16
	clockSizeDarwinAmd64             = 8
	sigjmpBufSizeDarwinAmd64         = 196
	jmpBufSizeDarwinAmd64            = 196

	// macOS arm64 pthread sizes
	pthreadOnceSizeDarwinArm64       = 16
	pthreadMutexSizeDarwinArm64      = 64
	pthreadMutexAttrSizeDarwinArm64  = 16
	pthreadCondSizeDarwinArm64       = 48
	pthreadCondAttrSizeDarwinArm64   = 16
	pthreadRWLockSizeDarwinArm64     = 200
	pthreadRWLockAttrSizeDarwinArm64 = 24
	clockSizeDarwinArm64             = 8
	sigjmpBufSizeDarwinArm64         = 196
	jmpBufSizeDarwinArm64            = 192
)

// Get architecture-specific pthread sizes based on the current platform
func getPlatformPthreadSizes() (onceSize, mutexSize, mutexAttrSize, condSize, condAttrSize, rwlockSize, rwlockAttrSize int) {
	switch {
	case linuxAmd64:
		return pthreadOnceSizeLinuxAmd64, pthreadMutexSizeLinuxAmd64, pthreadMutexAttrSizeLinuxAmd64,
			pthreadCondSizeLinuxAmd64, pthreadCondAttrSizeLinuxAmd64, pthreadRWLockSizeLinuxAmd64, pthreadRWLockAttrSizeLinuxAmd64
	case linuxArm64:
		return pthreadOnceSizeLinuxArm64, pthreadMutexSizeLinuxArm64, pthreadMutexAttrSizeLinuxArm64,
			pthreadCondSizeLinuxArm64, pthreadCondAttrSizeLinuxArm64, pthreadRWLockSizeLinuxArm64, pthreadRWLockAttrSizeLinuxArm64
	case darwinAmd64:
		return pthreadOnceSizeDarwinAmd64, pthreadMutexSizeDarwinAmd64, pthreadMutexAttrSizeDarwinAmd64,
			pthreadCondSizeDarwinAmd64, pthreadCondAttrSizeDarwinAmd64, pthreadRWLockSizeDarwinAmd64, pthreadRWLockAttrSizeDarwinAmd64
	case darwinArm64:
		return pthreadOnceSizeDarwinArm64, pthreadMutexSizeDarwinArm64, pthreadMutexAttrSizeDarwinArm64,
			pthreadCondSizeDarwinArm64, pthreadCondAttrSizeDarwinArm64, pthreadRWLockSizeDarwinArm64, pthreadRWLockAttrSizeDarwinArm64
	default:
		panic("Unsupported platform: " + runtime.GOOS + ", " + runtime.GOARCH)
	}
}

func getPlatformClockSizes() (clockSize int) {
	switch {
	case linuxAmd64:
		return clockSizeLinuxAmd64
	case linuxArm64:
		return clockSizeLinuxArm64
	case darwinAmd64:
		return clockSizeDarwinAmd64
	case darwinArm64:
		return clockSizeDarwinArm64
	default:
		panic("Unsupported platform: " + runtime.GOOS + ", " + runtime.GOARCH)
	}
}

func getPlatformJmpBufSizes() (sigjmpBufSize, jmpBufSize int) {
	switch {
	case linuxAmd64:
		return sigjmpBufSizeLinuxAmd64, jmpBufSizeLinuxAmd64
	case linuxArm64:
		return sigjmpBufSizeLinuxArm64, jmpBufSizeLinuxArm64
	case darwinAmd64:
		return sigjmpBufSizeDarwinAmd64, jmpBufSizeDarwinAmd64
	case darwinArm64:
		return sigjmpBufSizeDarwinArm64, jmpBufSizeDarwinArm64
	default:
		panic("Unsupported platform: " + runtime.GOOS + ", " + runtime.GOARCH)
	}
}

func max(a int, others ...int) int {
	max := a
	for _, v := range others {
		if v > max {
			max = v
		}
	}
	return max
}

var (
	pthreadOnceSize       = max(pthreadOnceSizeLinuxAmd64, pthreadOnceSizeDarwinAmd64, pthreadOnceSizeLinuxArm64, pthreadOnceSizeDarwinArm64)
	pthreadMutexSize      = max(pthreadMutexSizeLinuxAmd64, pthreadMutexSizeLinuxArm64, pthreadMutexSizeDarwinAmd64, pthreadMutexSizeDarwinArm64)
	pthreadMutexAttrSize  = max(pthreadMutexAttrSizeLinuxAmd64, pthreadMutexAttrSizeLinuxArm64, pthreadMutexAttrSizeDarwinAmd64, pthreadMutexAttrSizeDarwinArm64)
	pthreadCondSize       = max(pthreadCondSizeLinuxAmd64, pthreadCondSizeLinuxArm64, pthreadCondSizeDarwinAmd64, pthreadCondSizeDarwinArm64)
	pthreadCondAttrSize   = max(pthreadCondAttrSizeLinuxAmd64, pthreadCondAttrSizeLinuxArm64, pthreadCondAttrSizeDarwinAmd64, pthreadCondAttrSizeDarwinArm64)
	pthreadRWLockSize     = max(pthreadRWLockSizeLinuxAmd64, pthreadRWLockSizeLinuxArm64, pthreadRWLockSizeDarwinAmd64, pthreadRWLockSizeDarwinArm64)
	pthreadRWLockAttrSize = max(pthreadRWLockAttrSizeLinuxAmd64, pthreadRWLockAttrSizeLinuxArm64, pthreadRWLockAttrSizeDarwinAmd64, pthreadRWLockAttrSizeDarwinArm64)
	clockSize             = max(clockSizeLinuxAmd64, clockSizeLinuxArm64, clockSizeDarwinAmd64, clockSizeDarwinArm64)
	sigjmpBufSize         = max(sigjmpBufSizeLinuxAmd64, sigjmpBufSizeLinuxArm64, sigjmpBufSizeDarwinAmd64, sigjmpBufSizeDarwinArm64)
	jmpBufSize            = max(jmpBufSizeLinuxAmd64, jmpBufSizeLinuxArm64, jmpBufSizeDarwinAmd64, jmpBufSizeDarwinArm64)
)
