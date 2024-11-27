package main

import (
	"fmt"
	"sort"

	"github.com/goplus/llgo/chore/_xtool/llcppsymg/names"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/parse"
)

func main() {
	TestNewSymbolProcessor()
	TestGenMethodName()
	TestAddSuffix()
	TestParseHeaderFile()
}

func TestNewSymbolProcessor() {
	fmt.Println("=== Test NewSymbolProcessor ===")
	process := parse.NewSymbolProcessor([]string{}, []string{"lua_", "luaL_"})
	fmt.Printf("Before: No prefixes After: Prefixes: %v\n", process.Prefixes)
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
		result := process.GenMethodName(tc.class, tc.name, tc.isDestructor, true)
		fmt.Printf("Before: %s After: %s\n", input, result)
	}
	fmt.Println()
}

func TestAddSuffix() {
	fmt.Println("=== Test AddSuffix ===")
	process := parse.NewSymbolProcessor([]string{}, []string{"INI"})
	methods := []string{
		"INIReader",
		"INIReader",
		"ParseError",
		"HasValue",
	}
	for _, method := range methods {
		goName := names.GoName(method, process.Prefixes, true)
		className := names.GoName("INIReader", process.Prefixes, true)
		methodName := process.GenMethodName(className, goName, false, true)
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
int(lua_sizecomp)(size_t s, int idx1, int idx2, int op);
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
