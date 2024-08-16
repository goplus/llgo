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
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/config"
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

	files := getHeaderFiles(conf.CFlags, conf.Include)

	context := parse.NewContext()
	err = context.ProcessFiles(files)
	check(err)

	outputInfo(context)
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

func outputInfo(context *parse.Context) {
	output := context.Output().Print()
	defer c.Free(unsafe.Pointer(output))
	c.Printf(output)
}
