package main

import (
	"fmt"
	"os"
	"path/filepath"
	"runtime"
	"strings"

	"github.com/goplus/llgo/chore/_xtool/llcppsymg/config"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/config/cfgparse"
)

func main() {
	TestGetConf()
	TestParseLibs()
	TestGenDylibPaths()
	TestParseCFlags()
	TestGenHeaderFilePath()
}

func TestGetConf() {
	testCases := []struct {
		name  string
		input string
	}{
		{
			name: "SQLite configuration",
			input: `{
  "name": "sqlite",
  "cflags": "-I/opt/homebrew/opt/sqlite/include",
  "include": ["sqlite3.h"],
  "libs": "-L/opt/homebrew/opt/sqlite/lib -lsqlite3",
  "trimPrefixes": ["sqlite3_"],
  "cplusplus": false
}`,
		},
		{
			name: "Lua configuration",
			input: `{
  "name": "lua",
  "cflags": "-I/opt/homebrew/include/lua",
  "include": ["lua.h"],
  "libs": "-L/opt/homebrew/lib -llua -lm",
  "trimPrefixes": ["lua_", "lua_"],
  "cplusplus": false
}`,
		},
		{
			name:  "Invalid JSON",
			input: `{invalid json}`,
		},
	}

	for _, tc := range testCases {
		fmt.Printf("=== Test case: %s ===\n", tc.name)
		result, err := config.GetConf([]byte(tc.input))

		if err != nil {
			fmt.Println("Error:", err.Error())
		} else {
			fmt.Println("Name:", result.Config.Name)
			fmt.Println("CFlags:", result.Config.CFlags)
			fmt.Println("Libs:", result.Config.Libs)
			fmt.Println("Include:", strings.Join(result.Config.Include, ", "))
			fmt.Println("TrimPrefixes:", strings.Join(result.Config.TrimPrefixes, ", "))
			fmt.Println("Cplusplus:", result.Config.Cplusplus)
		}
		fmt.Println()
	}
}

func TestParseLibs() {
	fmt.Println("=== Test ParseLibs ===")

	testCases := []struct {
		name  string
		input string
	}{
		{
			name:  "Lua library",
			input: "-L/opt/homebrew/lib -llua -lm",
		},
		{
			name:  "SQLite library",
			input: "-L/opt/homebrew/opt/sqlite/lib -lsqlite3",
		},
		{
			name:  "INIReader library",
			input: "-L/opt/homebrew/Cellar/inih/58/lib -lINIReader",
		},
		{
			name:  "Multiple library paths",
			input: "-L/opt/homebrew/lib -L/usr/lib -llua",
		},
		{
			name:  "No valid library",
			input: "-L/opt/homebrew/lib",
		},
	}

	for _, tc := range testCases {
		fmt.Printf("Test case: %s\n", tc.name)
		fmt.Printf("Input: %s\n", tc.input)

		conf := cfgparse.ParseLibs(tc.input)

		fmt.Println("Paths:", conf.Paths)
		fmt.Println("Names:", conf.Names)
	}
}

