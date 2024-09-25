package header

import (
	"fmt"
	"path/filepath"
	"strings"
)

func GenHeaderFilePath(cflags string, files []string) ([]string, error) {
	fmt.Printf("get filepath from config cflags%s & include:%v\n", cflags, files)
	prefixPath := strings.TrimPrefix(cflags, "-I")
	var includePaths []string
	for _, file := range files {
		if file == "" {
			continue
		}
		includePaths = append(includePaths, filepath.Join(prefixPath, "/"+file))
	}
	if len(includePaths) == 0 {
		return nil, fmt.Errorf("no valid header files")
	}
	return includePaths, nil
}
