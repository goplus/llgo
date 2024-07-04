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
)

// https://docs.python.org/3/c-api/type.html

// Return the type’s name. Equivalent to getting the type’s __name__ attribute.
//
// llgo:link (*Object).TypeName C.PyType_GetName
func (t *Object) TypeName() *Object { return nil }

// Return the tp_flags member of type. This function is primarily meant for use
// with Py_LIMITED_API; the individual flag bits are guaranteed to be stable across
// Python releases, but access to tp_flags itself is not part of the limited API.
//
// llgo:link (*Object).TypeFlags C.PyType_GetFlags
func (t *Object) TypeFlags() uint32 { return 0 }

// Return the module object associated with the given type when the type was created
// using PyType_FromModuleAndSpec().
//
// If no module is associated with the given type, sets TypeError and returns nil.
//
// This function is usually used to get the module in which a method is defined. Note
// that in such a method, Py_TYPE(self).Module() may not return the intended result.
// Py_TYPE(self) may be a subclass of the intended class, and subclasses are not
// necessarily defined in the same module as their superclass. See PyCMethod to get
// the class that defines the method. See ModuleByDef() for cases when PyCMethod
// cannot be used.
//
// llgo:link (*Object).TypeModule C.PyType_GetModule
func (t *Object) TypeModule() *Object { return nil }

// -llgo:link (*Object).TypeModuleByDef C.PyType_GetModuleByDef
// func (t *Object) TypeModuleByDef(def *ModuleDef) *Object { return nil }
