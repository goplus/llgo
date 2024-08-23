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

// https://docs.python.org/3/c-api/set.html

// Return a new set containing objects returned by the iterable. The iterable
// may be nil to create a new empty set. Return the new set on success or nil
// on failure. set a TypeError exception if iterable is not actually iterable.
// The constructor is also useful for copying a set (c=set(s)).
//
//go:linkname NewSet C.PySet_New
func NewSet(iterable *Object) *Object { return nil }

// Return the length of a set or frozenset object. Equivalent to len(anyset).
// Set a SystemError if anyset is not a set, frozenset, or an instance of a
// subtype.
//
// llgo:link (*Object).SetLen C.PySet_Size
func (s *Object) SetLen() int { return 0 }

// Return 1 if found, 0 if not found, and -1 if an error is encountered.
// Unlike the Python __contains__() method, this function does not automatically
// convert unhashable sets into temporary frozensets. Set a TypeError if the key
// is unhashable. Set SystemError if s is not a set, frozenset, or an instance
// of a subtype.
//
// llgo:link (*Object).SetContains C.PySet_Contains
func (s *Object) SetContains(key *Object) int { return 0 }

// Add key to a set instance. Also works with frozenset instances (like
// PyTuple_SetItem() it can be used to fill in the values of brand new
// frozensets before they are exposed to other code). Return 0 on success or -1
// on failure. Set a TypeError if the key is unhashable. Set a MemoryError if
// there is no room to grow. Set a SystemError if set is not an instance of set
// or its subtype.
//
// llgo:link (*Object).SetAdd C.PySet_Add
func (s *Object) SetAdd(key *Object) int { return 0 }

// Return a new reference to an arbitrary object in the set, and removes the
// object from the set. Return nil on failure. Set KeyError if the set is empty.
// Set a SystemError if set is not an instance of set or its subtype.
//
// llgo:link (*Object).SetPop C.PySet_Pop
func (s *Object) SetPop() *Object { return nil }

// Empty an existing set of all elements. Return 0 on success. Return -1 and
// set SystemError if set is not an instance of set or its subtype.
//
// llgo:link (*Object).SetClear C.PySet_Clear
func (s *Object) SetClear() *Object { return nil }
