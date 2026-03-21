/*
 * Copyright (c) 2024 The XGo Authors (xgo.dev). All rights reserved.
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
	"flag"
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/goplus/llgo/cl/cltest"
	"github.com/goplus/llgo/internal/llgen"
	"github.com/goplus/mod"
)

var (
	flagDirs      = flag.String("dirs", "", "comma-separated cl test directories to refresh (default: all)")
	flagGenExpect = flag.Bool("expect", true, "regenerate expect.txt by running cases")
)

func main() {
	flag.Parse()
	dir, _, err := mod.FindGoMod(".")
	check(err)

	dirs := selectedDirs()
	for _, relDir := range dirs {
		llgenDir(filepath.Join(dir, relDir))
	}
	if *flagGenExpect {
		genExpects(dir, dirs)
	}
}

func selectedDirs() []string {
	all := []string{
		"cl/_testlibc",
		"cl/_testlibgo",
		"cl/_testrt",
		"cl/_testgo",
		"cl/_testpy",
		"cl/_testdata",
	}
	if strings.TrimSpace(*flagDirs) == "" {
		return all
	}
	seen := make(map[string]struct{}, len(all))
	for _, dir := range all {
		seen[dir] = struct{}{}
	}
	var ret []string
	for _, item := range strings.Split(*flagDirs, ",") {
		dir := strings.TrimSpace(item)
		if dir == "" {
			continue
		}
		if _, ok := seen[dir]; !ok {
			panic(fmt.Errorf("unknown dir: %s", dir))
		}
		ret = append(ret, dir)
	}
	if len(ret) == 0 {
		panic("no valid dirs selected")
	}
	return ret
}

func llgenDir(dir string) {
	fis, err := os.ReadDir(dir)
	check(err)
	for _, fi := range fis {
		name := fi.Name()
		if !fi.IsDir() || strings.HasPrefix(name, "_") {
			continue
		}
		testDir := dir + "/" + name
		fmt.Fprintln(os.Stderr, "llgen", testDir)
		check(os.Chdir(testDir))
		llgen.SmartDoFile(testDir)
	}
}

func genExpects(root string, dirs []string) {
	for _, relDir := range dirs {
		runExpectDir(root, relDir)
	}
}

func runExpectDir(root, relDir string) {
	dir := filepath.Join(root, relDir)
	fis, err := os.ReadDir(dir)
	check(err)
	for _, fi := range fis {
		name := fi.Name()
		if !fi.IsDir() || strings.HasPrefix(name, "_") {
			continue
		}
		relPath := filepath.ToSlash(filepath.Join(relDir, name))
		testDir := filepath.Join(dir, name)
		fmt.Fprintln(os.Stderr, "expect", relPath)
		pkgPath := "./" + relPath
		output, err := cltest.RunAndCapture(pkgPath, testDir)
		if err != nil {
			fmt.Fprintln(os.Stderr, "error:", relPath, err)
			output = []byte{';'}
		}
		expectFile := filepath.Join(testDir, "expect.txt")
		expect, err := os.ReadFile(expectFile)
		if err != nil || strings.TrimSpace(string(expect)) == ";" {
			fmt.Fprintln(os.Stderr, "skip", relPath, "(expect is ';')")
			continue
		}
		check(os.WriteFile(expectFile, output, 0644))
	}
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
