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

package llgo

type GenFlags int

// Gen generates llgo_autogen.ll for a Go package directory.
func Gen(dir string, conf *Config, genTestPkg bool, flags GenFlags) (string, bool, error) {
	panic("todo")
}

// GenPkgPath generates llgo_autogen.ll for a Go package.
func GenPkgPath(workDir, pkgPath string, conf *Config, allowExtern bool, flags GenFlags) (localDir string, recursively bool, err error) {
	panic("todo")
}

// GenFiles generates llgo_autogen.ll for specified Go files.
func GenFiles(autogen string, files []string, conf *Config) (outFiles []string, err error) {
	panic("todo")
}
