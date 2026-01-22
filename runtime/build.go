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
	"internal/abi":             {},
	"internal/bytealg":         {},
	"internal/chacha8rand":     {},
	"internal/cpu":             {},
	"internal/reflectlite":     {},
	"internal/runtime/atomic":  {},
	"internal/runtime/sys":     {},
	"internal/syscall/unix":    {},
	"math":                     {},
	"crypto/internal/boring/sig": {},
	"os/signal":                {},
	"reflect":                  {},
	"sync/atomic":              {},
	"syscall":                  {},
	"syscall/js":               {},
	"runtime":                  {},
	"runtime/debug":            {},
	"runtime/pprof":            {},
	"runtime/internal/syscall": {},
}
