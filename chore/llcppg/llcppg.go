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
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"os"
	"os/exec"

	"github.com/goplus/llgo/chore/llcppg/types"
	"github.com/goplus/llgo/xtool/env"
)

func llcppsymg(conf []byte) error {
	cmd := exec.Command("llcppsymg", "-")
	cmd.Stdin = bytes.NewReader(conf)
	cmd.Stderr = os.Stderr
	return cmd.Run()
}

func llcppsigfetch(conf []byte, out *io.PipeWriter) {
	cmd := exec.Command("llcppsigfetch", "-")
	cmd.Stdin = bytes.NewReader(conf)
	cmd.Stdout = out
	cmd.Stderr = os.Stderr
	err := cmd.Run()
	check(err)
	out.Close()
}

func gogensig(in io.Reader) error {
	cmd := exec.Command("gogensig", "-")
	cmd.Stdin = in
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	return cmd.Run()
}

func main() {
	cfgFile := "llcppg.cfg"
	if len(os.Args) > 1 {
		cfgFile = os.Args[1]
	}
	if cfgFile == "-h" || cfgFile == "--help" {
		fmt.Fprintln(os.Stderr, "Usage: llcppg [config-file]")
		return
	}

	f, err := os.Open(cfgFile)
	check(err)
	defer f.Close()

	var conf types.Config
	json.NewDecoder(f).Decode(&conf)
	conf.CFlags = env.ExpandEnv(conf.CFlags)
	conf.Libs = env.ExpandEnv(conf.Libs)

	b, err := json.MarshalIndent(&conf, "", "  ")
	check(err)

	err = llcppsymg(b)
	check(err)

	r, w := io.Pipe()
	go llcppsigfetch(b, w)

	err = gogensig(r)
	check(err)
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
