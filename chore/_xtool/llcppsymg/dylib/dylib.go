package dylib

import (
	"errors"
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/goplus/llgo/xtool/nm"
)

func ParseDylibSymbols(lib string) ([]*nm.Symbol, error) {
	fmt.Printf("parse dylib symbols from config lib:%s\n", lib)
	dylibPaths, err := GenDylibPaths(lib)
	if err != nil {
		return nil, errors.New("failed to generate dylib path")
	}

	var symbols []*nm.Symbol
	for _, dylibPath := range dylibPaths {
		if _, err := os.Stat(dylibPath); err != nil {
			fmt.Printf("Failed to access dylib error: %s\n", err)
			continue
		}

		files, err := nm.New("").List(dylibPath)
		if err != nil {
			fmt.Printf("Failed to list symbols in dylib: %s, error: %s\n", dylibPath, err)
			continue
		}

		for _, file := range files {
			symbols = append(symbols, file.Symbols...)
		}
	}

	if len(symbols) == 0 {
		return nil, errors.New("no symbols found in any dylib")
	}

	return symbols, nil
}

func GenDylibPaths(lib string) ([]string, error) {
	parts := strings.Fields(lib)
	var libPath, libName string
	var dylibPaths []string

	for _, part := range parts {
		if strings.HasPrefix(part, "-L") {
			libPath = part[2:]
		} else if strings.HasPrefix(part, "-l") {
			libName = part[2:]
			if libPath != "" && libName != "" {
				dylibPaths = append(dylibPaths, filepath.Join(libPath, "lib"+libName+".dylib"))
			}
		}
	}

	if len(dylibPaths) == 0 {
		return nil, fmt.Errorf("failed to parse pkg-config output: %s", lib)
	}

	return dylibPaths, nil
}
