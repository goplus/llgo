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
	"flag"
	"fmt"
	"io"
	"os"
	"os/exec"

	"github.com/goplus/llgo/chore/llcppg/types"
	"github.com/goplus/llgo/xtool/env"
)

func llcppsymg(conf []byte, verbose bool) error {
	cmd := exec.Command("llcppsymg", "-")
	if verbose {
		cmd = exec.Command("llcppsymg", "-v", "-")
	}
	cmd.Stdin = bytes.NewReader(conf)
	cmd.Stderr = os.Stderr
	return cmd.Run()
}

func llcppsigfetch(conf []byte, out *io.PipeWriter, verbose bool) {
	cmd := exec.Command("llcppsigfetch", "-")
	if verbose {
		cmd = exec.Command("llcppsigfetch", "-v", "-")
	}
	cmd.Stdin = bytes.NewReader(conf)
	cmd.Stdout = out
	cmd.Stderr = os.Stderr
	err := cmd.Run()
	check(err)
	out.Close()
}

func gogensig(in io.Reader, verbose bool) error {
	cmd := exec.Command("gogensig", "-")
	if verbose {
		cmd = exec.Command("gogensig", "-v", "-")
	}
	cmd.Stdin = in
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	return cmd.Run()
}

func printHelp() {
	flag.Usage()
	flag.PrintDefaults()
}

func init() {
	flag.Usage = func() {
		helpMsg := `llcppg is a tool used to convert c/cpp lib to go lib
usage: llcppg [-v|-h]`
		fmt.Println(helpMsg)
	}
}

func main() {
	v := false
	flag.BoolVar(&v, "v", false, "enable verbose")
	h := false
	flag.BoolVar(&h, "h", false, "print help message")
	flag.Parse()
	if h {
		printHelp()
		return
	}

	cfgFile := "llcppg.cfg"
	if len(flag.Args()) > 0 {
		cfgFile = flag.Arg(0)
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

	err = llcppsymg(b, v)
	check(err)

	r, w := io.Pipe()
	go llcppsigfetch(b, w, v)

	err = gogensig(r, v)
	check(err)
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
