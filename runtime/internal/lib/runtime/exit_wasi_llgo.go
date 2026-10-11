//go:build wasip1 && wasm

package runtime

import (
	_ "unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
)

//go:linkname syscall_Exit syscall.Exit
//go:nosplit
func syscall_Exit(code int) {
	c.Exit(c.Int(code))
}
