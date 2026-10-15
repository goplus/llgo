//go:build !windows && !wasm && !baremetal

package thread

import (
	c "github.com/xgo-dev/llgo/runtime/internal/clite"
	csyscall "github.com/xgo-dev/llgo/runtime/internal/clite/syscall"
)

const (
	maxCreateRetries                  = 20
	microsecondsPerMillisecond c.Uint = 1000
)

func createWithRetry(native *nativeThread, attr *nativeAttr, routine RoutineFunc, arg c.Pointer) c.Int {
	ret := create(native, attr, routine, arg)
	if ret != c.Int(csyscall.EAGAIN) {
		return ret
	}
	// Keep the ordinary successful path free of retry callback allocation.
	return retryThreadCreation(ret, func() c.Int {
		return create(native, attr, routine, arg)
	}, func(delay c.Uint) { c.Usleep(delay) })
}

func retryThreadCreation(ret c.Int, attempt func() c.Int, pause func(c.Uint)) c.Int {
	// Temporary host-resource shortages may settle while other threads finish.
	// Retry at most 20 times, with 1-20 ms delays (210 ms cumulative maximum).
	for retry := 0; ret == c.Int(csyscall.EAGAIN) && retry < maxCreateRetries; retry++ {
		pause(c.Uint(retry+1) * microsecondsPerMillisecond)
		ret = attempt()
	}
	return ret
}
