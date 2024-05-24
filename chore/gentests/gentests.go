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
	"os"
	"strings"

	"github.com/goplus/llgo/internal/llgen"
	"github.com/goplus/mod"
)

func main() {
	dir, _, err := mod.FindGoMod(".")
	check(err)

	llgen.Verbose = false

	llgenDir(dir + "/cl/_testlibc")
	llgenDir(dir + "/cl/_testrt")
	llgenDir(dir + "/cl/_testgo")
	llgenDir(dir+"/cl/_testpy", "")
	llgenDir(dir+"/cl/_testdata", "")
}

func llgenDir(dir string, pkgPath ...string) {
	fis, err := os.ReadDir(dir)
	check(err)
	for _, fi := range fis {
		name := fi.Name()
		if !fi.IsDir() || strings.HasPrefix(name, "_") {
			continue
		}
		testDir := dir + "/" + name
		fmt.Fprintln(os.Stderr, "llgen", testDir)
		os.Chdir(testDir)
		llgen.SmartDoFile("in.go", pkgPath...)
	}
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
