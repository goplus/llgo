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
	"strings"

	"github.com/goplus/llgo/chore/_xtool/llcppsymg/config"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/parse"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/symbol"
)

func main() {
	cfgFile := "llcppg.cfg"
	symbFile := "llcppg.symb.json"
	verbose := false
	readStdin := false

	for i := 1; i < len(os.Args); i++ {
		arg := os.Args[i]
		if arg == "-" {
			readStdin = true
		} else if arg == "-v" {
			verbose = true
		} else if !strings.HasPrefix(arg, "-") {
			cfgFile = arg
			break
		}
	}

	var data []byte
	var err error
	if readStdin {
		data, err = io.ReadAll(os.Stdin)
	} else {
		data, err = os.ReadFile(cfgFile)
	}

	check(err)
	conf, err := config.GetConf(data)
	check(err)
	defer conf.Delete()

	if verbose {
		symbol.SetDebug(symbol.DbgFlagAll)
		if readStdin {
			fmt.Println("Config From Stdin")
		} else {
			fmt.Println("Config From File", cfgFile)
		}
		fmt.Println("Name:", conf.Name)
		fmt.Println("CFlags:", conf.CFlags)
		fmt.Println("Libs:", conf.Libs)
		fmt.Println("Include:", conf.Include)
		fmt.Println("TrimPrefixes:", conf.TrimPrefixes)
		fmt.Println("Cplusplus:", conf.Cplusplus)
	}

	if err != nil {
		fmt.Fprintln(os.Stderr, "Failed to parse config file:", cfgFile)
	}
	symbols, err := symbol.ParseDylibSymbols(conf.Libs)
	check(err)

	filepaths, err := parse.GenHeaderFilePath(conf.CFlags, conf.Include)
	check(err)

	if verbose {
		fmt.Println("filepaths", filepaths)
	}

	headerInfos, err := parse.ParseHeaderFile(filepaths, conf.TrimPrefixes, conf.Cplusplus, false)
	check(err)

	symbolData, err := symbol.GenerateAndUpdateSymbolTable(symbols, headerInfos, symbFile)
	check(err)

	err = os.WriteFile(symbFile, symbolData, 0644)
	check(err)
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
