/*
 * Copyright (c) 2023 The GoPlus Authors (goplus.org). All rights reserved.
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
	"strings"

	"github.com/qiniu/x/log"

	"github.com/goplus/llgo/cmd/internal/base"
	"github.com/goplus/llgo/cmd/internal/build"
	"github.com/goplus/llgo/cmd/internal/gen"
	"github.com/goplus/llgo/cmd/internal/help"
)

func mainUsage() {
	help.PrintUsage(os.Stderr, base.Llgo)
	os.Exit(2)
}

func init() {
	flag.Usage = mainUsage
	base.Llgo.Commands = []*base.Command{
		build.Cmd,
		gen.Cmd,
	}
}

func main() {
	flag.Parse()
	args := flag.Args()
	if len(args) < 1 {
		flag.Usage()
	}
	log.SetFlags(log.Ldefault &^ log.LstdFlags)

	base.CmdName = args[0] // for error messages
	if args[0] == "help" {
		help.Help(os.Stderr, args[1:])
		return
	}

BigCmdLoop:
	for bigCmd := base.Llgo; ; {
		for _, cmd := range bigCmd.Commands {
			if cmd.Name() != args[0] {
				continue
			}
			args = args[1:]
			if len(cmd.Commands) > 0 {
				bigCmd = cmd
				if len(args) == 0 {
					help.PrintUsage(os.Stderr, bigCmd)
					os.Exit(2)
				}
				if args[0] == "help" {
					help.Help(os.Stderr, append(strings.Split(base.CmdName, " "), args[1:]...))
					return
				}
				base.CmdName += " " + args[0]
				continue BigCmdLoop
			}
			if !cmd.Runnable() {
				continue
			}
			cmd.Run(cmd, args)
			return
		}
		helpArg := ""
		if i := strings.LastIndex(base.CmdName, " "); i >= 0 {
			helpArg = " " + base.CmdName[:i]
		}
		fmt.Fprintf(os.Stderr, "llgo %s: unknown command\nRun 'llgo help%s' for usage.\n", base.CmdName, helpArg)
		os.Exit(2)
	}
}
