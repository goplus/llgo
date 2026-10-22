//go:build js && wasm

package runtime

import (
	_ "unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
	"github.com/xgo-dev/llgo/runtime/internal/clite/emscripten"
)

//go:linkname syscall_Exit syscall.Exit
//go:nosplit
func syscall_Exit(code int) {
	// Asyncify keeps parked fibers alive. A Go process exit must terminate
	// them and report its status even inside a synchronous JS callback.
	c.Fflush(nil)
	emscripten.ForceExit(c.Int(code))
}
