package mod

import (
	"fmt"

	"github.com/goplus/llgo/compiler/internal/env"
	"github.com/goplus/llpkgstore/metadata"
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
func NewModuleVersionPair(name, version string) (module.Version, error) {
	if !IsModulePath(name) {
		// 1. Convert cversion to the latest semantic version by version mappings
		metadataMgr, err := metadata.NewMetadataMgr(env.LLGOCACHE()) // build a metadata manager for version query
		if err != nil {
			return module.Version{}, err
		}

		if version == "latest" || version == "" {
			version, err = metadataMgr.LatestGoVer(name)
			if err != nil {
				return module.Version{}, err
			}
		} else {
			version, err = metadataMgr.LatestGoVerFromCVer(name, version)
			if err != nil {
				return module.Version{}, err
			}
		}

		if !semver.IsValid(version) {
			return module.Version{}, fmt.Errorf("invalid mapped version: %s", version)
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
	major := semver.Major(goVer)

	if major == "" {
		return "", fmt.Errorf("not a semver: %s", goVer)
	} else if major == "v0" || major == "v1" {
		return fmt.Sprintf("%s/%s", LLPkgPathPrefix, name), nil
	} else {
		return fmt.Sprintf("%s/%s/%s", LLPkgPathPrefix, name, major), nil
	}
}
