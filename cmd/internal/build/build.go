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

// Package build implements the "llgo build" command.
package build

import (
	"fmt"
	"os"

	"github.com/goplus/llgo/cmd/internal/base"
	"github.com/goplus/llgo/cmd/internal/flags"
	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/mockable"
)

// llgo build
var Cmd = &base.Command{
	UsageLine: "llgo build [-o output] [build flags] [packages]",
	Short:     "Compile packages and dependencies",
}

func init() {
	Cmd.Run = runCmd
	base.PassBuildFlags(Cmd)
	flags.AddBuildFlags(&Cmd.Flag)
	flags.AddOutputFlags(&Cmd.Flag)
}

func runCmd(cmd *base.Command, args []string) {

	if err := cmd.Flag.Parse(args); err != nil {
		return
	}

	conf := build.NewDefaultConf(build.ModeBuild)
	conf.Tags = flags.Tags
	conf.Verbose = flags.Verbose
	conf.OutFile = flags.OutputFile

	args = cmd.Flag.Args()

	_, err := build.Do(args, conf)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		mockable.Exit(1)
	}
}
