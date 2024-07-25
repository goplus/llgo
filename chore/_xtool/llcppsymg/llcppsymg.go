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
	"io"
	"os"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
)

func main() {
	cfgFile := "llcppg.cfg"
	if len(os.Args) > 1 {
		cfgFile = os.Args[1]
	}

	var data []byte
	var err error
	if cfgFile == "-" {
		data, err = io.ReadAll(os.Stdin)
	} else {
		data, err = os.ReadFile(cfgFile)
	}
	check(err)

	conf := cjson.ParseBytes(data)
	if conf == nil {
		fmt.Fprintln(os.Stderr, "Failed to parse config file:", cfgFile)
		os.Exit(1)
	}
	defer conf.Delete()

	c.Printf(c.Str("%s"), conf.Print())
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
