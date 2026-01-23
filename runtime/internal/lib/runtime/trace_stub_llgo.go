package runtime

import _ "unsafe"

//go:linkname traceAdvance runtime.traceAdvance
func traceAdvance(stopTrace bool) {}

//go:linkname traceClockNow runtime.traceClockNow
func traceClockNow() uint64 { return 0 }

//go:linkname runtime_readTrace runtime/trace.runtime_readTrace
func runtime_readTrace() []byte { return nil }
