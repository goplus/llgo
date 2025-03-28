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

// Package get implements the "llgo get" command.
package get

import (
	"fmt"
	"os"
	"strings"

	"github.com/goplus/llgo/compiler/cmd/internal/base"
	"github.com/goplus/llgo/compiler/internal/get"
	"github.com/goplus/llgo/compiler/internal/mockable"
)

// llgo get
var Cmd = &base.Command{
	UsageLine: "llgo get [clibs/packages]",
	Short:     "Add dependencies to current module and install them",
}

func init() {
	Cmd.Run = runCmd
}

func runCmd(cmd *base.Command, args []string) {
	if len(args) == 0 || len(args) >= 2 {
		mockable.Exit(1)
	}

	// Extract the name/path and version from the first argument
	name, version := parse(args[0])
	if name == "" {
		fmt.Fprintln(os.Stderr, "missing module path")
		mockable.Exit(1)
	}

	// Get the module
	err := get.Do(name, version)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		mockable.Exit(1)
	}
}

func parse(s string) (path, version string) {
	index := strings.Index(s, "@")
	if index >= 0 {
		path = s[:index]
		version = s[(index + 1):]
	} else {
		path = s
	}

	return path, version
}
