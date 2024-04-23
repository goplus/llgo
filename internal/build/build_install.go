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

package build

import (
	"log"
	"os"
	"strings"

	"golang.org/x/tools/go/packages"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"

	"github.com/goplus/llgo/cl"
	llssa "github.com/goplus/llgo/ssa"
)

type Mode int

const (
	ModeBuild Mode = iota
	ModeInstall
)

// -----------------------------------------------------------------------------

const (
	loadFiles   = packages.NeedName | packages.NeedFiles | packages.NeedCompiledGoFiles
	loadImports = loadFiles | packages.NeedImports
	loadTypes   = loadImports | packages.NeedTypes | packages.NeedTypesSizes
	loadSyntax  = loadTypes | packages.NeedSyntax | packages.NeedTypesInfo
)

func Do(args []string, mode Mode) {
	flags, patterns := parseArgs(args)
	cfg := &packages.Config{
		Mode:       loadSyntax | packages.NeedExportFile,
		BuildFlags: flags,
	}

	if patterns == nil {
		patterns = []string{"."}
	}
	initial, err := packages.Load(cfg, patterns...)
	check(err)

	// Create SSA-form program representation.
	_, ssaPkgs := ssautil.AllPackages(initial, ssa.SanityCheckFunctions)

	llssa.Initialize(llssa.InitAll)
	prog := llssa.NewProgram(nil)
	for i, ssaPkg := range ssaPkgs {
		pkg := initial[i]
		if ssaPkg == nil { // TODO(xsw): error handling
			log.Panicf("cannot build SSA for package %s", pkg)
		}
		ssaPkg.Build()
		ret, err := cl.NewPackage(prog, ssaPkg, pkg.Syntax)
		check(err)
		if mode == ModeInstall {
			os.WriteFile(pkg.ExportFile+".ll", []byte(ret.String()), 0644)
		}
	}
}

func parseArgs(args []string) (flags, patterns []string) {
	for i, arg := range args {
		if !strings.HasPrefix(arg, "-") {
			return args[:i], args[i:]
		}
	}
	return args, nil
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

// -----------------------------------------------------------------------------
