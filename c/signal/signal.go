package signal

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)
import "C"

const (
	LLGoPackage = "link"
)

//llgo:type C
type SignalHandler func(c.Int)

//llgo:type C
type sigactiont struct {
	handler SignalHandler
	tramp   unsafe.Pointer
	mask    c.Int
	flags   c.Int
}

//go:linkname sigaction C.sigaction
func sigaction(sig c.Int, act, old *sigactiont) c.Int

func Signal(sig c.Int, hanlder SignalHandler) c.Int {
	var act sigactiont
	act.handler = hanlder
	return sigaction(sig, &act, nil)
}
