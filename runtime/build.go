package runtime

import (
	"strings"
)

func SkipToBuild(pkgPath string) bool {
	if _, ok := hasAltPkg[pkgPath]; ok {
		return false
	}
	if _, ok := supportedInternal[pkgPath]; ok {
		return false
	}
	switch pkgPath {
	case "unsafe":
		return true
	default:
		return strings.HasPrefix(pkgPath, "internal/") ||
			strings.HasPrefix(pkgPath, "runtime/internal/")
	}
}

func IgnoreName(name string) bool {
	/* TODO(xsw): confirm this is not needed more
	if name == "unsafe.init" {
		return true
	}
	*/
	const internal = "internal/"
	return (strings.HasPrefix(name, internal) && !IsSupportedInternal(name)) ||
		strings.HasPrefix(name, "runtime/") || strings.HasPrefix(name, "arena.") ||
		strings.HasPrefix(name, "maps.") || strings.HasPrefix(name, "plugin.")
}

func IsSupportedInternal(name string) (b bool) {
	paths := strings.Split(name, ".")
	_, b = supportedInternal[paths[0]]
	return
}

func HasAltPkg(path string) (b bool) {
	_, b = hasAltPkg[path]
	return
}

type none struct{}

var hasAltPkg = map[string]none{
	"crypto/hmac":              {},
	"crypto/md5":               {},
	"crypto/rand":              {},
	"crypto/sha1":              {},
	"crypto/sha256":            {},
	"crypto/sha512":            {},
	"crypto/subtle":            {},
	"hash/crc32":               {},
	"internal/abi":             {},
	"internal/bytealg":         {},
	"internal/itoa":            {},
	"internal/oserror":         {},
	"internal/reflectlite":     {},
	"internal/syscall/execenv": {},
	"internal/syscall/unix":    {},
	"math":                     {},
	"math/big":                 {},
	"math/cmplx":               {},
	"math/rand":                {},
	"reflect":                  {},
	"sync":                     {},
	"sync/atomic":              {},
	"syscall":                  {},
	"time":                     {},
	"os":                       {},
	"os/exec":                  {},
	"runtime":                  {},
	"io":                       {},
}

var supportedInternal = map[string]none{
	"internal/abi":             {},
	"internal/bytealg":         {},
	"internal/itoa":            {},
	"internal/oserror":         {},
	"internal/race":            {},
	"internal/reflectlite":     {},
	"internal/stringslite":     {},
	"internal/filepathlite":    {},
	"internal/syscall/unix":    {},
	"internal/syscall/execenv": {},
	"internal/fmtsort":         {},
}
