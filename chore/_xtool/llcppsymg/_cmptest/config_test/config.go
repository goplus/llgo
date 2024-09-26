package main

import (
	"fmt"
	"strings"

	"github.com/goplus/llgo/chore/_xtool/llcppsymg/config"
)

func main() {
	TestGetConf()
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
