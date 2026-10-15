//go:build !windows && !wasm && !baremetal

package thread

import (
	c "github.com/xgo-dev/llgo/runtime/internal/clite"
	csyscall "github.com/xgo-dev/llgo/runtime/internal/clite/syscall"
)

const (
	maxCreateRetries                  = 100
	maxCreateDelayMilliseconds        = 20
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
	// Retry at most 100 times, with delays capped at 20 ms
	// (1.81 s total requested sleep).
	for retry := 0; ret == c.Int(csyscall.EAGAIN) && retry < maxCreateRetries; retry++ {
		delay := retry + 1
		if delay > maxCreateDelayMilliseconds {
			delay = maxCreateDelayMilliseconds
		}
		pause(c.Uint(delay) * microsecondsPerMillisecond)
		ret = attempt()
	}
	return ret
}
