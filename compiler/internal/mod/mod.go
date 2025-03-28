package mod

import (
	"fmt"
	"os"
	"path/filepath"

	"github.com/goplus/llgo/compiler/internal/env"
	"github.com/goplus/llgo/compiler/internal/packages"
	"github.com/goplus/llpkgstore/metadata"
	"github.com/goplus/mod/modcache"
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

func LLPkgCfgFilePath(mod module.Version) (string, error) {
	cachePath, err := modcache.Path(mod)
	if err != nil {
		return "", err
	}

	return filepath.Join(cachePath, LLPkgConfigFileName), nil
}

func GoModFilePath(mod module.Version) (string, error) {
	cachePath, err := modcache.Path(mod)
	if err != nil {
		return "", err
	}

	return filepath.Join(cachePath, GoModFileName), nil
}

func LLPkgCacheDirByModule(mod module.Version) (string, error) {
	encPath, err := module.EscapePath(mod.Path)
	if err != nil {
		return "", err
	}

	return filepath.Join(LLPkgCacheDir(), encPath+"@"+mod.Version), nil
}

func LLPkgCacheDir() string {
	return filepath.Join(env.LLGOCACHE(), "llpkg")
}

// Returns true if the path is a valid module path, false otherwise
func IsModulePath(path string) bool {
	err := module.CheckPath(path)
	return err == nil
}

func InLLPkg(pkg *packages.Package) (bool, error) {
	if pkg.Module == nil {
		return false, nil
	}

	return IsLLPkg(module.Version{Path: pkg.Module.Path, Version: pkg.Module.Version})
}

func IsLLPkg(mod module.Version) (bool, error) {
	cfgPath, err := LLPkgCfgFilePath(mod)
	if err != nil {
		return false, err
	}

	println(cfgPath)

	_, err = os.Stat(cfgPath)
	if err != nil {
		switch {
		case os.IsNotExist(err):
			return false, nil
		default:
			return false, err
		}
	}

	return true, nil
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
