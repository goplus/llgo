package main

import (
	"fmt"

	"github.com/goplus/llgo/chore/_xtool/llcppsymg/dylib"
)

func TestGenDylibPaths() {
	fmt.Println("=== Test GenDylibPaths ===")

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
			name:  "No valid library",
			input: "-L/opt/homebrew/lib",
		},
	}

	for _, tc := range testCases {
		fmt.Printf("Test case: %s\n", tc.name)
		fmt.Printf("Input: %s\n", tc.input)

		result, err := dylib.GenDylibPaths(tc.input)

		if err != nil {
			fmt.Printf("Error: %v\n", err)
		} else {
			fmt.Printf("Output: %v\n", result)
		}
		fmt.Println()
	}
}

func main() {
	TestGenDylibPaths()
}
