/*
 * Copyright (c) 2023 The GoPlus Authors (goplus.org). All rights reserved.
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

package build

// An ImportMode controls the behavior of the Import method.
type ImportMode uint

// A Package describes the Go package found in a directory.
type Package struct {
	Dir        string // directory containing package sources
	Name       string // package name
	ImportPath string // import path of package ("" if unknown)
}

// A Context specifies the supporting context for a build.
type Context struct {
}

// Import returns details about the Go package named by the import path,
// interpreting local import paths relative to the srcDir directory.
// If the path is a local import path naming a package that can be imported
// using a standard import path, the returned package will set p.ImportPath
// to that path.
//
// If an error occurs, Import returns a non-nil error and a non-nil
// *Package containing partial information.
func (ctxt *Context) Import(path string, srcDir string, mode ImportMode) (*Package, error) {
	panic("todo")
}

// ImportDir is like Import but processes the Go package found in
// the named directory.
func (ctxt *Context) ImportDir(dir string, mode ImportMode) (*Package, error) {
	return ctxt.Import(".", dir, mode)
}
