//go:build baremetal

package runtime

import (
	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/setjmp"
)

var (
	printFormatPrefixInt  = c.Str("%ld")
	printFormatPrefixUInt = c.Str("%lu")
	printFormatPrefixHex  = c.Str("%lx")
)

func throwCurrent(cur *Defer) {
	setjmp.Longjmp((*setjmp.JmpBuf)(cur.Addr), 1)
}

// Rethrow rethrows a panic.
// In baremetal single-threaded environment, we use longjmp to execute defers.
// Note: recover() will return nil for now (panic value not stored).
func Rethrow(cur *Defer) {
	if cur == nil {
		c.Printf(c.Str("fatal error\n"))
		c.Exit(2)
	} else {
		setjmp.Longjmp((*setjmp.JmpBuf)(cur.Addr), 1)
	}
}
