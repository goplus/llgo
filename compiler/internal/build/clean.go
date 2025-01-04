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
	"fmt"
	"os"
	"path"
	"path/filepath"

	"github.com/goplus/compiler/internal/packages"
)

var (
	// TODO(xsw): complete clean flags
	cleanFlags = map[string]bool{
		"-v": false, // -v: print the paths of packages as they are clean
	}
)

func Clean(args []string, conf *Config) {
	flags, patterns, verbose := ParseArgs(args, cleanFlags)
	cfg := &packages.Config{
		Mode:       loadSyntax | packages.NeedExportFile,
		BuildFlags: flags,
	}

	if patterns == nil {
		patterns = []string{"."}
	}
	initial, err := packages.LoadEx(nil, nil, cfg, patterns...)
	check(err)

	cleanPkgs(initial, verbose)

	for _, pkg := range initial {
		if pkg.Name == "main" {
			cleanMainPkg(pkg, conf, verbose)
		}
	}
}

func cleanMainPkg(pkg *packages.Package, conf *Config, verbose bool) {
	pkgPath := pkg.PkgPath
	name := path.Base(pkgPath)
	fname := name + conf.AppExt
	app := filepath.Join(conf.BinPath, fname)
	removeFile(app, verbose)
	if len(pkg.CompiledGoFiles) > 0 {
		dir := filepath.Dir(pkg.CompiledGoFiles[0])
		buildApp := filepath.Join(dir, fname)
		removeFile(buildApp, verbose)
	}
}

func cleanPkgs(initial []*packages.Package, verbose bool) {
	packages.Visit(initial, nil, func(p *packages.Package) {
		file := p.ExportFile + ".ll"
		removeFile(file, verbose)
	})
}

func removeFile(file string, verbose bool) {
	if _, err := os.Stat(file); os.IsNotExist(err) {
		return
	}
	if verbose {
		fmt.Fprintln(os.Stderr, "Remove", file)
	}
	os.Remove(file)
}
