package dylib

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/goplus/llgo/xtool/nm"
)

// ParseDylibSymbols parses symbols from dynamic libraries specified in the lib string.
// It handles multiple libraries (e.g., -L/opt/homebrew/lib -llua -lm) and returns
// symbols if at least one library is successfully parsed. Errors from inaccessible
// libraries (like standard libs) are logged as warnings.
//
// Returns symbols and nil error if any symbols are found, or nil and error if none found.
func ParseDylibSymbols(lib string) ([]*nm.Symbol, error) {
	fmt.Printf("parse dylib symbols from config lib:%s\n", lib)

	dylibPaths, err := GenDylibPaths(lib)
	if err != nil {
		fmt.Printf("Warning: failed to generate some dylib paths: %v\n", err)
	}

	var symbols []*nm.Symbol
	var parseErrors []string

	for _, dylibPath := range dylibPaths {
		if _, err := os.Stat(dylibPath); err != nil {
			fmt.Printf("Warning: Failed to access dylib %s: %v\n", dylibPath, err)
			continue
		}

		files, err := nm.New("").List(dylibPath)
		if err != nil {
			parseErrors = append(parseErrors, fmt.Sprintf("Failed to list symbols in dylib %s: %v", dylibPath, err))
			continue
		}

		for _, file := range files {
			symbols = append(symbols, file.Symbols...)
		}
	}

	if len(symbols) > 0 {
		if len(parseErrors) > 0 {
			fmt.Printf("Warning: Some libraries could not be parsed: %v\n", parseErrors)
		}
		return symbols, nil
	}

	return nil, fmt.Errorf("no symbols found in any dylib. Errors: %v", parseErrors)
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
