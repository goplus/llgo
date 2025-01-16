package runtime

import "github.com/goplus/llgo/runtime/internal/lib/internal/runtime/atomic"

// gTraceState is per-G state for the tracer.
type gTraceState struct {
	traceSchedResourceState
}

// pTraceState is per-P state for the tracer.
type pTraceState struct {
	traceSchedResourceState

	// mSyscallID is the ID of the M this was bound to before entering a syscall.
	mSyscallID int64

	// maySweep indicates the sweep events should be traced.
	// This is used to defer the sweep start event until a span
	// has actually been swept.
	maySweep bool

	// inSweep indicates that at least one sweep event has been traced.
	inSweep bool

	// swept and reclaimed track the number of bytes swept and reclaimed
	// by sweeping in the current sweep loop (while maySweep was true).
	swept, reclaimed uintptr
}

// traceBlockReason is an enumeration of reasons a goroutine might block.
// This is the interface the rest of the runtime uses to tell the
// tracer why a goroutine blocked. The tracer then propagates this information
// into the trace however it sees fit.
//
// Note that traceBlockReasons should not be compared, since reasons that are
// distinct by name may *not* be distinct by value.
type traceBlockReason uint8

const (
	traceBlockGeneric traceBlockReason = iota
	traceBlockForever
	traceBlockNet
	traceBlockSelect
	traceBlockCondWait
	traceBlockSync
	traceBlockChanSend
	traceBlockChanRecv
	traceBlockGCMarkAssist
	traceBlockGCSweep
	traceBlockSystemGoroutine
	traceBlockPreempted
	traceBlockDebugCall
	traceBlockUntilGCEnds
	traceBlockSleep
	traceBlockGCWeakToStrongWait
)

var traceBlockReasonStrings = [...]string{
	traceBlockGeneric:            "unspecified",
	traceBlockForever:            "forever",
	traceBlockNet:                "network",
	traceBlockSelect:             "select",
	traceBlockCondWait:           "sync.(*Cond).Wait",
	traceBlockSync:               "sync",
	traceBlockChanSend:           "chan send",
	traceBlockChanRecv:           "chan receive",
	traceBlockGCMarkAssist:       "GC mark assist wait for work",
	traceBlockGCSweep:            "GC background sweeper wait",
	traceBlockSystemGoroutine:    "system goroutine wait",
	traceBlockPreempted:          "preempted",
	traceBlockDebugCall:          "wait for debug call",
	traceBlockUntilGCEnds:        "wait until GC ends",
	traceBlockSleep:              "sleep",
	traceBlockGCWeakToStrongWait: "GC weak to strong wait",
}

// mTraceState is per-M state for the tracer.
type mTraceState struct {
	seqlock atomic.Uintptr // seqlock indicating that this M is writing to a trace buffer.
	buf     [2]*traceBuf   // Per-M traceBuf for writing. Indexed by trace.gen%2.
	link    *m             // Snapshot of alllink or freelink.
}
