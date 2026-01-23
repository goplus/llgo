package runtime

import "unsafe"

var fipsIndicator uint8

//go:linkname fips_getIndicator crypto/internal/fips140.getIndicator
func fips_getIndicator() uint8 {
	return fipsIndicator
}

//go:linkname fips_setIndicator crypto/internal/fips140.setIndicator
func fips_setIndicator(v uint8) {
	fipsIndicator = v
}

//go:linkname fips_fatal crypto/internal/fips140.fatal
func fips_fatal(s string) {
	fatal(s)
}

//go:linkname fipsinfo go:fipsinfo
var fipsinfo struct {
	Magic [16]byte
	Sum   [32]byte
	Self  uintptr
	Sects [4]struct {
		Start unsafe.Pointer
		End   unsafe.Pointer
	}
}

// fatal is referenced via //go:linkname in crypto/internal/sysrand.
func fatal(s string) {
	panic("fatal error: " + s)
}
