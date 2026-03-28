//go:build go1.26

package runtime

import (
	_ "unsafe"

	latomic "github.com/goplus/llgo/runtime/internal/lib/sync/atomic"
)

// llgo does not currently expose runtime.getg in this compatibility layer.
// Keep a minimal process-wide nesting count so crypto/fips140 can link and
// enforce bypass scopes without pulling more runtime internals into this tree.
var fipsBypassCount uint32

//go:linkname fips140_setBypass crypto/fips140.setBypass
func fips140_setBypass() {
	latomic.AddUint32(&fipsBypassCount, 1)
}

//go:linkname fips140_unsetBypass crypto/fips140.unsetBypass
func fips140_unsetBypass() {
	for {
		n := latomic.LoadUint32(&fipsBypassCount)
		if n == 0 {
			return
		}
		if latomic.CompareAndSwapUint32(&fipsBypassCount, n, n-1) {
			return
		}
	}
}

//go:linkname fips140_isBypassed crypto/fips140.isBypassed
func fips140_isBypassed() bool {
	return latomic.LoadUint32(&fipsBypassCount) != 0
}
