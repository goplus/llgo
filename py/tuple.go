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

// https://docs.python.org/3/c-api/tuple.html

// Return a new tuple object of size len, or nil on failure.
//
//go:linkname NewTuple C.PyTuple_New
func NewTuple(len int) *Object

// Take a pointer to a tuple object, and return the size of that tuple.
//
// llgo:link (*Object).TupleLen C.PyTuple_Size
func (t *Object) TupleLen() int { return 0 }

// Return the object at position pos in the tuple pointed to t. If pos is
// negative or out of bounds, return nil and set an IndexError exception.
//
// llgo:link (*Object).TupleItem C.PyTuple_GetItem
func (t *Object) TupleItem(index int) *Object { return nil }

// Insert a reference to object o at position pos of the tuple pointed to by t.
// Return 0 on success. If pos is out of bounds, return -1 and set an
// IndexError exception.
//
// llgo:link (*Object).TupleSetItem C.PyTuple_SetItem
func (t *Object) TupleSetItem(index int, o *Object) int { return 0 }

// Return the slice of the tuple pointed to by t between low and high,
// or NULL on failure. This is the equivalent of the Python expression
// p[low:high]. Indexing from the end of the tuple is not supported.
//
// llgo:link (*Object).TupleSlice C.PyTuple_GetSlice
func (l *Object) TupleSlice(low, high int) *Object { return nil }
