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
	"crypto/md5":               {},
	"crypto/sha1":              {},
	"crypto/internal/boring/sig": {},
	"hash/crc32":               {},
	"internal/abi":             {},
	"internal/bytealg":         {},
	"internal/chacha8rand":     {},
	"internal/cpu":             {},
	"internal/reflectlite":     {},
	"internal/runtime/atomic":  {},
	"internal/runtime/sys":     {},
	"internal/syscall/unix":    {},
	"math":                     {},
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
