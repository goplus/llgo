//go:build !windows && (wasm || baremetal)

package thread

import c "github.com/xgo-dev/llgo/runtime/internal/clite"

// Keep native syscall dependencies out of wasm and bare-metal type loaders.
func createWithRetry(native *nativeThread, attr *nativeAttr, routine RoutineFunc, arg c.Pointer) c.Int {
	return create(native, attr, routine, arg)
}
