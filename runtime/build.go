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
	"hash/crc32":              {},
	"internal/abi":            {},
	"internal/cpu":            {},
	"internal/reflectlite":    {},
	"internal/runtime/atomic": {},
	"sync":                    {},
	"sync/atomic":             {},
	// Use stdlib internal/syscall/unix and internal/poll on non-darwin.
	"reflect":                  {},
	"syscall/js":               {},
	"runtime":                  {},
	"internal/runtime/syscall": {},
}

var hasAltPkgDarwin = map[string]none{
	"internal/abi":            {},
	"internal/cpu":            {},
	"internal/reflectlite":    {},
	"internal/runtime/atomic": {},
	"hash/crc32":              {},
	"sync":                    {},
	"sync/atomic":             {},
	// Use stdlib internal/syscall/unix on darwin.
	"reflect":                  {},
	"syscall/js":               {},
	"runtime":                  {},
	"internal/runtime/syscall": {},
}
