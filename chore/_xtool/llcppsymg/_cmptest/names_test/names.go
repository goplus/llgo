package main

import (
	"fmt"

	"github.com/goplus/llgo/chore/_xtool/llcppsymg/names"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/parse"
)

func main() {
	TestToGoName()
}

func TestToGoName() {
	fmt.Println("=== Test ToGoName ===")
	process1 := parse.NewSymbolProcessor([]string{}, []string{"lua_", "luaL_"})
	process2 := parse.NewSymbolProcessor([]string{}, []string{"sqlite3_", "sqlite3_"})
	process3 := parse.NewSymbolProcessor([]string{}, []string{"INI"})

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
		result := names.GoName(tc.input, tc.processor.Prefixes, true)
		fmt.Printf("Before: %s After: %s\n", tc.input, result)
	}
	fmt.Println()
}
