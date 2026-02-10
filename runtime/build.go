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
	"internal/reflectlite":     {},
	"internal/runtime/syscall": {},
	"internal/runtime/maps":    {},
	"reflect":                  {},
	"runtime":                  {},
	"runtime/internal/syscall": {},
	"unique":                   {},
	"syscall/js":               {},
}
