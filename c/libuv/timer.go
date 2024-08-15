package libuv

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// ----------------------------------------------

/* Handle types. */

// TODO(spongehah): Timer
type Timer struct {
	Unused [152]byte
}

// ----------------------------------------------

// llgo:type C
type TimerCb func(timer *Timer)

// ----------------------------------------------

/* Timer related function and method */

//go:linkname InitTimer C.uv_timer_init
func InitTimer(loop *Loop, timer *Timer) c.Int

// llgo:link (*Timer).Start C.uv_timer_start
func (timer *Timer) Start(cb TimerCb, timeoutMs uint64, repeat uint64) c.Int {
	return 0
}

// llgo:link (*Timer).Stop C.uv_timer_stop
func (timer *Timer) Stop() c.Int {
	return 0
}

// llgo:link (*Timer).Again C.uv_timer_again
func (timer *Timer) Again() c.Int {
	return 0
}

// llgo:link (*Timer).SetRepeat C.uv_timer_set_repeat
func (timer *Timer) SetRepeat(repeat uint64) {}

// llgo:link (*Timer).GetRepeat C.uv_timer_get_repeat
func (timer *Timer) GetRepeat() uint64 {
	return 0
}

// llgo:link (*Timer).GetDueIn C.uv_timer_get_due_in
func (timer *Timer) GetDueIn() uint64 {
	return 0
}
