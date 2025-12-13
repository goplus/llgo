//go:build !wasm

package signal

import (
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

const (
	LLGoFiles   = "_wrap/signal.c"
	LLGoPackage = "link"
)

//llgo:type C
type SignalHandler func(c.Int)

//go:linkname sigaction C.llgo_clite_sigaction
func sigaction(sig c.Int, handler SignalHandler) c.Int

func Signal(sig c.Int, hanlder SignalHandler) c.Int {
	return sigaction(sig, hanlder)
}
