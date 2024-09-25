package main

import (
	"fmt"
	"os"

	"github.com/goplus/llgo/chore/_xtool/llcppsymg/parse"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/symbol"
	"github.com/goplus/llgo/xtool/nm"
)

func main() {
	TestParseHeaderFile()
}
func TestParseHeaderFile() {
	testCases := []struct {
		name            string
		content         string
		isCpp           bool
		prefixes        []string
		dylibSymbols    []*nm.Symbol
		symbFileContent string
	}{
		{
			name: "inireader",
			content: `
#define INI_API __attribute__((visibility("default")))
class INIReader {
  public:
    __attribute__((visibility("default"))) explicit INIReader(const char *filename);
    INI_API explicit INIReader(const char *buffer, long buffer_size);
    ~INIReader();
    INI_API int ParseError() const;
	INI_API const char * Get(const char *section, const char *name,
						const char *default_value) const;
  private:
    static const char * MakeKey(const char *section, const char *name);
};
            `,
			isCpp:    true,
			prefixes: []string{"INI"},
			dylibSymbols: []*nm.Symbol{
				{Name: "__ZN9INIReaderC1EPKc"},
				{Name: "__ZN9INIReaderC1EPKcl"},
				{Name: "__ZN9INIReaderD1Ev"},
				{Name: "__ZNK9INIReader10ParseErrorEv"},
				{Name: "__ZNK9INIReader3GetEPKcS1_S1_"},
			},
			symbFileContent: `
[{
		"mangle":       "_ZN9INIReaderC1EPKc",
		"c++":  "INIReader::INIReader(const char *)",
		"go":   "(*Reader).Init"
}, {
		"mangle":       "_ZN9INIReaderC1EPKcl",
		"c++":  "INIReader::INIReader(const char *, long)",
		"go":   "(*Reader).Init__1"
}, {
		"mangle":       "_ZN9INIReaderD1Ev",
		"c++":  "INIReader::~INIReader()",
		"go":   "(*Reader).Dispose"
}, {
		"mangle":       "_ZNK9INIReader10ParseErrorEv",
		"c++":  "INIReader::ParseError()",
		"go":   "(*Reader).ModifyedParseError"
}]`,
		},
		{
			name: "lua",
			content: `
typedef struct lua_State lua_State;

LUA_API int(lua_error)(lua_State *L);

LUA_API int(lua_next)(lua_State *L, int idx);

LUA_API void(lua_concat)(lua_State *L, int n);
LUA_API void(lua_len)(lua_State *L, int idx);

LUA_API long unsigned int(lua_stringtonumber)(lua_State *L, const char *s);

LUA_API void(lua_setallocf)(lua_State *L, lua_Alloc f, void *ud);

LUA_API void(lua_toclose)(lua_State *L, int idx);
LUA_API void(lua_closeslot)(lua_State *L, int idx);
            `,
			isCpp:    false,
			prefixes: []string{"lua_"},
			dylibSymbols: []*nm.Symbol{
				{Name: "_lua_error"},
				{Name: "_lua_next"},
				{Name: "_lua_concat"},
				{Name: "_lua_stringtonumber"},
			},
		},
	}

	for _, tc := range testCases {
		fmt.Printf("=== Test Case: %s ===\n", tc.name)
		headerSymbolMap, err := parse.ParseHeaderFile([]string{tc.content}, tc.prefixes, tc.isCpp, true)
		if err != nil {
			fmt.Println("Error:", err)
		}
		tmpFile, err := os.CreateTemp("", "llcppg.symb.json")
		if err != nil {
			fmt.Printf("Failed to create temp file: %v\n", err)
			return
		}
		tmpFile.Write([]byte(tc.symbFileContent))
		symbolData, err := symbol.GenerateAndUpdateSymbolTable(tc.dylibSymbols, headerSymbolMap, tmpFile.Name())
		if err != nil {
			fmt.Println("Error:", err)
		}
		fmt.Println(string(symbolData))
		os.Remove(tmpFile.Name())
	}
}
