/*
 * Copyright (c) 2022 The GoPlus Authors (goplus.org). All rights reserved.
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
	"os"

	"github.com/goplus/llgo/xtool/clang/preprocessor"
)

func usage() {
	fmt.Fprintf(os.Stderr, "Usage: clangpp source.c\n")
}

func main() {
	if len(os.Args) < 2 {
		usage()
		return
	}
	infile := os.Args[1]
	outfile := infile + ".i"
	if err := preprocessor.Do(infile, outfile, nil); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
