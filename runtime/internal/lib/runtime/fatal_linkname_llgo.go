//go:build llgo

package runtime

import _ "unsafe"

func throw(s string) {
	panic("fatal error: " + s)
}

//go:linkname sync_throw sync.throw
func sync_throw(s string) { throw(s) }

//go:linkname sync_fatal sync.fatal
func sync_fatal(s string) { fatal(s) }

//go:linkname rand_fatal crypto/rand.fatal
func rand_fatal(s string) { fatal(s) }

//go:linkname sysrand_fatal crypto/internal/sysrand.fatal
func sysrand_fatal(s string) { fatal(s) }

//go:linkname maps_fatal internal/runtime/maps.fatal
func maps_fatal(s string) { fatal(s) }
