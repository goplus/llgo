package cfgparse

import (
	"fmt"
	"os"
	"path/filepath"
	"runtime"
	"strings"
)

// Note: This package is not placed under the 'config' package because 'config'
// depends on 'cjson'. The parsing of Libs and cflags is intended to be usable
// by both llgo and go, without introducing additional dependencies.

type Libs struct {
	Paths []string // Dylib Path
	Names []string
}

type CFlags struct {
	Paths []string // Include Path
}

func ParseLibs(libs string) *Libs {
	parts := strings.Fields(libs)
	lbs := &Libs{}
	for _, part := range parts {
		if strings.HasPrefix(part, "-L") {
			lbs.Paths = append(lbs.Paths, part[2:])
		} else if strings.HasPrefix(part, "-l") {
			lbs.Names = append(lbs.Names, part[2:])
		}
	}
	return lbs
}

// searches for each library name in the provided paths and default paths,
// appending the appropriate file extension (.dylib for macOS, .so for Linux).
//
// Example: For "-L/opt/homebrew/lib -llua -lm":
// - It will search for liblua.dylib (on macOS) or liblua.so (on Linux)
// - System libs like -lm are ignored and included in notFound
//
// So error is returned if no libraries found at all.
func (l *Libs) GenDylibPaths(defaultPaths []string) ([]string, []string, error) {
	var foundPaths []string
	var notFound []string
	affix := ".dylib"
	if runtime.GOOS == "linux" {
		affix = ".so"
	}
	searchPaths := append(l.Paths, defaultPaths...)
	for _, name := range l.Names {
		var foundPath string
		for _, path := range searchPaths {
			dylibPath := filepath.Join(path, "lib"+name+affix)
			if _, err := os.Stat(dylibPath); err == nil {
				foundPath = dylibPath
				break
			}
		}
		if foundPath != "" {
			foundPaths = append(foundPaths, foundPath)
		} else {
			notFound = append(notFound, name)
		}
	}
	if len(foundPaths) == 0 {
		return nil, notFound, fmt.Errorf("failed to find any libraries")
	}
	return foundPaths, notFound, nil
}

func ParseCFlags(cflags string) *CFlags {
	parts := strings.Fields(cflags)
	cf := &CFlags{}
	for _, part := range parts {
		if strings.HasPrefix(part, "-I") {
			cf.Paths = append(cf.Paths, part[2:])
		}
	}
	return cf
}

func (cf *CFlags) GenHeaderFilePaths(files []string) ([]string, []string, error) {
	var foundPaths []string
	var notFound []string

	for _, file := range files {
		var found bool
		for _, path := range cf.Paths {
			fullPath := filepath.Join(path, file)
			if _, err := os.Stat(fullPath); err == nil {
				foundPaths = append(foundPaths, fullPath)
				found = true
				break
			}
		}
		if !found {
			notFound = append(notFound, file)
		}
	}

	if len(foundPaths) == 0 {
		return nil, notFound, fmt.Errorf("failed to find any header files")
	}

	return foundPaths, notFound, nil
}
