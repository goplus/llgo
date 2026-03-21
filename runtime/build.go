package runtime

import "sort"

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

func AltPkgPaths() []string {
	paths := make([]string, 0, len(altPkgs))
	for path := range altPkgs {
		paths = append(paths, path)
	}
	sort.Strings(paths)
	return paths
}

var altPkgs = map[string]altPkgMode{
	"crypto/internal/fips140deps/godebug": altPkgReplace,
	"internal/abi":                        altPkgAdditive,
	"internal/bisect":                     altPkgReplace,
	"internal/bytealg":                    altPkgReplace,
	"internal/byteorder":                  altPkgReplace,
	"internal/chacha8rand":                altPkgReplace,
	"internal/goarch":                     altPkgReplace,
	"internal/godebug":                    altPkgReplace,
	"internal/godebugs":                   altPkgReplace,
	"internal/itoa":                       altPkgReplace,
	"internal/race":                       altPkgReplace,
	"internal/reflectlite":                altPkgReplace,
	"internal/runtime/atomic":             altPkgReplace,
	"internal/runtime/maps":               altPkgReplace,
	"internal/runtime/sys":                altPkgAdditive,
	"internal/runtime/syscall":            altPkgReplace,
	"internal/sync":                       altPkgReplace,
	"iter":                                altPkgReplace,
	"math":                                altPkgReplace,
	"reflect":                             altPkgReplace,
	"runtime":                             altPkgReplace,
	"runtime/internal/atomic":             altPkgReplace,
	"runtime/internal/syscall":            altPkgReplace,
	"sync/atomic":                         altPkgReplace,
	"syscall/js":                          altPkgReplace,
	"unique":                              altPkgReplace,
}
