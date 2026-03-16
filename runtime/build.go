package runtime

type altPkgMode uint8

const (
	altPkgReplace altPkgMode = iota + 1
	altPkgAdditive
)

func SkipToBuild(pkgPath string) bool {
	if _, ok := altPkgs[pkgPath]; ok {
		return false
	}
	return pkgPath == "unsafe"
}

func HasAltPkg(path string) (b bool) {
	_, b = altPkgs[path]
	return
}

func HasAdditiveAltPkg(path string) bool {
	return altPkgs[path] == altPkgAdditive
}

var altPkgs = map[string]altPkgMode{
	"internal/goarch":         altPkgReplace,
	"internal/itoa":           altPkgReplace,
	"internal/race":           altPkgReplace,
	"internal/reflectlite":    altPkgReplace,
	"internal/sync":           altPkgReplace,
	"internal/runtime/atomic": altPkgReplace,
	"internal/runtime/maps":   altPkgReplace,
	"internal/runtime/sys":    altPkgAdditive,
	"iter":                    altPkgReplace,
	"reflect":                 altPkgReplace,
	"runtime":                 altPkgReplace,
	"sync/atomic":             altPkgReplace,
	"unique":                  altPkgReplace,
	"syscall/js":              altPkgReplace,
}
