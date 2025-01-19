package runtime

import "github.com/goplus/llgo/runtime/internal/lib/internal/runtime/atomic"

// traceSchedResourceState is shared state for scheduling resources (i.e. fields common to
// both Gs and Ps).
type traceSchedResourceState struct {
	// statusTraced indicates whether a status event was traced for this resource
	// a particular generation.
	//
	// There are 3 of these because when transitioning across generations, traceAdvance
	// needs to be able to reliably observe whether a status was traced for the previous
	// generation, while we need to clear the value for the next generation.
	statusTraced [3]atomic.Uint32

	// seq is the sequence counter for this scheduling resource's events.
	// The purpose of the sequence counter is to establish a partial order between
	// events that don't obviously happen serially (same M) in the stream ofevents.
	//
	// There are two of these so that we can reset the counter on each generation.
	// This saves space in the resulting trace by keeping the counter small and allows
	// GoStatus and GoCreate events to omit a sequence number (implicitly 0).
	seq [2]uint64
}
