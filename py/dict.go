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

// https://docs.python.org/3/c-api/dict.html

// Return a new empty dictionary, or nil on failure.
//
//go:linkname NewDict C.PyDict_New
func NewDict() *Object

// Return a ListObject containing all the keys from the dictionary.
//
// llgo:link (*Object).DictKeys C.PyDict_Keys
func (d *Object) DictKeys() *Object { return nil }

// Return a ListObject containing all the values from the dictionary.
//
// llgo:link (*Object).DictValues C.PyDict_Values
func (d *Object) DictValues() *Object { return nil }

// Return a ListObject containing all the items from the dictionary.
//
// llgo:link (*Object).DictItems C.PyDict_Items
func (d *Object) DictItems() *Object { return nil }

// Insert val into the dictionary d with a key of key. key must be hashable;
// if it isn’t, return -1 and TypeError will be set. Return 0 on success or
// -1 on failure.
//
// llgo:link (*Object).DictSetItem C.PyDict_SetItem
func (d *Object) DictSetItem(key *Object, val *Object) *Object { return nil }

// Return the object from dictionary d which has a key key. Return nil if the
// key key is not present, but without setting an exception.
//
// llgo:link (*Object).DictGetItem C.PyDict_GetItem
func (d *Object) DictGetItem(key *Object) *Object { return nil }

// Return the number of items in the dictionary.
//
// llgo:link (*Object).DictSize C.PyDict_Size
func (d *Object) DictSize() int { return 0 }

// -----------------------------------------------------------------------------
