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
	"io"
	"os"
	"path/filepath"

	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/gogensig/convert"
	"github.com/goplus/llgo/chore/gogensig/convert/basic"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
)

func runGoCmds(wd, pkg string) {
	dir := filepath.Join(wd, pkg)
	os.MkdirAll(dir, 0744)
	os.Chdir(pkg)
	config.RunCommand(dir, "go", "mod", "init", pkg)
	config.RunCommand(dir, "go", "get", "github.com/goplus/llgo")
}

func main() {
	var data []byte
	var err error
	if len(os.Args) <= 1 {
		os.Exit(1)
	}

	sigfetchFile := "llcppg.sigfetch.json"
	if len(os.Args) > 1 {
		sigfetchFile = os.Args[1]
	}

	if sigfetchFile == "-" {
		data, err = io.ReadAll(os.Stdin)
	} else {
		data, err = os.ReadFile(sigfetchFile)
	}
	check(err)

	conf, err := config.GetCppgCfgFromPath("./llcppg.cfg")
	check(err)

	wd, err := os.Getwd()
	check(err)

	runGoCmds(wd, conf.Name)

	p, _, err := basic.ConvertProcesser(&basic.Config{
		AstConvertConfig: convert.AstConvertConfig{
			PkgName:  conf.Name,
			SymbFile: filepath.Join(wd, "llcppg.symb.json"),
			CfgFile:  filepath.Join(wd, "llcppg.cfg"),
			PubFile:  filepath.Join(wd, "llcppg.pub"),
		},
	})
	check(err)

	inputdata, err := unmarshal.UnmarshalFileSet(data)
	check(err)

	err = p.ProcessFileSet(inputdata)
	check(err)
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
