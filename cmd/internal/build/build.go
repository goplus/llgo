/*
 * Copyright (c) 2023 The GoPlus Authors (goplus.org). All rights reserved.
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

// Package build implements the “llgo build” command.
package build

import (
	"fmt"
	"log"
	"os"
	"path/filepath"
	"reflect"

	"github.com/goplus/llgo"
	"github.com/goplus/llgo/cmd/internal/base"
	"github.com/goplus/llgo/internal/projs"
	"github.com/goplus/llgo/x/gocmd"
)

// llgo build
var Cmd = &base.Command{
	UsageLine: "llgo build [flags] [packages]",
	Short:     "Build Go files",
}

var (
	flagOutput = flag.String("o", "", "build output file")
	_          = flag.Bool("v", false, "print verbose information")
	flag       = &Cmd.Flag
)

func init() {
	Cmd.Run = runCmd
}

func runCmd(cmd *base.Command, args []string) {
	err := flag.Parse(args)
	if err != nil {
		log.Panicln("parse input arguments failed:", err)
	}

	args = flag.Args()
	if len(args) == 0 {
		args = []string{"."}
	}

	proj, args, err := projs.ParseOne(args...)
	if err != nil {
		log.Panicln(err)
	}
	if len(args) != 0 {
		log.Panicln("too many arguments:", args)
	}

	conf := &llgo.Config{}
	confCmd := &gocmd.BuildConfig{}
	if *flagOutput != "" {
		output, err := filepath.Abs(*flagOutput)
		if err != nil {
			log.Panicln(err)
		}
		confCmd.Output = output
	}
	build(proj, conf, confCmd)
}

func build(proj projs.Proj, conf *llgo.Config, build *gocmd.BuildConfig) {
	var obj string
	var err error
	switch v := proj.(type) {
	case *projs.DirProj:
		obj = v.Dir
		err = llgo.BuildDir(obj, conf, build)
	case *projs.PkgPathProj:
		obj = v.Path
		err = llgo.BuildPkgPath("", obj, conf, build)
	case *projs.FilesProj:
		err = llgo.BuildFiles(v.Files, conf, build)
	default:
		log.Panicln("`llgo build` doesn't support", reflect.TypeOf(v))
	}
	if llgo.NotFound(err) {
		fmt.Fprintf(os.Stderr, "llgo build %v: not found\n", obj)
	} else if err != nil {
		fmt.Fprintln(os.Stderr, err)
	} else {
		return
	}
	os.Exit(1)
}

// -----------------------------------------------------------------------------
