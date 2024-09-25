package header

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"
)

func GenHeaderFilePath(cflags string, files []string) ([]string, error) {
	prefixPath := strings.TrimPrefix(cflags, "-I")

	var validPaths []string
	var errs []string

	for _, file := range files {
		if file == "" {
			continue
		}
		fullPath := filepath.Join(prefixPath, file)
		if f, err := os.Open(fullPath); err != nil {
			if os.IsNotExist(err) {
				errs = append(errs, fmt.Sprintf("file not found: %s", file))
			} else {
				errs = append(errs, fmt.Sprintf("error accessing file %s: %v", file, err))
			}
		} else {
			f.Close()
			validPaths = append(validPaths, fullPath)
		}
	}

	if len(validPaths) == 0 && len(errs) == 0 {
		return nil, fmt.Errorf("no valid header files")
	}

	if len(errs) > 0 {
		return validPaths, fmt.Errorf("some files not found or inaccessible: %v", errs)
	}

	return validPaths, nil
}
