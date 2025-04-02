package mod

import (
	"fmt"

	"github.com/goplus/llgo/compiler/internal/env"
	"golang.org/x/mod/module"
	"golang.org/x/mod/semver"
)

const (
	LLPkgConfigFileName = "llpkg.cfg"
	GoModFileName       = "go.mod"
	LLPkgPathPrefix     = "github.com/goplus/llpkg"
)

// NewPathVersionPair will automatically identify if the name is a clib or a module
// path, and convert clib@cversion to modulePath@mappedVersion if possible.
//
// Returns a module.Version and any error encountered.
//
// Note: version can be empty, which indicates the latest version
func NewModuleVersionPair(name, version string) (module.Version, error) {
	if version == "latest" {
		version = ""
	}

	var err error
	if !IsModulePath(name) {
		// 1. Convert cversion to the latest semantic version by version mappings
		if version != "" {
			metadataMgr, err := NewMetadataMgr(env.LLGOCACHE()) // build a metadata manager for version query
			if err != nil {
				return module.Version{}, err
			}
			version, err = metadataMgr.LatestGoVerFromCVer(name, version)
			if err != nil {
				return module.Version{}, err
			}
		}

		// 2. Prepend path prefix, and suffix with major version
		name, err = doPathCompletion(name, version)
		if err != nil {
			return module.Version{}, err
		}
	}

	return module.Version{Path: name, Version: version}, nil
}

// Returns true if the path is a valid module path, false otherwise
func IsModulePath(path string) bool {
	err := module.CheckPath(path)
	return err == nil
}

func doPathCompletion(name, goVer string) (string, error) {
	if !semver.IsValid(goVer) && goVer != "" {
		return "", fmt.Errorf("not a semver: %s", goVer)
	}

	major := semver.Major(goVer)

	switch major {
	case "", "v0", "v1":
		return fmt.Sprintf("%s/%s", LLPkgPathPrefix, name), nil
	default:
		return fmt.Sprintf("%s/%s/%s", LLPkgPathPrefix, name, major), nil
	}
}
