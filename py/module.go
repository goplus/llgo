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

package py

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// https://docs.python.org/3/c-api/import.html
// https://docs.python.org/3/c-api/module.html

// Return the module object corresponding to a module name. The name argument
// may be of the form package.module. First check the modules dictionary if
// there’s one there, and if not, create a new one and insert it in the modules
// dictionary. Return nil with an exception set on failure.
//
//go:linkname AddModule C.PyImport_AddModule
func AddModule(name *c.Char) *Object

// This is a wrapper around py.Import which takes a const char* as an argument
// instead of an Object.
//
//go:linkname ImportModule C.PyImport_ImportModule
func ImportModule(name *c.Char) *Object

// This is a higher-level interface that calls the current “import hook function” (with
// an explicit level of 0, meaning absolute import). It invokes the __import__() function
// from the __builtins__ of the current globals. This means that the import is done using
// whatever import hooks are installed in the current environment.
//
// This function always uses absolute imports.
//
//go:linkname Import C.PyImport_Import
func Import(name *Object) *Object

// Return the dictionary object that implements module’s namespace; this object is the same
// as the __dict__ attribute of the module object. If module is not a module object (or a
// subtype of a module object), SystemError is raised and nil is returned.
//
// It is recommended extensions use other Module and Object functions rather than directly
// manipulate a module’s __dict__.
//
// llgo:link (*Object).ModuleGetDict C.PyModule_GetDict
func (m *Object) ModuleGetDict() *Object { return nil }

// llgo:link (*Object).ModuleLoadSyms C.llgoLoadPyModSyms
func (m *Object) ModuleLoadSyms(__llgo_va_list ...any) {}

// -----------------------------------------------------------------------------
