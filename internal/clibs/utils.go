package clibs

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/goplus/llgo/internal/env"
)

func getBuildDirByName(lib *Lib, dirName, platform, arch, targetTriple string) string {
	return filepath.Join(getBuildBaseDir(lib), dirName, targetTriple)
}

// getDownloadDir returns the download directory
func getDownloadDir(lib *Lib) string {
	return filepath.Join(getBuildBaseDir(lib), DownloadDirName)
}

func getPrebuiltDir(lib *Lib) string {
	return filepath.Join(getBuildBaseDir(lib), PrebuiltDirName)
}

func getBuildBaseDir(lib *Lib) string {
	llgoRoot := env.LLGoROOT()
	inLlgoRoot, err := isChildPath(llgoRoot, lib.Path)
	if err != nil {
		inLlgoRoot = true
	}
	if !inLlgoRoot && lib.Sum != "" {
		return lib.Path
	}
	home, err := os.UserHomeDir()
	if err != nil {
		panic(err)
	}
	subDir := strings.TrimLeft(lib.Sum, "h1:")
	return filepath.Join(home, ".llgo/", "clibs_build", lib.ModName, subDir)
}

// checkHash verifies if the build hash matches
func checkHash(dir string, config LibSpec, build bool) (bool, error) {
	var configHash LibSpec
	if build {
		configHash = config.BuildHash()
	} else {
		configHash = config.DownloadHash()
	}

	hashContent, err := os.ReadFile(filepath.Join(dir, BuildHashFile))
	if err != nil {
		fmt.Printf("read hash file failed: %v, %s", err, filepath.Join(dir, BuildHashFile))
		return false, err
	}

	hash, err := json.MarshalIndent(configHash, "", "  ")
	if err != nil {
		return false, err
	}
	hashStr := string(hash)

	fmt.Printf("  Checking hash, equal: %v, %s, %s\n", hashStr == string(hashContent), hashStr, string(hashContent))
	return hashStr == string(hashContent), nil
}

func saveHash(dir string, config LibSpec, build bool) error {
	var configHash LibSpec
	if build {
		configHash = config.BuildHash()
	} else {
		configHash = config.DownloadHash()
	}

	content, err := json.MarshalIndent(configHash, "", "  ")
	if err != nil {
		return err
	}

	fmt.Printf("  Saving hash: %#v\n     to %s\n", configHash, filepath.Join(dir, BuildHashFile))
	return os.WriteFile(filepath.Join(dir, BuildHashFile), content, 0644)
}

func isChildPath(parentPath, childPath string) (bool, error) {
	parentAbs, err := filepath.Abs(parentPath)
	if err != nil {
		return false, err
	}

	childAbs, err := filepath.Abs(childPath)
	if err != nil {
		return false, err
	}

	parentAbs = filepath.Clean(parentAbs)
	childAbs = filepath.Clean(childAbs)

	rel, err := filepath.Rel(parentAbs, childAbs)
	if err != nil {
		return false, err
	}

	return !strings.HasPrefix(rel, ".."), nil
}
