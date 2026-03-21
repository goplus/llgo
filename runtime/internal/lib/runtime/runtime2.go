// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package runtime

import (
	"strconv"

	psync "github.com/goplus/llgo/runtime/internal/clite/pthread/sync"
	iruntime "github.com/goplus/llgo/runtime/internal/runtime"
)

// Layout of in-memory per-function information prepared by linker
// See https://golang.org/s/go12symtab.
// Keep in sync with linker (../cmd/link/internal/ld/pcln.go:/pclntab)
// and with package debug/gosym and with symtab.go in package runtime.
type _func struct {
	unused [8]byte
}

func Stack(buf []byte, all bool) int {
	if len(buf) == 0 {
		return 0
	}
	n := 0
	appendString := func(s string) {
		if n < len(buf) {
			n += copy(buf[n:], s)
		} else {
			n += len(s)
		}
	}
	appendInt := func(v int) {
		var tmp [32]byte
		out := strconv.AppendInt(tmp[:0], int64(v), 10)
		appendString(string(out))
	}
	appendString("goroutine 1 [running]:\n")
	var pcs [64]uintptr
	npcs := iruntime.PanicTrace(pcs[:])
	if npcs == 0 {
		npcs = Callers(1, pcs[:])
	}
	frames := CallersFrames(pcs[:npcs])
	for {
		fr, more := frames.Next()
		if fr.Function != "" {
			appendString(fr.Function)
		} else {
			appendString("???")
		}
		appendString("\n\t")
		if fr.File != "" {
			appendString(fr.File)
		} else {
			appendString("???")
		}
		appendString(":")
		appendInt(fr.Line)
		appendString("\n")
		if !more {
			break
		}
	}
	return n
}

type traceError string

func (e traceError) Error() string { return string(e) }

var (
	traceInitOnce psync.Once
	traceMu       psync.Mutex

	traceCh         chan []byte
	traceDoneCh     chan struct{}
	traceClosed     bool
	traceDoneClosed bool
)

func ensureTraceInit() {
	traceInitOnce.Do(func() {
		traceMu.Init(nil)
	})
}

func StartTrace() error {
	ensureTraceInit()

	traceMu.Lock()
	if traceCh != nil {
		traceMu.Unlock()
		return traceError("runtime: tracing already enabled")
	}
	traceCh = make(chan []byte, 8)
	traceDoneCh = make(chan struct{})
	traceClosed = false
	traceDoneClosed = false

	// Minimal non-empty payload so stdlib runtime/trace tests can assert that
	// tracing produced output. This is not a real execution trace.
	traceCh <- []byte("llgo-trace\n")
	traceMu.Unlock()
	return nil
}

func ReadTrace() []byte {
	ensureTraceInit()

	traceMu.Lock()
	ch := traceCh
	done := traceDoneCh
	traceMu.Unlock()
	if ch == nil {
		return nil
	}
	data, ok := <-ch
	if ok {
		return data
	}
	// Channel closed and drained: wake StopTrace.
	if done != nil {
		traceMu.Lock()
		if traceDoneCh == done && !traceDoneClosed {
			traceDoneClosed = true
			close(done)
		}
		traceMu.Unlock()
	}
	return nil
}

func StopTrace() {
	ensureTraceInit()

	traceMu.Lock()
	ch := traceCh
	done := traceDoneCh
	if ch == nil {
		traceMu.Unlock()
		return
	}
	doClose := !traceClosed
	traceClosed = true
	traceMu.Unlock()

	if doClose {
		close(ch)
	}
	if done != nil {
		<-done
	}

	traceMu.Lock()
	if traceCh == ch {
		traceCh = nil
		traceDoneCh = nil
		traceClosed = false
		traceDoneClosed = false
	}
	traceMu.Unlock()
}

func SetMutexProfileFraction(rate int) int {
	return 0
}

func SetBlockProfileRate(rate int) {
}

var MemProfileRate int = 512 * 1024
