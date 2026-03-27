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
	"crypto/internal/fips140deps/godebug": altPkgReplace,
	"crypto/internal/constanttime":        altPkgReplace,
	"internal/abi":                        altPkgReplace,
	"internal/bisect":                     altPkgReplace,
	"internal/godebug":                    altPkgReplace,
	"internal/godebugs":                   altPkgReplace,
	"internal/reflectlite":                altPkgReplace,
	"internal/runtime/maps":               altPkgReplace,
	"internal/sync":                       altPkgReplace,
	"internal/runtime/sys":                altPkgAdditive,
	"iter":                                altPkgReplace,
	"reflect":                             altPkgReplace,
	"runtime":                             altPkgReplace,
	"unique":                              altPkgReplace,
	"syscall/js":                          altPkgReplace,
	"sync/atomic":                         altPkgReplace,
}
