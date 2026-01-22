package runtime

import "os"

func SkipToBuild(pkgPath string) bool {
	if HasAltPkg(pkgPath) {
		return false
	}
	return pkgPath == "unsafe"
}

func HasAltPkg(path string) (b bool) {
	goos := os.Getenv("GOOS")
	if goos == "" {
		goos = hostGOOS
	}
	if goos == "darwin" {
		_, b = hasAltPkgDarwin[path]
		return
	}
	_, b = hasAltPkg[path]
	return
}

type none struct{}

var hasAltPkg = map[string]none{
	"crypto/md5":                 {},
	"crypto/sha1":                {},
	"crypto/internal/boring/sig": {},
	"hash/crc32":                 {},
	"internal/abi":               {},
	"internal/bytealg":           {},
	"internal/chacha8rand":       {},
	"internal/cpu":               {},
	"internal/reflectlite":       {},
	"internal/runtime/atomic":    {},
	"internal/runtime/sys":       {},
	"internal/syscall/unix":      {},
	"internal/poll":              {},
	"math":                       {},
	"os":                         {},
	"reflect":                    {},
	"sync":                       {},
	"sync/atomic":                {},
	"syscall":                    {},
	"syscall/js":                 {},
	"runtime":                    {},
	"runtime/pprof":              {},
	"runtime/internal/syscall":   {},
}

var hasAltPkgDarwin = map[string]none{
	"internal/bytealg":           {},
	"internal/abi":               {},
	"internal/chacha8rand":       {},
	"internal/cpu":               {},
	"internal/runtime/atomic":    {},
	"internal/reflectlite":       {},
	"internal/runtime/sys":       {},
	"internal/syscall/unix":      {},
	"math":                       {},
	"crypto/internal/boring/sig": {},
	"reflect":                    {},
	"sync/atomic":                {},
	"syscall":                    {},
	"syscall/js":                 {},
	"runtime":                    {},
	"runtime/pprof":              {},
	"runtime/internal/syscall":   {},
}
