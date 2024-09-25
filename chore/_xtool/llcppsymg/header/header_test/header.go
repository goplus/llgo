package main

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

func TestGenHeaderFilePath() {
	fmt.Println("=== Test GenHeaderFilePath ===")

	tempDir := os.TempDir()
	tempFile1 := filepath.Join(tempDir, "test1.h")
	tempFile2 := filepath.Join(tempDir, "test2.h")
	os.Create(tempFile1)
	os.Create(tempFile2)
	defer os.Remove(tempFile1)
	defer os.Remove(tempFile2)

	testCases := []struct {
		name   string
		cflags string
		files  []string
	}{
		{
			name:   "Valid files",
			cflags: "-I" + tempDir,
			files:  []string{"test1.h", "test2.h"},
		},
		{
			name:   "Mixed existing and non-existing files",
			cflags: "-I" + tempDir,
			files:  []string{"test1.h", "nonexistent.h"},
		},
		{
			name:   "No existing files",
			cflags: "-I" + tempDir,
			files:  []string{"nonexistent1.h", "nonexistent2.h"},
		},
		{
			name:   "Empty file list",
			cflags: "-I/usr/include",
			files:  []string{},
		},
	}

	for _, tc := range testCases {
		fmt.Printf("Test case: %s\n", tc.name)
		fmt.Printf("Input files: %v\n", tc.files)

		result, err := GenHeaderFilePath(tc.cflags, tc.files)

		if err != nil {
			fmt.Printf("Error: %v\n", err)
		}
		if result != nil {
			relativeResult := make([]string, len(result))
			for i, path := range result {
				relativeResult[i] = filepath.Base(path)
			}
			fmt.Printf("Output: %v\n", relativeResult)
		}
		fmt.Println()
	}
}

func main() {
	TestGenHeaderFilePath()
}
