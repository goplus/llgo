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

// https://docs.python.org/3/c-api/list.html

//go:linkname List llgo.pyList
func List(__llgo_va_list ...any) *Object

// Return a new list of length len on success, or nil on failure.
//
//go:linkname NewList C.PyList_New
func NewList(len int) *Object

// Return the length of the list object in list; this is equivalent to len(list)
// on a list object.
//
// llgo:link (*Object).ListLen C.PyList_Size
func (l *Object) ListLen() int { return 0 }

// Return the object at position index in the list pointed to by list. The position
// must be non-negative; indexing from the end of the list is not supported. If index
// is out of bounds (<0 or >=len(list)), return nil and set an IndexError exception.
//
// llgo:link (*Object).ListItem C.PyList_GetItem
func (l *Object) ListItem(index int) *Object { return nil }

// Set the item at index index in list to item. Return 0 on success. If index is out
// of bounds, return -1 and set an IndexError exception.
//
// llgo:link (*Object).ListSetItem C.PyList_SetItem
func (l *Object) ListSetItem(index int, item *Object) c.Int { return 0 }

// Insert the item item into list list in front of index index. Return 0 if successful;
// return -1 and set an exception if unsuccessful. Analogous to list.insert(index, item).
//
// llgo:link (*Object).ListInsert C.PyList_Insert
func (l *Object) ListInsert(index int, item *Object) c.Int { return 0 }

// Append the object item at the end of list list. Return 0 if successful; return -1
// and set an exception if unsuccessful. Analogous to list.append(item).
//
// llgo:link (*Object).ListAppend C.PyList_Append
func (l *Object) ListAppend(item *Object) c.Int { return 0 }

// Return a list of the objects in list containing the objects between low and high.
// Return nil and set an exception if unsuccessful. Analogous to list[low:high].
// Indexing from the end of the list is not supported.
//
// llgo:link (*Object).ListSlice C.PyList_GetSlice
func (l *Object) ListSlice(low, high int) *Object { return nil }

// Set the slice of list between low and high to the contents of itemlist. Analogous
// to list[low:high] = itemlist. The itemlist may be NULL, indicating the assignment
// of an empty list (slice deletion). Return 0 on success, -1 on failure. Indexing
// from the end of the list is not supported.
//
// llgo:link (*Object).ListSetSlice C.PyList_SetSlice
func (l *Object) ListSetSlice(low, high int, itemlist *Object) c.Int { return 0 }

// Sort the items of list in place. Return 0 on success, -1 on failure. This is equivalent
// to list.sort().
//
// llgo:link (*Object).ListSort C.PyList_Sort
func (l *Object) ListSort() c.Int { return 0 }

// Reverse the items of list in place. Return 0 on success, -1 on failure. This is the
// equivalent of list.reverse().
//
// llgo:link (*Object).ListReverse C.PyList_Reverse
func (l *Object) ListReverse() c.Int { return 0 }

// Return a new tuple object containing the contents of list; equivalent to tuple(list).
//
// llgo:link (*Object).ListAsTuple C.PyList_AsTuple
func (l *Object) ListAsTuple() *Object { return nil }
