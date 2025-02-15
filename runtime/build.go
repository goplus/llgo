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
	"go/parser":                {},
	"hash/crc32":               {},
	"internal/abi":             {},
	"internal/bytealg":         {},
	"internal/cpu":             {},
	"internal/itoa":            {},
	"internal/godebug":         {},
	"internal/oserror":         {},
	"internal/poll":            {},
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
	"os/signal":                {},
	"runtime":                  {},
	"runtime/debug":            {},
	"runtime/pprof":            {},
	"runtime/trace":            {},
	"runtime/internal/syscall": {},
	"io":                       {},
}

var supportedInternal = map[string]none{
	"internal/race":         {},
	"internal/stringslite":  {},
	"internal/filepathlite": {},
	"internal/fmtsort":      {},
}
