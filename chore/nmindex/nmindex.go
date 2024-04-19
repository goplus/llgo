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

	"github.com/goplus/llgo/x/env/llvm"
	"github.com/goplus/llgo/x/nm"
)

func main() {
	if len(os.Args) < 2 {
		fmt.Fprint(os.Stderr, `Usage:
	nmindex <command> [arguments]

The commands are:

	mk		Create index file
	q		Query a symbol

`)
		return
	}

	cmd := os.Args[1]
	switch cmd {
	case "mk":
		makeIndex()
	case "q":
		query()
	default:
		fmt.Fprintf(os.Stderr, "unknown command: %s\n", cmd)
	}
}

func makeIndex() {
	env := llvm.New()
	if env.Root() == "" {
		fmt.Fprintln(os.Stderr, "Please set LLGO_LLVM_ROOT first.")
		return
	}

	home, err := os.UserHomeDir()
	check(err)
	idxDir := home + "/.llgo/nmindex"
	os.MkdirAll(idxDir, 0755)

	b := nm.NewIndexBuilder(env.Nm())
	err = b.Index(env.Root()+"/lib", idxDir, func(path string) {
		fmt.Println("==>", path)
	})
	check(err)
}

func query() {
	panic("todo")
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
