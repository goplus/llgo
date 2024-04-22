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

// Package build implements the “llgo gen command.
package gen

import (
	"fmt"
	"log"
	"os"
	"reflect"

	"github.com/goplus/llgo"
	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/cmd/internal/base"
	"github.com/goplus/llgo/internal/projs"
	"github.com/goplus/llgo/ssa"
	"github.com/qiniu/x/errors"
)

// llgo gen
var Cmd = &base.Command{
	UsageLine: "llgo gen [-v] [packages|files]",
	Short:     "Convert Go code into LLVM ir (*.ll) code",
}

var (
	flag        = &Cmd.Flag
	flagVerbose = flag.Bool("v", false, "print verbose information")
)

func init() {
	Cmd.Run = runCmd
}

func runCmd(cmd *base.Command, args []string) {
	err := flag.Parse(args)
	if err != nil {
		log.Panicln("parse input arguments failed:", err)
	}
	pattern := flag.Args()
	if len(pattern) == 0 {
		pattern = []string{"."}
	}

	projects, err := projs.ParseAll(pattern...)
	if err != nil {
		log.Panicln("gopprojs.ParseAll:", err)
	}

	ssa.Initialize(ssa.InitAll)
	if *flagVerbose {
		ssa.SetDebug(ssa.DbgFlagAll)
		cl.SetDebug(cl.DbgFlagAll)
	}

	for _, proj := range projects {
		switch v := proj.(type) {
		case *projs.DirProj:
			_, _, err = llgo.Gen(v.Dir, nil, true, 0)
		case *projs.PkgPathProj:
			_, _, err = llgo.GenPkgPath("", v.Path, nil, true, 0)
		case *projs.FilesProj:
			_, err = llgo.GenFiles("", v.Files, nil)
		default:
			log.Panicln("`llgo gen` doesn't support", reflect.TypeOf(v))
		}
		if err != nil {
			fmt.Fprintf(os.Stderr, "llgo gen failed: %d errors.\n", errorNum(err))
			os.Exit(1)
		}
	}
}

func errorNum(err error) int {
	if e, ok := err.(errors.List); ok {
		return len(e)
	}
	return 1
}

// -----------------------------------------------------------------------------
