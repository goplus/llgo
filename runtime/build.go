package runtime

func SkipToBuild(pkgPath string) bool {
	if _, ok := hasAltPkg[pkgPath]; ok {
		return false
	}
	return pkgPath == "unsafe"
}

func HasAltPkg(path string) (b bool) {
	_, b = hasAltPkg[path]
	return
}

type none struct{}

var hasAltPkg = map[string]none{
	"internal/bytealg":         {},
	"internal/abi":             {},
	"internal/chacha8rand":     {},
	"internal/runtime/atomic":  {},
	"internal/reflectlite":     {},
	"internal/runtime/sys":     {},
	"internal/syscall/unix":    {},
	"math":                     {},
	"crypto/internal/boring/sig": {},
	"reflect":                  {},
	"sync/atomic":              {},
	"syscall":                  {},
	"syscall/js":               {},
	"runtime":                  {},
	"runtime/pprof":            {},
	"runtime/internal/syscall": {},
}
