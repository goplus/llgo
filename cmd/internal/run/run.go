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
	"path/filepath"

	"github.com/goplus/llgo/cmd/internal/base"
	"github.com/goplus/llgo/internal/build"
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
	UsageLine: "llgo cmptest [build flags] package [arguments...]",
	Short:     "Compile programs by llgo and go, run them and do comparative tests (stdout/stderr/exitcode)",
}

func init() {
	Cmd.Run = runCmd
	CmpTestCmd.Run = runCmpTest
}

func runCmd(cmd *base.Command, args []string) {
	runCmdEx(cmd, args, build.ModeRun)
}

func runCmpTest(cmd *base.Command, args []string) {
	runCmdEx(cmd, args, build.ModeCmpTest)
}

func runCmdEx(cmd *base.Command, args []string, mode build.Mode) {
	args, runArgs, err := parseRunArgs(args)
	check(err)

	tempBinPath, err := os.MkdirTemp("", "llgo-run-")
	if err != nil {
		panic(fmt.Errorf("os.MkdirTemp failed: %v", err))
	}
	defer os.RemoveAll(tempBinPath) // NOTE: this will not work if os.Exit is called; remove it manually if needed

	conf := build.NewDefaultConf(mode)
	conf.RunArgs = runArgs
	conf.BinPath = tempBinPath
	build.Do(args, conf)
}

func parseRunArgs(args []string) ([]string, []string, error) {
	n := build.SkipFlagArgs(args)
	if n < 0 {
		return nil, nil, errNoProj
	}

	arg := args[n]
	if isGoFile(arg) {
		n++
		for n < len(args) && isGoFile(args[n]) {
			n++
		}
		return args[:n], args[n:], nil
	}
	return args[:n+1], args[n+1:], nil
}

func isGoFile(fname string) bool {
	return filepath.Ext(fname) == ".go"
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
