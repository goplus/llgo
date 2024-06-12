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

// https://docs.python.org/3/c-api/tuple.html

// Return a new tuple object of size len, or nil on failure.
//
//go:linkname NewTuple C.PyTuple_New
func NewTuple(len uintptr) *Object

// Take a pointer to a tuple object, and return the size of that tuple.
//
// llgo:link (*Object).TupleLen C.PyTuple_Size
func (t *Object) TupleLen() uintptr { return 0 }

// Return the object at position *pos* in the tuple pointed to by *p*.  If *pos* is
// negative or out of bounds, return nil and set an IndexError exception.
//
// The returned reference is borrowed from the tuple *p*
//
// llgo:link (*Object).tupleItem C.PyTuple_GetItem
func (t *Object) tupleItem(index uintptr) *Object { return nil }

// Return the object at position *pos* in the tuple pointed to by *p*.  If *pos* is
// negative or out of bounds, return nil and set an IndexError exception.
func (t *Object) TupleItem(index uintptr) *Object {
	o := t.tupleItem(index)
	o.IncRef()
	return o
}

// Insert a reference to object *o* at position *pos* of the tuple pointed to by
// *p*.  Return 0 on success.  If *pos* is out of bounds, return -1 and set an
// IndexError exception.
//
// Note:
//
//	This function "steals" a reference to *item* and discards a reference to
//	an item already in the tuple at the affected position.
//
// llgo:link (*Object).tupleSetItem C.PyTuple_SetItem
func (t *Object) tupleSetItem(index uintptr, item *Object) c.Int { return 0 }

// Insert a reference to object *o* at position *pos* of the tuple pointed to by
// *p*.  Return 0 on success.  If *pos* is out of bounds, return -1 and set an
// IndexError exception.
func (t *Object) TupleSetItem(index uintptr, item *Object) c.Int {
	item.IncRef()
	return t.tupleSetItem(index, item)
}
