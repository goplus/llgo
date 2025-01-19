package runtime

import (
	"github.com/goplus/llgo/runtime/internal/lib/internal/runtime/atomic"
)

// A timer is a potentially repeating trigger for calling t.f(t.arg, t.seq).
// Timers are allocated by client code, often as part of other data structures.
// Each P has a heap of pointers to timers that it manages.
//
// A timer is expected to be used by only one client goroutine at a time,
// but there will be concurrent access by the P managing that timer.
// Timer accesses are protected by the lock t.mu, with a snapshot of
// t's state bits published in t.astate to enable certain fast paths to make
// decisions about a timer without acquiring the lock.
type timer struct {
	// mu protects reads and writes to all fields, with exceptions noted below.
	mu mutex

	astate atomic.Uint8 // atomic copy of state bits at last unlock
	state  uint8        // state bits
	isChan bool         // timer has a channel; immutable; can be read without lock

	blocked uint32 // number of goroutines blocked on timer's channel

	// Timer wakes up at when, and then at when+period, ... (period > 0 only)
	// each time calling f(arg, seq, delay) in the timer goroutine, so f must be
	// a well-behaved function and not block.
	//
	// The arg and seq are client-specified opaque arguments passed back to f.
	// When used from netpoll, arg and seq have meanings defined by netpoll
	// and are completely opaque to this code; in that context, seq is a sequence
	// number to recognize and squech stale function invocations.
	// When used from package time, arg is a channel (for After, NewTicker)
	// or the function to call (for AfterFunc) and seq is unused (0).
	//
	// Package time does not know about seq, but if this is a channel timer (t.isChan == true),
	// this file uses t.seq as a sequence number to recognize and squelch
	// sends that correspond to an earlier (stale) timer configuration,
	// similar to its use in netpoll. In this usage (that is, when t.isChan == true),
	// writes to seq are protected by both t.mu and t.sendLock,
	// so reads are allowed when holding either of the two mutexes.
	//
	// The delay argument is nanotime() - t.when, meaning the delay in ns between
	// when the timer should have gone off and now. Normally that amount is
	// small enough not to matter, but for channel timers that are fed lazily,
	// the delay can be arbitrarily long; package time subtracts it out to make
	// it look like the send happened earlier than it actually did.
	// (No one looked at the channel since then, or the send would have
	// not happened so late, so no one can tell the difference.)
	when   int64
	period int64
	f      func(arg any, seq uintptr, delay int64)
	arg    any
	seq    uintptr

	// If non-nil, the timers containing t.
	ts *timers

	// sendLock protects sends on the timer's channel.
	// Not used for async (pre-Go 1.23) behavior when debug.asynctimerchan.Load() != 0.
	sendLock mutex

	// isSending is used to handle races between running a
	// channel timer and stopping or resetting the timer.
	// It is used only for channel timers (t.isChan == true).
	// It is not used for tickers.
	// The value is incremented when about to send a value on the channel,
	// and decremented after sending the value.
	// The stop/reset code uses this to detect whether it
	// stopped the channel send.
	//
	// isSending is incremented only when t.mu is held.
	// isSending is decremented only when t.sendLock is held.
	// isSending is read only when both t.mu and t.sendLock are held.
	isSending atomic.Int32
}

type timerWhen struct {
	timer *timer
	when  int64
}

// A timers is a per-P set of timers.
type timers struct {
	// mu protects timers; timers are per-P, but the scheduler can
	// access the timers of another P, so we have to lock.
	mu mutex

	// heap is the set of timers, ordered by heap[i].when.
	// Must hold lock to access.
	heap []timerWhen

	// len is an atomic copy of len(heap).
	len atomic.Uint32

	// zombies is the number of timers in the heap
	// that are marked for removal.
	zombies atomic.Int32

	// raceCtx is the race context used while executing timer functions.
	raceCtx uintptr

	// minWhenHeap is the minimum heap[i].when value (= heap[0].when).
	// The wakeTime method uses minWhenHeap and minWhenModified
	// to determine the next wake time.
	// If minWhenHeap = 0, it means there are no timers in the heap.
	minWhenHeap atomic.Int64

	// minWhenModified is a lower bound on the minimum
	// heap[i].when over timers with the timerModified bit set.
	// If minWhenModified = 0, it means there are no timerModified timers in the heap.
	minWhenModified atomic.Int64
}
