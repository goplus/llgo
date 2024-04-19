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

package llexportdata

import (
	"go/token"
	"go/types"
	"io"
)

// Read reads export data from in, decodes it, and returns type information for the package.
//
// The package path (effectively its linker symbol prefix) is specified by path, since unlike
// the package name, this information may not be recorded in the export data.
//
// File position information is added to fset.
//
// Read may inspect and add to the imports map to ensure that references within the export data
// to other packages are consistent. The caller must ensure that imports[path] does not exist,
// or exists but is incomplete (see types.Package.Complete), and Read inserts the resulting package
// into this map entry.
//
// On return, the state of the reader is undefined.
func Read(in io.Reader, fset *token.FileSet, imports map[string]*types.Package, path string) (*types.Package, error) {
	panic("todo")
}
