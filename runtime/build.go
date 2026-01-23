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
	"crypto/internal/boring/sig": {},
	"hash/crc32":                 {},
	"internal/abi":               {},
	"internal/bytealg":           {},
	"internal/cpu":               {},
	"internal/reflectlite":       {},
	"internal/runtime/atomic":    {},
	"internal/runtime/maps":      {},
	"sync":                       {},
	"sync/atomic":                {},
	"unique":                     {},
	"weak":                       {},
	"reflect":                    {},
	"syscall/js":                 {},
	"runtime":                    {},
	"internal/runtime/syscall":   {},
	"runtime/internal/syscall":   {},
}
