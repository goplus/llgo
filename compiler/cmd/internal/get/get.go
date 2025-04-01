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
	"github.com/goplus/llgo/compiler/internal/mockable"
	"github.com/goplus/llgo/compiler/internal/modget"
)

// llgo get
var Cmd = &base.Command{
	UsageLine: "llgo get [-t -u -v] [build flags] [clibs/packages]",
	Short:     "Add dependencies to current module and install them",
}

func init() {
	Cmd.Run = runCmd
}

func runCmd(cmd *base.Command, args []string) {
	if len(args) == 0 {
		mockable.Exit(1)
	}

	flags := []string{}
	flagEndIndex := -1
	for idx, arg := range args {
		if strings.HasPrefix(arg, "-") {
			flags = append(flags, arg)
			flagEndIndex = idx
		} else {
			break
		}
	}

	modules := []string{}
	if flagEndIndex >= 0 {
		modules = args[flagEndIndex+1:]
	} else {
		modules = args
	}

	for _, m := range modules {
		// Extract the name/path and version from the first argument
		name, version := parse(m)
		if name == "" {
			fmt.Fprintln(os.Stderr, "invalid module path:", m)
			continue
		}

		// Get the module
		err := modget.Do(name, version, flags)
		if err != nil {
			fmt.Fprintln(os.Stderr, err)
		}
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
