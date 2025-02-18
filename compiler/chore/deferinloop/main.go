// Copyright 2024 The GoPlus Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Package main implements a tool for finding defer statements inside loops.
//
// The tool analyzes Go source code and reports any defer statements that appear
// inside loops (for, range). This helps identify potential memory leaks or
// performance issues where deferred functions might accumulate during loop
// iterations.
package main

import (
	"flag"
	"fmt"
	"go/build"
	"os"

	"golang.org/x/tools/go/buildutil"
	"golang.org/x/tools/go/packages"

	"github.com/goplus/llgo/compiler/internal/astrewriter"
)

const (
	loadFiles   = packages.NeedName | packages.NeedFiles | packages.NeedCompiledGoFiles
	loadImports = loadFiles | packages.NeedImports
	loadTypes   = loadImports | packages.NeedTypes | packages.NeedTypesSizes
	loadSyntax  = loadTypes | packages.NeedSyntax | packages.NeedTypesInfo
)

var (
	// testFlag enables scanning of test files when set
	testFlag = flag.Bool("test", false, "include implicit test packages")
)

func init() {
	flag.Var((*buildutil.TagsFlag)(&build.Default.BuildTags), "tags", buildutil.TagsFlagDoc)
}

const usage = `Find defer statements inside loops.
Usage: deferinloop [-test] [-tags] package...
Use -help flag to display options.

Examples:
% deferinloop hello.go                # scan a single package
% deferinloop -test fmt              # scan a package and its tests
% deferinloop ./...                  # scan all packages in current directory and subdirectories
`

func main() {
	if err := doMain(); err != nil {
		fmt.Fprintf(os.Stderr, "deferinloop: %s\n", err)
		os.Exit(1)
	}
}

func doMain() error {
	flag.Parse()
	if len(flag.Args()) == 0 {
		fmt.Fprint(os.Stderr, usage)
		os.Exit(1)
	}

	cfg := &packages.Config{
		Mode:  loadSyntax,
		Tests: *testFlag,
	}

	// Choose types.Sizes from conf.Build.

	// Load, parse and type-check the packages
	initial, err := packages.Load(cfg, flag.Args()...)
	if err != nil {
		return err
	}
	if len(initial) == 0 {
		return fmt.Errorf("no packages")
	}
	if packages.PrintErrors(initial) > 0 {
		return fmt.Errorf("packages contain errors")
	}

	// Scan each package for defer statements in loops
	for _, pkg := range initial {
		for _, file := range pkg.Syntax {
			locations := astrewriter.DeferInLoopScanner(pkg.Fset, file)
			for _, loc := range locations {
				fmt.Printf("%s:%d:%d: defer statement inside loop\n", loc.Filename, loc.Line, loc.Column)
			}
		}
	}

	return nil
}
