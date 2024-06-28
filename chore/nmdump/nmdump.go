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
	"log"
	"os"

	"github.com/goplus/llgo/xtool/env/llvm"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Fprintln(os.Stderr, "Usage: nmdump xxx.a")
		return
	}

	nm := llvm.New("").Nm()
	items, err := nm.List(os.Args[1])
	for _, item := range items {
		if item.File != "" {
			fmt.Printf("\n%s:\n", item.File)
		}
		for _, sym := range item.Symbols {
			if sym.FAddr {
				fmt.Printf("%016x %c %s\n", sym.Addr, sym.Type, sym.Name)
			} else {
				fmt.Printf("%16s %c %s\n", "", sym.Type, sym.Name)
			}
		}
	}
	if err != nil {
		log.Println(err)
	}
}
