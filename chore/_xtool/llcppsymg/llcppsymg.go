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
	"errors"
	"fmt"
	"io"
	"os"
	"strings"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/config"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/dylib"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/header"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/parse"
	"github.com/goplus/llgo/chore/llcppg/types"
	"github.com/goplus/llgo/xtool/nm"
)

func main() {
	cfgFile := "llcppg.cfg"
	if len(os.Args) > 1 {
		cfgFile = os.Args[1]
	}

	var data []byte
	var err error
	if cfgFile == "-" {
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
	symbols, err := dylib.ParseDylibSymbols(conf.Libs)
	check(err)

	filepaths, err := header.GenHeaderFilePath(conf.CFlags, conf.Include)
	check(err)
	headerInfos, err := parse.ParseHeaderFile(filepaths, conf.TrimPrefixes, conf.Cplusplus, false)
	check(err)

	symbolInfo := getCommonSymbols(symbols, headerInfos, conf.TrimPrefixes)

	err = genSymbolTableFile(symbolInfo)
	check(err)
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

func getCommonSymbols(dylibSymbols []*nm.Symbol, symbolMap map[string]*parse.SymbolInfo, prefix []string) []*types.SymbolInfo {
	var commonSymbols []*types.SymbolInfo
	for _, dylibSym := range dylibSymbols {
		symName := strings.TrimPrefix(dylibSym.Name, "_")
		if symInfo, ok := symbolMap[symName]; ok {
			symbolInfo := &types.SymbolInfo{
				Mangle: symName,
				CPP:    symInfo.ProtoName,
				Go:     symInfo.GoName,
			}
			commonSymbols = append(commonSymbols, symbolInfo)
		}
	}
	return commonSymbols
}

func genSymbolTableFile(symbolInfos []*types.SymbolInfo) error {
	fileName := "llcppg.symb.json"
	existingSymbols, err := readExistingSymbolTable(fileName)
	if err != nil {
		return err
	}

	for i := range symbolInfos {
		if existingSymbol, exists := existingSymbols[symbolInfos[i].Mangle]; exists {
			symbolInfos[i].Go = existingSymbol.Go
		}
	}

	root := cjson.Array()
	defer root.Delete()

	for _, symbol := range symbolInfos {
		item := cjson.Object()
		item.SetItem(c.Str("mangle"), cjson.String(c.AllocaCStr(symbol.Mangle)))
		item.SetItem(c.Str("c++"), cjson.String(c.AllocaCStr(symbol.CPP)))
		item.SetItem(c.Str("go"), cjson.String(c.AllocaCStr(symbol.Go)))
		root.AddItem(item)
	}

	cStr := root.Print()
	if cStr == nil {
		return errors.New("symbol table is empty")
	}
	defer c.Free(unsafe.Pointer(cStr))

	data := unsafe.Slice((*byte)(unsafe.Pointer(cStr)), c.Strlen(cStr))

	if err := os.WriteFile(fileName, data, 0644); err != nil {
		return errors.New("failed to write symbol table file")
	}
	return nil
}

func readExistingSymbolTable(fileName string) (map[string]types.SymbolInfo, error) {
	existingSymbols := make(map[string]types.SymbolInfo)

	if _, err := os.Stat(fileName); err != nil {
		return existingSymbols, nil
	}

	data, err := os.ReadFile(fileName)
	if err != nil {
		return nil, errors.New("failed to read symbol table file")
	}

	parsedJSON := cjson.ParseBytes(data)
	if parsedJSON == nil {
		return nil, errors.New("failed to parse JSON")
	}

	arraySize := parsedJSON.GetArraySize()

	for i := 0; i < int(arraySize); i++ {
		item := parsedJSON.GetArrayItem(c.Int(i))
		if item == nil {
			continue
		}
		symbol := types.SymbolInfo{
			Mangle: config.GetStringItem(item, "mangle", ""),
			CPP:    config.GetStringItem(item, "c++", ""),
			Go:     config.GetStringItem(item, "go", ""),
		}
		existingSymbols[symbol.Mangle] = symbol
	}

	return existingSymbols, nil
}