func TestGenDylibPaths() {
	fmt.Println("=== Test GenDylibPaths ===")

	tempDir := os.TempDir()
	tempDefaultPath := filepath.Join(tempDir, "symblib")
	affix := ".dylib"
	if runtime.GOOS == "linux" {
		affix = ".so"
	}
	err := os.MkdirAll(tempDefaultPath, 0755)
	if err != nil {
		fmt.Printf("Failed to create temp default path: %v\n", err)
		return
	}

	dylib1 := filepath.Join(tempDir, "libsymb1"+affix)
	dylib2 := filepath.Join(tempDir, "libsymb2"+affix)
	defaultDylib3 := filepath.Join(tempDefaultPath, "libsymb3"+affix)

	os.Create(dylib1)
	os.Create(dylib2)
	os.Create(defaultDylib3)
	defer os.Remove(dylib1)
	defer os.Remove(dylib2)
	defer os.Remove(defaultDylib3)
	defer os.Remove(tempDefaultPath)

	testCase := []struct {
		name         string
		conf         *cfgparse.Libs
		defaultPaths []string
		want         []string
	}{
		{
			name: "existing dylib",
			conf: &cfgparse.Libs{
				Names: []string{"symb1"},
				Paths: []string{tempDir},
			},
			defaultPaths: []string{},
			want:         []string{dylib1},
		},
		{
			name: "existing dylibs",
			conf: &cfgparse.Libs{
				Names: []string{"symb1", "symb2"},
				Paths: []string{tempDir},
			},
			defaultPaths: []string{},
			want:         []string{dylib1, dylib2},
		},
		{
			name: "existint default paths",
			conf: &cfgparse.Libs{
				Names: []string{"symb1", "symb3"},
				Paths: []string{tempDir},
			},
			defaultPaths: []string{tempDefaultPath},
			want:         []string{dylib1, defaultDylib3},
		},
		{
			name: "existint default paths & not found",
			conf: &cfgparse.Libs{
				Names: []string{"symb1", "symb3", "math"},
				Paths: []string{tempDir},
			},
			defaultPaths: []string{tempDefaultPath},
			want:         []string{dylib1, defaultDylib3},
		},
		{
			name: "no existing dylib",
			conf: &cfgparse.Libs{
				Names: []string{"notexist"},
				Paths: []string{tempDir},
			},
			want: []string{},
		},
	}
	for _, tc := range testCase {
		fmt.Printf("Test case: %s\n", tc.name)
		paths, notFounds, err := tc.conf.GenDylibPaths(tc.defaultPaths)

		if len(notFounds) > 0 {
			fmt.Println("notFounds", notFounds)
		}

		if err != nil {
			fmt.Printf("Error: %v\n", err)
		}

		for _, path := range paths {
			found := false
			for _, wantPath := range tc.want {
				if path == wantPath {
					found = true
					fileName := filepath.Base(path)
					if runtime.GOOS == "linux" {
						fileName = strings.TrimSuffix(fileName, ".so")
					} else {
						fileName = strings.TrimSuffix(fileName, ".dylib")
					}
					fmt.Printf("Path %s is in the expected paths\n", fileName)
					break
				}
			}
			if !found {
				fmt.Printf("Path %s is not in the expected paths\n", path)
			}
		}

	}
}

func TestParseCFlags() {
	fmt.Println("=== Test ParseCFlags ===")

	testCases := []struct {
		name  string
		input string
	}{
		{
			name:  "Single include path",
			input: "-I/usr/include",
		},
		{
			name:  "Multiple include paths",
			input: "-I/usr/include -I/opt/homebrew/include",
		},
		{
			name:  "Include paths mixed with other flags",
			input: "-I/usr/include -DDEBUG -I/opt/local/include -Wall",
		},
		{
			name:  "Empty input",
			input: "",
		},
	}

	for _, tc := range testCases {
		fmt.Printf("Test case: %s\n", tc.name)
		fmt.Printf("Input: %s\n", tc.input)

		conf := cfgparse.ParseCFlags(tc.input)

		fmt.Println("Paths:", conf.Paths)
	}
}

func TestGenHeaderFilePath() {
	fmt.Println("=== Test GenHeaderFilePath ===")

	tempDir := os.TempDir()
	temDir2 := filepath.Join(tempDir, "include")
	tempFile1 := filepath.Join(tempDir, "test1.h")
	tempFile2 := filepath.Join(tempDir, "test2.h")
	tempFile3 := filepath.Join(temDir2, "test3.h")
	os.MkdirAll(temDir2, 0755)
	os.Create(tempFile1)
	os.Create(tempFile2)
	os.Create(tempFile3)
	defer os.Remove(tempFile1)
	defer os.Remove(tempFile2)
	defer os.Remove(tempFile3)
	defer os.Remove(temDir2)

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
			name:   "Multiple include paths",
			cflags: "-I" + tempDir + " -I" + temDir2,
			files:  []string{"test1.h", "test2.h", "test3.h"},
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

		cflag := cfgparse.ParseCFlags(tc.cflags)
		result, notFounds, err := cflag.GenHeaderFilePaths(tc.files)

		if err != nil {
			fmt.Printf("Error: %v\n", err)
		}
		if len(notFounds) > 0 {
			fmt.Println("notFounds", notFounds)
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
