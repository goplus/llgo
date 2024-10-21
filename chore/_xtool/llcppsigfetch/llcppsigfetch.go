/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package main

import (
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strconv"
	"strings"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/args"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/clangutils"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/config"
)

func main() {
	ags, remainArgs := args.ParseArgs(os.Args[1:], map[string]bool{
		"--extract": true,
	})

	if ags.Help {
		printUsage()
		return
	}
	extract := false
	out := false

	var extractFile string
	isTemp := false
	isCpp := true
	otherArgs := []string{}

	for i := 0; i < len(remainArgs); i++ {
		arg := remainArgs[i]
		switch {
		case arg == "--extract":
			extract = true
			if i+1 < len(remainArgs) && !strings.HasPrefix(remainArgs[i+1], "-") {
				extractFile = remainArgs[i+1]
				i++
			} else {
				fmt.Println("Error: --extract requires a valid file argument")
				printUsage()
				os.Exit(1)
			}
		case strings.HasPrefix(arg, "-out="):
			out = parseBoolArg(arg, "out", false)
		case strings.HasPrefix(arg, "-temp="):
			isTemp = parseBoolArg(arg, "temp", false)
		case strings.HasPrefix(arg, "-cpp="):
			isCpp = parseBoolArg(arg, "cpp", true)
		default:
			otherArgs = append(otherArgs, arg)
		}
	}

	if extract {
		runExtract(extractFile, isTemp, isCpp, out, otherArgs)
	} else {
		runFromConfig(ags.CfgFile, ags.UseStdin, out)
	}

}

func printUsage() {
	fmt.Println("Usage:")
	fmt.Println("  llcppsigfetch [<config_file>] [-out=<bool>]")
	fmt.Println("  OR")
	fmt.Println("  llcppsigfetch --extract <file> [-out=<bool>] [-temp=<bool>] [-cpp=<bool>] [args...]")
	fmt.Println("")
	fmt.Println("Options:")
	fmt.Println("  [<config_file>]: Path to the configuration file (use '-' for stdin)")
	fmt.Println("                   If not provided, uses default 'llcppg.cfg'")
	fmt.Println("  -out=<bool>:     Optional. Set to 'true' to output results to a file,")
	fmt.Println("                   'false' (default) to output to stdout")
	fmt.Println("                   This option can be used with both modes")
	fmt.Println("")
	fmt.Println("  --extract:       Extract information from a single file")
	fmt.Println("    <file>:        Path to the file to process, or file content if -temp=true")
	fmt.Println("    -temp=<bool>:  Optional. Set to 'true' if <file> contains file content,")
	fmt.Println("                   'false' (default) if it's a file path")
	fmt.Println("    -cpp=<bool>:   Optional. Set to 'true' if the language is C++ (default: true)")
	fmt.Println("                   If not present, <file> is a file path")
	fmt.Println("    [args]:        Optional additional arguments")
	fmt.Println("                   Default for C++: -x c++")
	fmt.Println("                   Default for C: -x c")
	fmt.Println("")
	fmt.Println("  --help, -h:      Show this help message")
	fmt.Println("")
	fmt.Println("Note: The two usage modes are mutually exclusive. Use either [<config_file>] OR --extract, not both.")
}

func runFromConfig(cfgFile string, useStdin bool, outputToFile bool) {
	var data []byte
	var err error
	if useStdin {
		data, err = io.ReadAll(os.Stdin)
	} else {
		data, err = os.ReadFile(cfgFile)
	}
	check(err)

	conf, err := config.GetConf(data)
	check(err)
	defer conf.Delete()

	if err != nil {
		fmt.Fprintln(os.Stderr, "Failed to parse config file:", cfgFile)
	}

	files := getHeaderFiles(conf.CFlags, conf.Include)

	context := parse.NewContext(conf.Cplusplus)
	err = context.ProcessFiles(files)
	check(err)

	outputInfo(context, outputToFile)
}

func runExtract(file string, isTemp bool, isCpp bool, outToFile bool, otherArgs []string) {
	cfg := &clangutils.Config{
		File:  file,
		Args:  otherArgs,
		IsCpp: isCpp,
		Temp:  isTemp,
	}
	converter, err := parse.NewConverter(cfg)
	check(err)
	_, err = converter.Convert()
	check(err)
	result := converter.MarshalOutputASTFiles()
	cstr := result.Print()
	outputResult(cstr, outToFile)
	cjson.FreeCStr(cstr)
	result.Delete()
	converter.Dispose()
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

func outputResult(result *c.Char, outputToFile bool) {
	if outputToFile {
		outputFile := "llcppg.sigfetch.json"
		err := os.WriteFile(outputFile, []byte(c.GoString(result)), 0644)
		if err != nil {
			fmt.Fprintf(os.Stderr, "Error writing to output file: %v\n", err)
			os.Exit(1)
		}
		fmt.Printf("Results saved to %s\n", outputFile)
	} else {
		c.Printf(result)
	}
}

func getHeaderFiles(cflags string, files []string) []string {
	prefix := cflags
	prefix = strings.TrimPrefix(prefix, "-I")
	var paths []string
	for _, f := range files {
		paths = append(paths, filepath.Join(prefix, f))
	}
	return paths
}

func outputInfo(context *parse.Context, outputToFile bool) {
	info := context.Output()
	str := info.Print()
	defer cjson.FreeCStr(str)
	defer info.Delete()
	outputResult(str, outputToFile)
}

func parseBoolArg(arg, name string, defaultValue bool) bool {
	parts := strings.SplitN(arg, "=", 2)
	if len(parts) != 2 {
		fmt.Printf("Warning: Invalid -%s= argument, defaulting to %v\n", name, defaultValue)
		return defaultValue
	}
	value, err := strconv.ParseBool(parts[1])
	if err != nil {
		fmt.Printf("Warning: Invalid -%s= value '%s', defaulting to %v\n", name, parts[1], defaultValue)
		return defaultValue
	}
	return value
}
