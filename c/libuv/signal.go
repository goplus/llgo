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

/* Function type */

// llgo:type C
type SignalCb func(handle *Signal, sigNum c.Int)

// ----------------------------------------------

/* Signal related functions and method. */

//go:linkname SignalInit C.uv_signal_init
func SignalInit(loop *Loop, handle *Signal) c.Int

//go:linkname SignalStart C.uv_signal_start
func SignalStart(handle *Signal, cb SignalCb, signum c.Int) c.Int

//go:linkname SignalStartOneshot C.uv_signal_start_oneshot
func SignalStartOneshot(handle *Signal, cb SignalCb, signum c.Int) c.Int
