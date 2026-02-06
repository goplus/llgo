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
	"internal/runtime/syscall":   {},
	"internal/weak":              {},
	"reflect":                    {},
	"runtime":                    {},
	"runtime/internal/syscall":   {},
	"sync":                       {},
	"sync/atomic":                {},
	"syscall/js":                 {},
	"unique":                     {},
	"weak":                       {},
}
