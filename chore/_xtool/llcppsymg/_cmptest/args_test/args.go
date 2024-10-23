package main

import (
	"fmt"

	"github.com/goplus/llgo/chore/_xtool/llcppsymg/args"
)

func main() {
	TestParseArgs()
}

func TestParseArgs() {
	fmt.Println("=== Test ParseArgs ===")

	swflags := map[string]bool{
		"--extract": true,
	}

	testCases := []struct {
		name  string
		input []string
	}{
		{
			name:  "Basic flags",
			input: []string{"-h", "-v", "-"},
		},
		{
			name:  "Config file",
			input: []string{"lua.llcppg.cfg"},
		},
		{
			name:  "Extract with multiple args",
			input: []string{"--extract", "file1.h", "file2.h", "-v"},
		},
		{
			name:  "Non-skippable flags",
			input: []string{"--extract", "file1.h", "file2.h", "-out=true", "-cpp=true", "-v"},
		},
		{
			name:  "Mixed flags",
			input: []string{"-v", "--extract", "file.h", "-out=true", "config.json"},
		},
		{
			name:  "Empty input",
			input: []string{},
		},
	}

	for _, tc := range testCases {
		fmt.Printf("Test case: %s\n", tc.name)
		fmt.Printf("Input: %v\n", tc.input)

		result, filteredArgs := args.ParseArgs(tc.input, swflags)

		fmt.Printf("Help: %v\n", result.Help)
		fmt.Printf("Verbose: %v\n", result.Verbose)
		fmt.Printf("UseStdin: %v\n", result.UseStdin)
		fmt.Printf("CfgFile: %s\n", result.CfgFile)
		fmt.Printf("FilteredArgs: %v\n", filteredArgs)
		fmt.Println()
	}
}
