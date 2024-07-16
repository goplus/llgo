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

package llgen

import (
	"os"

	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/internal/mod"

	llssa "github.com/goplus/llgo/ssa"
)

func Init() {
	llssa.Initialize(llssa.InitAll)
	llssa.SetDebug(llssa.DbgFlagAll)
	cl.SetDebug(cl.DbgFlagAll)
}

func PkgPath(dir string) string {
	_, pkgPath, err := mod.Load(dir)
	check(err)
	return pkgPath
}

func Do(pkgPath, inFile, outFile string) {
	ret := genFrom(inFile, pkgPath)
	err := os.WriteFile(outFile, []byte(ret), 0644)
	check(err)
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

var (
	Verbose = true
)
