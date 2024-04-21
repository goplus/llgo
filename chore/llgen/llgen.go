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
	"go/ast"
	"go/importer"
	"go/parser"
	"go/token"
	"go/types"
	"os"
	"path/filepath"

	"github.com/goplus/llgo/cl"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"

	llssa "github.com/goplus/llgo/ssa"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Fprintln(os.Stderr, "Usage: llgen xxx.go")
		return
	}

	inFile := os.Args[1]
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, inFile, nil, parser.ParseComments)
	check(err)

	files := []*ast.File{f}
	name := f.Name.Name
	pkg := types.NewPackage(name, name)
	foo, _, err := ssautil.BuildPackage(
		&types.Config{Importer: importer.Default()}, fset, pkg, files, ssa.SanityCheckFunctions)
	check(err)

	foo.WriteTo(os.Stderr)
	for _, m := range foo.Members {
		if f, ok := m.(*ssa.Function); ok {
			f.WriteTo(os.Stderr)
		}
	}

	llssa.Initialize(llssa.InitAll)
	llssa.SetDebug(llssa.DbgFlagAll)
	cl.SetDebug(cl.DbgFlagAll)

	prog := llssa.NewProgram(nil)
	ret, err := cl.NewPackage(prog, foo, nil)
	check(err)

	dir, _ := filepath.Split(inFile)
	outFile := dir + "out.ll"
	err = os.WriteFile(outFile, []byte(ret.String()), 0644)
	check(err)
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
