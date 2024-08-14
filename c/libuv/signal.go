package libuv

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

/* Handle types. */

type Signal struct {
	Unused [152]byte
}

// ----------------------------------------------

/* Function type */

// llgo:type C
type SignalCb func(handle *Signal, sigNum c.Int)

// ----------------------------------------------

/* Signal related functions and method. */

//go:linkname SignalInit C.uv_signal_init
func SignalInit(loop *Loop, handle *Signal) c.Int

// llgo:link (*Signal).Start C.uv_signal_start
func (handle *Signal) Start(cb SignalCb, signum c.Int) c.Int {
	return 0
}

// llgo:link (*Signal).StartOneshot C.uv_signal_start_oneshot
func (handle *Signal) StartOneshot(cb SignalCb, signum c.Int) c.Int {
	return 0
}

// llgo:link (*Signal).Stop C.uv_signal_stop
func (handle *Signal) Stop() c.Int {
	return 0
}
