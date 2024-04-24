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

// Package install implements the "llgo install" command.
package install

import (
	"github.com/goplus/llgo/cmd/internal/base"
	"github.com/goplus/llgo/internal/build"
)

// llgo install
var Cmd = &base.Command{
	UsageLine: "llgo install [build flags] [packages]",
	Short:     "Compile and install packages and dependencies",
}

func init() {
	Cmd.Run = runCmd
}

func runCmd(cmd *base.Command, args []string) {
	conf := build.NewDefaultConf(build.ModeInstall)
	build.Do(args, conf)
}
