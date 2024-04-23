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

/*
import (
	"fmt"
	"io/fs"
	"os"
	"path/filepath"
	"strings"

	"github.com/qiniu/x/errors"
)

type GenFlags int

const (
	GenFlagCheckOnly GenFlags = 1 << iota
	GenFlagPrintError
	GenFlagPrompt
)

// Gen generates llgo_autogen.ll for a Go package directory.
func Gen(dir string, conf *Config, genTestPkg bool, flags GenFlags) (string, bool, error) {
	recursively := strings.HasSuffix(dir, "/...")
	if recursively {
		dir = dir[:len(dir)-4]
	}
	return dir, recursively, genDir(dir, conf, genTestPkg, recursively, flags)
}

func genDir(dir string, conf *Config, genTestPkg, recursively bool, flags GenFlags) (err error) {
	if conf == nil {
		conf = new(Config)
	}
	if recursively {
		var (
			list errors.List
		)
		fn := func(path string, d fs.DirEntry, err error) error {
			if err == nil && d.IsDir() {
				if strings.HasPrefix(d.Name(), "_") || (path != dir && hasMod(path)) { // skip _
					return filepath.SkipDir
				}
				if e := genGoIn(path, conf, genTestPkg, flags); e != nil && notIgnNotated(e, conf) {
					if flags&GenFlagPrintError != 0 {
						fmt.Fprintln(os.Stderr, e)
					}
					list.Add(e)
				}
			}
			return err
		}
		err = filepath.WalkDir(dir, fn)
		if err != nil {
			return errors.NewWith(err, `filepath.WalkDir(dir, fn)`, -2, "filepath.WalkDir", dir, fn)
		}
		return list.ToError()
	}
	if e := genGoIn(dir, conf, genTestPkg, flags); e != nil && notIgnNotated(e, conf) {
		if (flags & GenFlagPrintError) != 0 {
			fmt.Fprintln(os.Stderr, e)
		}
		err = e
	}
	return
}

func hasMod(dir string) bool {
	_, err := os.Lstat(dir + "/go.mod")
	return err == nil
}

// GenPkgPath generates llgo_autogen.ll for a Go package.
func GenPkgPath(workDir, pkgPath string, conf *Config, allowExtern bool, flags GenFlags) (localDir string, recursively bool, err error) {
	panic("todo")
}

// GenFiles generates llgo_autogen.ll for specified Go files.
func GenFiles(autogen string, files []string, conf *Config) (outFiles []string, err error) {
	panic("todo")
}
*/
