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

// Package clean implements the "llgo clean" command.
package clean

import (
	"github.com/goplus/llgo/compiler/cmd/internal/base"
	"github.com/goplus/llgo/compiler/internal/build"
)

// llgo build
var Cmd = &base.Command{
	UsageLine: "llgo clean [clean flags] [build flags] [packages]",
	Short:     "Remove object files and cached files",
}

func init() {
	Cmd.Run = runCmd
}

func runCmd(cmd *base.Command, args []string) {
	conf := build.NewDefaultConf(0)
	build.Clean(args, conf)
}
