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

func HasSourcePatchPkg(path string) (b bool) {
	_, b = sourcePatchPkgs[path]
	return
}

func SourcePatchPkgPaths() []string {
	paths := make([]string, 0, len(sourcePatchPkgs))
	for path := range sourcePatchPkgs {
		paths = append(paths, path)
	}
	sort.Strings(paths)
	return paths
}

var altPkgs = map[string]altPkgMode{
	"internal/abi":          altPkgReplace,
	"internal/reflectlite":  altPkgReplace,
	"internal/runtime/maps": altPkgReplace,
	"internal/runtime/sys":  altPkgAdditive,
	"reflect":               altPkgReplace,
	"runtime":               altPkgReplace,
	"syscall/js":            altPkgReplace,
	"unique":                altPkgReplace,
}

var sourcePatchPkgs = map[string]struct{}{
	"iter":        {},
	"sync/atomic": {},
}
