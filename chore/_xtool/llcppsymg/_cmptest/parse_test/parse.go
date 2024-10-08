package main

import (
	"fmt"
	"os"
	"path/filepath"
	"sort"

	"github.com/goplus/llgo/chore/_xtool/llcppsymg/parse"
)

func main() {
	TestGenHeaderFilePath()
	TestNewSymbolProcessor()
	TestRemovePrefix()
	TestToGoName()
	TestGenMethodName()
	TestAddSuffix()
	TestParseHeaderFile()
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

		result, err := parse.GenHeaderFilePath(tc.cflags, tc.files)

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

func TestNewSymbolProcessor() {
	fmt.Println("=== Test NewSymbolProcessor ===")
	process := parse.NewSymbolProcessor([]string{"lua_", "luaL_"})
	fmt.Printf("Before: No prefixes After: Prefixes: %v\n", process.Prefixes)
	fmt.Println()
}

func TestRemovePrefix() {
	fmt.Println("=== Test RemovePrefix ===")
	process := parse.NewSymbolProcessor([]string{"lua_", "luaL_"})

	testCases := []string{"lua_closethread", "luaL_checknumber"}

	for _, input := range testCases {
		result := process.TrimPrefixes(input)
		fmt.Printf("Before: %s After: %s\n", input, result)
	}
	fmt.Println()
}

func TestToGoName() {
	fmt.Println("=== Test ToGoName ===")
	process1 := parse.NewSymbolProcessor([]string{"lua_", "luaL_"})
	process2 := parse.NewSymbolProcessor([]string{"sqlite3_", "sqlite3_"})
	process3 := parse.NewSymbolProcessor([]string{"INI"})

	testCases := []struct {
		processor *parse.SymbolProcessor
		input     string
	}{
		{process1, "lua_closethread"},
		{process1, "luaL_checknumber"},
		{process2, "sqlite3_close_v2"},
		{process2, "sqlite3_callback"},
		{process3, "GetReal"},
		{process3, "GetBoolean"},
		{process3, "INIReader"},
	}

	for _, tc := range testCases {
		result := tc.processor.ToGoName(tc.input)
		fmt.Printf("Before: %s After: %s\n", tc.input, result)
	}
	fmt.Println()
}

func TestGenMethodName() {
	fmt.Println("=== Test GenMethodName ===")
	process := &parse.SymbolProcessor{}

	testCases := []struct {
		class        string
		name         string
		isDestructor bool
	}{
		{"INIReader", "INIReader", false},
		{"INIReader", "INIReader", true},
		{"INIReader", "HasValue", false},
	}
	for _, tc := range testCases {
		input := fmt.Sprintf("Class: %s, Name: %s", tc.class, tc.name)
		result := process.GenMethodName(tc.class, tc.name, tc.isDestructor)
		fmt.Printf("Before: %s After: %s\n", input, result)
	}
	fmt.Println()
}

func TestAddSuffix() {
	fmt.Println("=== Test AddSuffix ===")
	process := parse.NewSymbolProcessor([]string{"INI"})
	methods := []string{
		"INIReader",
		"INIReader",
		"ParseError",
		"HasValue",
	}
	for _, method := range methods {
		goName := process.ToGoName(method)
		className := process.ToGoName("INIReader")
		methodName := process.GenMethodName(className, goName, false)
		finalName := process.AddSuffix(methodName)
		input := fmt.Sprintf("Class: INIReader, Method: %s", method)
		fmt.Printf("Before: %s After: %s\n", input, finalName)
	}
	fmt.Println()
}

func TestParseHeaderFile() {
	testCases := []struct {
		name     string
		content  string
		isCpp    bool
		prefixes []string
	}{
		{
			name: "C++ Class with Methods",
			content: `
class INIReader {
  public:
    INIReader(const std::string &filename);
    INIReader(const char *buffer, size_t buffer_size);
    ~INIReader();
    int ParseError() const;
  private:
    static std::string MakeKey(const std::string &section, const std::string &name);
};
            `,
			isCpp:    true,
			prefixes: []string{"INI"},
		},
		{
			name: "C Functions",
			content: `
typedef struct lua_State lua_State;
int(lua_rawequal)(lua_State *L, int idx1, int idx2);
int(lua_compare)(lua_State *L, int idx1, int idx2, int op);
            `,
			isCpp:    false,
			prefixes: []string{"lua_"},
		},
	}

	for _, tc := range testCases {
		fmt.Printf("=== Test Case: %s ===\n", tc.name)

		symbolMap, err := parse.ParseHeaderFile([]string{tc.content}, tc.prefixes, tc.isCpp, true)

		if err != nil {
			fmt.Printf("Error: %v\n", err)
			continue
		}

		fmt.Println("Parsed Symbols:")

		var keys []string
		for key := range symbolMap {
			keys = append(keys, key)
		}
		sort.Strings(keys)

		for _, key := range keys {
			info := symbolMap[key]
			fmt.Printf("Symbol Map GoName: %s, ProtoName In HeaderFile: %s, MangledName: %s\n", info.GoName, info.ProtoName, key)
		}
		fmt.Println()
	}
}
