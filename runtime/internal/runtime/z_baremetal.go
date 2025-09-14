//go:build baremetal

package runtime

import c "github.com/goplus/llgo/runtime/internal/clite"

var (
	printFormatPrefixInt  = c.Str("%ld")
	printFormatPrefixUInt = c.Str("%lu")
	printFormatPrefixHex  = c.Str("%lx")
)

// Rethrow rethrows a panic.
func Rethrow(link *Defer) {
	// in baremetal environment, we cannot get debug data from pthread_getspecific
	// most of baremetal implement of pthread_getspecific returns empty result
	c.Printf(c.Str("fatal error\n"))
	c.Exit(2)
}
