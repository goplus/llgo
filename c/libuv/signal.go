package libuv

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

/* Handle types. */

type Signal struct {
	Unused [0]byte
}

// ----------------------------------------------

/* Signal related functions and method. */

// llgo:type C
type SignalCb func(handle *Signal, sigNum c.Int)

//go:linkname UvSignalInit C.uv_signal_init
func UvSignalInit(loop *Loop, handle *Signal) c.Int

// llgo:link (*Signal).Start C.uv_signal_start
func (s *Signal) Start(cb SignalCb, signum c.Int) c.Int {
	return 0
}

// llgo:link (*Signal).StartOneshot C.uv_signal_start_oneshot
func (s *Signal) StartOneshot(handle *Signal, cb SignalCb, signum c.Int) c.Int {
	return 0
}

func (s *Signal) Init(loop *Loop) int {
	return UvSignalInit(loop, s)
}
