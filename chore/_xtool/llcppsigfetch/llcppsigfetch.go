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
	"strings"

	"github.com/goplus/llgo/chore/_xtool/llcppsymg/config"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type FileInfo struct {
	Path string   `json:"path"`
	Doc  ast.File `json:"doc"`
}

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

	files := getHeaderFiles(conf.CFlags, conf.Include)

	fileInfos, err := processHeaderFiles(files)
	check(err)

	outputInfo(fileInfos)
}

func check(err error) {
	if err != nil {
		panic(err)
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

func outputInfo(fileInfos []FileInfo) {
	// TODO:
}

func processHeaderFiles(files []string) ([]FileInfo, error) {
	var fileInfos []FileInfo
	for _, file := range files {
		info, err := processHeaderFile(file)
		if err != nil {
			return nil, fmt.Errorf("error processing file %s: %w", file, err)
		}
		fileInfos = append(fileInfos, info)
	}
	return fileInfos, nil
}

func processHeaderFile(path string) (FileInfo, error) {
	var info FileInfo
	info.Path = path

	// TODO: Implement actual processing of the header file

	// info.Doc = File{
	// 	Decls:    []Decl{},
	// 	Includes: []*Include{},
	// 	Macros:   []*Macro{},
	// }

	return info, nil
}
