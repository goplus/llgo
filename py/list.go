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

// https://docs.python.org/3/c-api/list.html

// Return a new list of length len on success, or nil on failure.
//
//go:linkname NewList C.PyList_New
func NewList(len uintptr) *Object

// Return the length of the list object in list; this is equivalent to len(list)
// on a list object.
//
// llgo:link (*Object).ListLen C.PyList_Size
func (l *Object) ListLen() uintptr { return 0 }

// Return the object at position index in the list pointed to by list. The position
// must be non-negative; indexing from the end of the list is not supported. If index
// is out of bounds (<0 or >=len(list)), return nil and set an IndexError exception.
//
// llgo:link (*Object).ListItem C.PyList_GetItem
func (l *Object) ListItem(index uintptr) *Object { return nil }
