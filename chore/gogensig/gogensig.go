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
	"os/exec"
	"path/filepath"

	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/gogensig/convert"
	"github.com/goplus/llgo/chore/gogensig/processor"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/visitor"
)

func runCommand(dir, cmdName string, args ...string) error {
	execCmd := exec.Command(cmdName, args...)
	execCmd.Stdout = os.Stdout
	execCmd.Stderr = os.Stderr
	execCmd.Dir = dir
	return execCmd.Run()
}

func runGoCmds(pkg string) {
	wd, _ := os.Getwd()
	dir := filepath.Join(wd, pkg)
	os.MkdirAll(dir, 0744)
	os.Chdir(pkg)
	runCommand(dir, "go", "mod", "init", pkg)
	runCommand(dir, "go", "get", "github.com/goplus/llgo")
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

	runGoCmds(conf.Name)

	astConvert, err := convert.NewAstConvert(&convert.AstConvertConfig{
		PkgName:  conf.Name,
		SymbFile: "./llcppg.symb.json",
		CfgFile:  "./llcppg.cfg",
	})
	check(err)
	p := processor.NewDocFileSetProcessor([]visitor.DocVisitor{astConvert})
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
