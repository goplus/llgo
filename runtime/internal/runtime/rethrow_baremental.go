//go:build baremental

package runtime

import c "github.com/goplus/llgo/runtime/internal/clite"

// Rethrow rethrows a panic.
func Rethrow(link *Defer) {
	// in baremental environment, we cannot get debug data from pthread_getspecific
	// most of baremental implement of pthread_getspecific returns empty result
	c.Printf(c.Str("fatal error\n"))
	c.Exit(2)
}
