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
	"hash/crc32":               {},
	"internal/abi":             {},
	"internal/bytealg":         {},
	"internal/reflectlite":     {},
	"internal/runtime/atomic":  {},
	"internal/runtime/maps":    {},
	"internal/runtime/syscall": {},
	"reflect":                  {},
	"runtime":                  {},
	"runtime/internal/syscall": {},
	"sync":                     {},
	"sync/atomic":              {},
	"syscall/js":               {},
}
