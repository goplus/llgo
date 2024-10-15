package main

import (
	"fmt"
	"os"
	"path/filepath"
	"runtime"
	"sort"
	"strings"

	"github.com/goplus/llgo/chore/_xtool/llcppsymg/parse"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/symbol"
	"github.com/goplus/llgo/chore/llcppg/types"
	"github.com/goplus/llgo/xtool/nm"
)

func main() {
	TestParseLibConfig()
	TestGenDylibPaths()
	TestGetCommonSymbols()
	TestReadExistingSymbolTable()
	TestGenSymbolTableData()
}
func TestParseLibConfig() {
	fmt.Println("=== Test ParseLibConfig ===")

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

		conf := symbol.ParseLibConfig(tc.input)

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
		conf         *symbol.LibConfig
		defaultPaths []string
		want         []string
		wantErr      bool
	}{
		{
			name: "existing dylib",
			conf: &symbol.LibConfig{
				Names: []string{"symb1"},
				Paths: []string{tempDir},
			},
			defaultPaths: []string{},
			want:         []string{dylib1},
		},
		{
			name: "existing dylibs",
			conf: &symbol.LibConfig{
				Names: []string{"symb1", "symb2"},
				Paths: []string{tempDir},
			},
			defaultPaths: []string{},
			want:         []string{dylib1, dylib2},
		},
		{
			name: "existint default paths",
			conf: &symbol.LibConfig{
				Names: []string{"symb1", "symb3"},
				Paths: []string{tempDir},
			},
			defaultPaths: []string{tempDefaultPath},
			want:         []string{dylib1, defaultDylib3},
		},
		{
			name: "no existing dylib",
			conf: &symbol.LibConfig{
				Names: []string{"notexist"},
				Paths: []string{tempDir},
			},
			want:    []string{},
			wantErr: true,
		},
	}
	for _, tc := range testCase {
		fmt.Printf("Test case: %s\n", tc.name)
		paths, err := symbol.GenDylibPaths(tc.conf, tc.defaultPaths)

		if tc.wantErr {
			if err == nil {
				fmt.Printf("Expected error, but got nil\n")
			}
		} else {
			if err != nil {
				fmt.Printf("Unexpected error: %v\n", err)
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

}
func TestGetCommonSymbols() {
	fmt.Println("=== Test GetCommonSymbols ===")
	testCases := []struct {
		name          string
		dylibSymbols  []*nm.Symbol
		headerSymbols map[string]*parse.SymbolInfo
	}{
		{
			name: "Lua symbols",
			dylibSymbols: []*nm.Symbol{
				{Name: "_lua_absindex"},
				{Name: "_lua_arith"},
				{Name: "_lua_atpanic"},
				{Name: "_lua_callk"},
				{Name: "_lua_lib_nonexistent"},
			},
			headerSymbols: map[string]*parse.SymbolInfo{
				"lua_absindex":           {ProtoName: "lua_absindex(lua_State *, int)", GoName: "Absindex"},
				"lua_arith":              {ProtoName: "lua_arith(lua_State *, int)", GoName: "Arith"},
				"lua_atpanic":            {ProtoName: "lua_atpanic(lua_State *, lua_CFunction)", GoName: "Atpanic"},
				"lua_callk":              {ProtoName: "lua_callk(lua_State *, int, int, lua_KContext, lua_KFunction)", GoName: "Callk"},
				"lua_header_nonexistent": {ProtoName: "lua_header_nonexistent()", GoName: "HeaderNonexistent"},
			},
		},
		{
			name: "INIReader and Std library symbols",
			dylibSymbols: []*nm.Symbol{
				{Name: "_ZNK9INIReader12GetInteger64ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_x"},
				{Name: "_ZNK9INIReader7GetRealERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_d"},
				{Name: "_ZNK9INIReader10ParseErrorEv"},
			},
			headerSymbols: map[string]*parse.SymbolInfo{
				"ZNK9INIReader12GetInteger64ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_x":  {GoName: "(*Reader).GetInteger64", ProtoName: "INIReader::GetInteger64(const std::string &, const std::string &, int64_t)"},
				"ZNK9INIReader13GetUnsigned64ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_y": {GoName: "(*Reader).GetUnsigned64", ProtoName: "INIReader::GetUnsigned64(const std::string &, const std::string &, uint64_t)"},
				"ZNK9INIReader7GetRealERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_d":        {GoName: "(*Reader).GetReal", ProtoName: "INIReader::GetReal(const std::string &, const std::string &, double)"},
				"ZNK9INIReader10ParseErrorEv": {GoName: "(*Reader).ParseError", ProtoName: "INIReader::ParseError()"},
				"ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_b": {GoName: "(*Reader).GetBoolean", ProtoName: "INIReader::GetBoolean(const std::string &, const std::string &, bool)"},
			},
		},
	}

	for _, tc := range testCases {
		fmt.Printf("\nTest Case: %s\n", tc.name)
		commonSymbols := symbol.GetCommonSymbols(tc.dylibSymbols, tc.headerSymbols)
		fmt.Printf("Common Symbols (%d):\n", len(commonSymbols))
		for _, sym := range commonSymbols {
			fmt.Printf("Mangle: %s, CPP: %s, Go: %s\n", sym.Mangle, sym.CPP, sym.Go)
		}
	}
	fmt.Println()
}
func TestReadExistingSymbolTable() {
	fmt.Println("=== Test ReadExistingSymbolTable ===")

	tmpFile, err := os.CreateTemp("", "llcppg.symb.json")
	if err != nil {
		fmt.Printf("Failed to create temp file: %v\n", err)
		return
	}
	defer os.Remove(tmpFile.Name())

	testData := `[
		{
			"mangle": "_ZN9INIReaderC1EPKcm",
			"c++": "INIReader::INIReader(const char *, size_t)",
			"go": "(*Reader).Init__1"
		},
		{
			"mangle": "_ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_b",
			"c++": "INIReader::GetBoolean(const std::string &, const std::string &, bool)",
			"go": "(*Reader).GetBoolean"
		},
		{
			"mangle": "_ZNK9INIReader10ParseErrorEv",
			"c++": "INIReader::ParseError()",
			"go": "(*Reader).ParseError"
		}
	]`
	if _, err := tmpFile.Write([]byte(testData)); err != nil {
		fmt.Printf("Failed to write test data: %v\n", err)
		return
	}
	tmpFile.Close()

	symbols, exist := symbol.ReadExistingSymbolTable(tmpFile.Name())
	if !exist {
		fmt.Printf("ReadExistingSymbolTable failed")
		return
	}

	fmt.Println("Symbols read from the file:")
	var keys []string
	for key := range symbols {
		keys = append(keys, key)
	}
	sort.Strings(keys)

	for _, key := range keys {
		info := symbols[key]
		fmt.Printf("Symbol Map GoName: %s, ProtoName In HeaderFile: %s, MangledName: %s\n",
			info.Go, info.CPP, key)
	}

	_, exist = symbol.ReadExistingSymbolTable("other.json")
	if !exist {
		fmt.Println("Havent existed symb file")
	}
	fmt.Println()
}
func TestGenSymbolTableData() {
	fmt.Println("=== Test GenSymbolTableData ===")

	commonSymbols := []*types.SymbolInfo{
		{Mangle: "lua_absindex", CPP: "lua_absindex(lua_State *, int)", Go: "Absindex"},
		{Mangle: "lua_arith", CPP: "lua_arith(lua_State *, int)", Go: "Arith"},
		{Mangle: "lua_atpanic", CPP: "lua_atpanic(lua_State *, lua_CFunction)", Go: "Atpanic"},
		{Mangle: "lua_callk", CPP: "lua_callk(lua_State *, int, int, lua_KContext, lua_KFunction)", Go: "Callk"},
	}

	existingSymbols := map[string]types.SymbolInfo{
		"lua_absindex": {Mangle: "lua_absindex", CPP: "lua_absindex(lua_State *, int)", Go: "Absindex"},
		"lua_arith":    {Mangle: "lua_arith", CPP: "lua_arith(lua_State *, int)", Go: "Arith"},
		"lua_callk":    {Mangle: "lua_callk", CPP: "lua_callk(lua_State *, int, int, lua_KContext, lua_KFunction)", Go: "ModifiedCallk"},
	}

	data, err := symbol.GenSymbolTableData(commonSymbols, existingSymbols)
	if err != nil {
		fmt.Printf("Error generating symbol table data: %v\n", err)
		return
	}
	fmt.Println(string(data))
	fmt.Println()
}
