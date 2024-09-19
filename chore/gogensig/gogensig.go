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
	"io"
	"os"

	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/util"
	"github.com/goplus/llgo/chore/gogensig/visitor"
)

func main() {
	var data []byte
	var err error
	if len(os.Args) <= 1 || os.Args[1] != "-" {
		os.Exit(1)
	}
	data, err = io.ReadAll(os.Stdin)
	check(err)
	// todo(zzy):refine interface
	conf, err := util.GetCppgFromPath("./llcppg.cfg")
	check(err)
	astConvert := visitor.NewAstConvert(conf.Name, "./llcppg.symb.json", "./llcppg.cfg")
	p := unmarshal.NewDocFileSetUnmarshaller([]visitor.DocVisitor{astConvert})
	p.UnmarshalBytes(data)
}
func check(err error) {
	if err != nil {
		panic(err)
	}
}
