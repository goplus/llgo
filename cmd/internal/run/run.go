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

// Package run implements the "llgo run" command.
package run

import (
	"errors"
	"fmt"
	"os"

	"github.com/goplus/llgo/cmd/internal/base"
	"github.com/goplus/llgo/cmd/internal/flags"
	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/mockable"
)

var (
	errNoProj = errors.New("llgo: no go files listed")
)

// llgo run
var Cmd = &base.Command{
	UsageLine: "llgo run [build flags] package [arguments...]",
	Short:     "Compile and run Go program",
}

// llgo cmptest
var CmpTestCmd = &base.Command{
	UsageLine: "llgo cmptest [-gen] [build flags] package [arguments...]",
	Short:     "Compile and run with llgo, compare result (stdout/stderr/exitcode) with go or llgo.expect; generate llgo.expect file if -gen is specified",
}

func init() {
	Cmd.Run = runCmd
	CmpTestCmd.Run = runCmpTest
	base.PassBuildFlags(Cmd)
	flags.AddBuildFlags(&Cmd.Flag)
	flags.AddBuildFlags(&CmpTestCmd.Flag)
	flags.AddCmpTestFlags(&CmpTestCmd.Flag)
}

func runCmd(cmd *base.Command, args []string) {
	runCmdEx(cmd, args, build.ModeRun)
}

func runCmpTest(cmd *base.Command, args []string) {
	runCmdEx(cmd, args, build.ModeCmpTest)
}

func runCmdEx(cmd *base.Command, args []string, mode build.Mode) {

	if err := cmd.Flag.Parse(args); err != nil {
		return
	}

	conf := build.NewDefaultConf(mode)
	conf.Tags = flags.Tags
	conf.Verbose = flags.Verbose
	conf.GenExpect = flags.Gen

	args = cmd.Flag.Args()
	args, runArgs, err := parseRunArgs(args)
	check(err)
	conf.RunArgs = runArgs
	_, err = build.Do(args, conf)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		mockable.Exit(1)
	}
}

func parseRunArgs(args []string) ([]string, []string, error) {
	if len(args) == 0 {
		return nil, nil, errNoProj
	}

	return args[:1], args[1:], nil
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
