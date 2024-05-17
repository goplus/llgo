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

package cjson

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: cjson"
)

// llgo:type C
type JSON struct {
	Unused [0]byte
}

//go:linkname Null C.cJSON_CreateNull
func Null() *JSON

//go:linkname True C.cJSON_CreateTrue
func True() *JSON

//go:linkname False C.cJSON_CreateFalse
func False() *JSON

//go:linkname Bool C.cJSON_CreateBool
func Bool(boolean c.Int) *JSON

//go:linkname Number C.cJSON_CreateNumber
func Number(num float64) *JSON

//go:linkname String C.cJSON_CreateString
func String(str *c.Char) *JSON

//go:linkname Array C.cJSON_CreateArray
func Array() *JSON

//go:linkname Object C.cJSON_CreateObject
func Object() *JSON

// raw json
//
//go:linkname Raw C.cJSON_CreateRaw
func Raw(raw *c.Char) *JSON

// Create a string where valuestring references a string so
// it will not be freed by Delete
//
//go:linkname StringRef C.cJSON_CreateStringReference
func StringRef(str *c.Char) *JSON

// Create an object that only references it's elements so
// they will not be freed by Delete
//
//go:linkname ObjectRef C.cJSON_CreateObjectReference
func ObjectRef(child *JSON) *JSON

// Create an array that only references it's elements so
// they will not be freed by Delete
//
//go:linkname ArrayRef C.cJSON_CreateArrayReference
func ArrayRef(child *JSON) *JSON

// Delete a JSON entity and all subentities.
//
// llgo:link (*JSON).Delete C.cJSON_Delete
func (o *JSON) Delete() {}

// Append item to the specified array.
//
// llgo:link (*JSON).AddItem C.cJSON_AddItemToArray
func (o *JSON) AddItem(item *JSON) c.Int { return 0 }

// Append item to the specified object.
//
// llgo:link (*JSON).SetItem C.cJSON_AddItemToObject
func (o *JSON) SetItem(key *c.Char, item *JSON) c.Int { return 0 }

// llgo:link (*JSON).CStr C.cJSON_PrintUnformatted
func (o *JSON) CStr() *c.Char { return nil }

// Same as CStr. Provided for Go+.
//
// llgo:link (*JSON).Cstr C.cJSON_PrintUnformatted
func (o *JSON) Cstr() *c.Char { return nil }

// Render a JSON entity to text for transfer/storage.
//
// llgo:link (*JSON).Print C.cJSON_Print
func (o *JSON) Print() *c.Char { return nil }

// Render a JSON entity to text for transfer/storage without any formatting.
//
// llgo:link (*JSON).PrintUnformatted C.cJSON_PrintUnformatted
func (o *JSON) PrintUnformatted() *c.Char { return nil }

// Render a JSON entity to text using a buffered strategy.
//
// prebuffer is a guess at the final size. guessing well reduces reallocation.
//
// fmt=0 gives unformatted, =1 gives formatted.
//
// llgo:link (*JSON).PrintBuffered C.cJSON_PrintBuffered
func (o *JSON) PrintBuffered(prebuffer c.Int, fmt c.Int) *c.Char { return nil }
