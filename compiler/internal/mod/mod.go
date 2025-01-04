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

package mod

import (
	"path"
	"path/filepath"

	"github.com/goplus/mod"
	"github.com/goplus/mod/gopmod"
)

// Module represents a Go module.
type Module = gopmod.Module

// Load loads a Go module from a directory.
func Load(dir string) (ret *Module, pkgPath string, err error) {
	if dir, err = filepath.Abs(dir); err != nil {
		return
	}
	_, gomod, err := mod.FindGoMod(dir)
	if err != nil {
		return
	}
	if ret, err = gopmod.LoadFrom(gomod, ""); err != nil {
		return
	}
	relPath, err := filepath.Rel(ret.Root(), dir)
	if err != nil {
		return
	}
	pkgPath = path.Join(ret.Path(), filepath.ToSlash(relPath))
	return
}
