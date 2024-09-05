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
	"unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $(pkg-config --libs libcjson); -lcjson"
)

type Bool c.Int

// llgo:type C
type JSON struct {
	Unused [0]byte
}

func ParseBytes(value []byte) *JSON {
	return ParseWithLength((*c.Char)(unsafe.Pointer(unsafe.SliceData(value))), uintptr(len(value)))
}

func ParseString(value string) *JSON {
	return ParseWithLength((*c.Char)(unsafe.Pointer(unsafe.StringData(value))), uintptr(len(value)))
}

// CJSON_PUBLIC(char *) cJSON_PrintUnformatted(const cJSON *item);
//
// Render a cJSON entity to text for transfer/storage without any formatting.
//
// llgo:link (*JSON).CStr C.cJSON_PrintUnformatted
func (o *JSON) CStr() *c.Char { return nil }

// Same as CStr. Provided for Go+.
//
// llgo:link (*JSON).Cstr C.cJSON_PrintUnformatted
func (o *JSON) Cstr() *c.Char { return nil }

// malloc/free objects using the malloc/free functions that have been set with cJSON_InitHooks
//
//go:linkname FreeCStr C.cJSON_free
func FreeCStr(*c.Char)

// CJSON_PUBLIC(const char*) cJSON_Version(void);
//
// returns the version of cJSON as a string
//
//go:linkname Version C.cJSON_Version
func Version() *c.Char

// CJSON_PUBLIC(cJSON *) cJSON_Parse(const char *value);
//
// Memory Management: the caller is always responsible to free
// the results from all variants of cJSON_Parse (with cJSON_Delete)
// and cJSON_Print (with stdlib free, cJSON_Hooks.free_fn, or
// cJSON_free as appropriate). The exception is cJSON_PrintPreallocated,
// where the caller has full responsibility of the buffer.
//
//go:linkname Parse C.cJSON_Parse
func Parse(value *c.Char) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_ParseWithLength(const char *value, size_t buffer_length);
//
// Memory Management: the caller is always responsible to free
// the results from all variants of cJSON_Parse (with cJSON_Delete)
// and cJSON_Print (with stdlib free, cJSON_Hooks.free_fn, or
// cJSON_free as appropriate). The exception is cJSON_PrintPreallocated,
// where the caller has full responsibility of the buffer.
//
//go:linkname ParseWithLength C.cJSON_ParseWithLength
func ParseWithLength(value *c.Char, valueLength uintptr) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_ParseWithOpts(const char *value, const char **return_parse_end, cBool require_null_terminated);
//
// ParseWithOpts allows you to require (and check) that the JSON is null terminated,
// and to retrieve the pointer to the final byte parsed.
// If you supply a ptr in return_parse_end and parsing fails, then
// return_parse_end will contain a pointer to the error so will match
// cJSON_GetErrorPtr().
//
//go:linkname ParseWithOpts C.cJSON_ParseWithOpts
func ParseWithOpts(value *c.Char, return_parse_end **c.Char, require_null_terminated Bool) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_ParseWithLengthOpts(const char *value, size_t buffer_length, const char **return_parse_end, cBool require_null_terminated);
//
// ParseWithOpts allows you to require (and check) that the JSON is null terminated,
// and to retrieve the pointer to the final byte parsed.
// If you supply a ptr in return_parse_end and parsing fails, then
// return_parse_end will contain a pointer to the error so will match
// cJSON_GetErrorPtr().
//
//go:linkname ParseWithLengthOpts C.cJSON_ParseWithLengthOpts
func ParseWithLengthOpts(value *c.Char, buffer_length uintptr, return_parse_end **c.Char, require_null_terminated Bool) *JSON

// CJSON_PUBLIC(char *) cJSON_Print(const cJSON *item);
// Render a JSON entity to text for transfer/storage.
//
// llgo:link (*JSON).Print C.cJSON_Print
func (o *JSON) Print() *c.Char { return nil }

// CJSON_PUBLIC(char *) cJSON_PrintUnformatted(const cJSON *item);
// Render a JSON entity to text for transfer/storage without any formatting.
//
// llgo:link (*JSON).PrintUnformatted C.cJSON_PrintUnformatted
func (o *JSON) PrintUnformatted() *c.Char { return nil }

// CJSON_PUBLIC(char *) cJSON_PrintBuffered(const cJSON *item, int prebuffer, cBool fmt);
//
// Render a JSON entity to text using a buffered strategy.
// prebuffer is a guess at the final size. guessing well reduces reallocation.
// fmt=0 gives unformatted, =1 gives formatted.
//
// llgo:link (*JSON).PrintBuffered C.cJSON_PrintBuffered
func (o *JSON) PrintBuffered(prebuffer c.Int, fmt Bool) *c.Char { return nil }

// CJSON_PUBLIC(cBool) cJSON_PrintPreallocated(cJSON *item, char *buffer, const int length, const cBool format);
//
// Render a cJSON entity to text using a buffer already allocated in memory with given
// length. Returns 1 on success and 0 on failure.
// note that cJSON is not always 100% accurate in estimating how much memory it will use,
// so to be safe allocate 5 bytes more than you actually need
//
// llgo:link (*JSON).PrintPreallocated C.cJSON_PrintPreallocated
func (o *JSON) PrintPreallocated(buffer *c.Char, length c.Int, format Bool) Bool {
	return Bool(0)
}

// CJSON_PUBLIC(void) cJSON_Delete(cJSON *item);
// Delete a JSON entity and all subentities.
//
// llgo:link (*JSON).Delete C.cJSON_Delete
func (o *JSON) Delete() {}

// CJSON_PUBLIC(int) cJSON_GetArraySize(const cJSON *array);
//
// Returns the number of items in an array (or object).
//
// llgo:link (*JSON).GetArraySize C.cJSON_GetArraySize
func (o *JSON) GetArraySize() c.Int { return 0 }

// CJSON_PUBLIC(cJSON *) cJSON_GetArrayItem(const cJSON *array, int index);
//
// Retrieve item number "index" from array "array". Returns NULL if unsuccessful.
//
// llgo:link (*JSON).GetArrayItem C.cJSON_GetArrayItem
func (o *JSON) GetArrayItem(index c.Int) *JSON { return nil }

// CJSON_PUBLIC(cJSON *) cJSON_GetObjectItem(const cJSON * const object, const char * const string);
//
// Get item "string" from object. Case insensitive.
//
// llgo:link (*JSON).GetObjectItem C.cJSON_GetObjectItem
func (o *JSON) GetObjectItem(s *c.Char) *JSON { return nil }

// CJSON_PUBLIC(cJSON *) cJSON_GetObjectItemCaseSensitive(const cJSON * const object, const char * const string);
//
// Get item "string" from object. Case sensitive.
//
// llgo:link (*JSON).GetObjectItemCaseSensitive C.cJSON_GetObjectItemCaseSensitive
func (o *JSON) GetObjectItemCaseSensitive(key *c.Char) *JSON { return nil }

// CJSON_PUBLIC(cBool) cJSON_HasObjectItem(const cJSON *object, const char *string);
//
// llgo:link (*JSON).HasObjectItem C.cJSON_HasObjectItem
func (o *JSON) HasObjectItem(s *c.Char) Bool { return Bool(0) }

// CJSON_PUBLIC(const char *) cJSON_GetErrorPtr(void);
//
// For analysing failed parses. This returns a pointer to the parse error.
// You'll probably need to look a few chars back to make sense of it.
// Defined when cJSON_Parse() returns 0. 0 when cJSON_Parse() succeeds.
//
//go:linkname GetErrorPtr C.cJSON_GetErrorPtr
func GetErrorPtr() *c.Char

// CJSON_PUBLIC(char *) cJSON_GetStringValue(const cJSON * const item);
//
//	Check item type and return its value
//
// llgo:link (*JSON).GetStringValue C.cJSON_GetStringValue
func (o *JSON) GetStringValue() *c.Char { return nil }

// CJSON_PUBLIC(double) cJSON_GetNumberValue(const cJSON * const item);
//
//	Check item type and return its value
//
// llgo:link (*JSON).GetNumberValue C.cJSON_GetNumberValue
func (o *JSON) GetNumberValue() c.Double { return 0 }

// CJSON_PUBLIC(cBool) cJSON_IsInvalid(const cJSON * const item);
//
//	These functions check the type of an item
//
// llgo:link (*JSON).IsInvalid C.cJSON_IsInvalid
func (o *JSON) IsInvalid() Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_IsFalse(const cJSON * const item);
//
//	These functions check the type of an item
//
// llgo:link (*JSON).IsFalse C.cJSON_IsFalse
func (o *JSON) IsFalse() Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_IsTrue(const cJSON * const item);
//
//	These functions check the type of an item
//
// llgo:link (*JSON).IsTrue C.cJSON_IsTrue
func (o *JSON) IsTrue() Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_IsBool(const cJSON * const item);
//
//	These functions check the type of an item
//
// llgo:link (*JSON).IsBool C.cJSON_IsBool
func (o *JSON) IsBool() Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_IsNull(const cJSON * const item);
//
//	These functions check the type of an item
//
// llgo:link (*JSON).IsNull C.cJSON_IsNull
func (o *JSON) IsNull() Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_IsNumber(const cJSON * const item);
//
//	These functions check the type of an item
//
// llgo:link (*JSON).IsNumber C.cJSON_IsNumber
func (o *JSON) IsNumber() Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_IsString(const cJSON * const item);
//
//	These functions check the type of an item
//
// llgo:link (*JSON).IsString C.cJSON_IsString
func (o *JSON) IsString() Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_IsArray(const cJSON * const item);
//
//	These functions check the type of an item
//
// llgo:link (*JSON).IsArray C.cJSON_IsArray
func (o *JSON) IsArray() Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_IsObject(const cJSON * const item);
//
//	These functions check the type of an item
//
// llgo:link (*JSON).IsObject C.cJSON_IsObject
func (o *JSON) IsObject() Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_IsRaw(const cJSON * const item);
//
//	These functions check the type of an item
//
// llgo:link (*JSON).IsRaw C.cJSON_IsRaw
func (o *JSON) IsRaw() Bool { return Bool(0) }

// CJSON_PUBLIC(cJSON *) cJSON_CreateNull(void);
//
// These calls create a cJSON item of the appropriate type.
//
//go:linkname Null C.cJSON_CreateNull
func Null() *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateNull(void);
//
// same as Null func
//
//go:linkname CreateNull C.cJSON_CreateNull
func CreateNull() *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateTrue(void);
//
//go:linkname True C.cJSON_CreateTrue
func True() *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateTrue(void);
//
// same as True func
//
//go:linkname CreateTrue C.cJSON_CreateTrue
func CreateTrue() *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateFalse(void);
//
//go:linkname False C.cJSON_CreateFalse
func False() *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateFalse(void);
//
// same as False func
//
//go:linkname CreateFalse C.cJSON_CreateFalse
func CreateFalse() *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateBool(cBool boolean);
//
// same as Bool func
//
//go:linkname CreateBool C.cJSON_CreateBool
func CreateBool(boolean c.Int) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateNumber(double num);
//
//go:linkname Number C.cJSON_CreateNumber
func Number(num float64) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateNumber(double num);
//
// same as Number func
//
//go:linkname CreateNumber C.cJSON_CreateNumber
func CreateNumber(num float64) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateString(const char *string);
//
//go:linkname String C.cJSON_CreateString
func String(str *c.Char) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateString(const char *string);
//
// same as String func
//
//go:linkname CreateString C.cJSON_CreateString
func CreateString(str *c.Char) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateRaw(const char *raw);
// raw json
//
//go:linkname Raw C.cJSON_CreateRaw
func Raw(raw *c.Char) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateRaw(const char *raw);
//
// same as Raw func
//
//go:linkname CreateRaw C.cJSON_CreateRaw
func CreateRaw(raw *c.Char) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateArray(void);
//
//go:linkname Array C.cJSON_CreateArray
func Array() *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateArray(void);
//
// same as Array func
//
//go:linkname CreateArray C.cJSON_CreateArray
func CreateArray() *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateObject(void);
//
//go:linkname Object C.cJSON_CreateObject
func Object() *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateObject(void);
//
// same as Object func
//
//go:linkname CreateObject C.cJSON_CreateObject
func CreateObject() *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateStringReference(const char *string);
//
// Create a string where valuestring references a string so
// it will not be freed by Delete
//
//go:linkname StringRef C.cJSON_CreateStringReference
func StringRef(str *c.Char) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateStringReference(const char *string);
//
// same as StringRef func
//
//go:linkname CreateStringReference C.cJSON_CreateStringReference
func CreateStringReference(str *c.Char) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateObjectReference(const cJSON *child);
//
// Create an object that only references it's elements so
// they will not be freed by Delete
//
//go:linkname ObjectRef C.cJSON_CreateObjectReference
func ObjectRef(child *JSON) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateObjectReference(const cJSON *child);
//
// same as ObjectRef func
//
//go:linkname CreateObjectReference C.cJSON_CreateObjectReference
func CreateObjectReference(child *JSON) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateArrayReference(const cJSON *child);
//
// Create an array that only references it's elements so
// they will not be freed by Delete
//
//go:linkname ArrayRef C.cJSON_CreateArrayReference
func ArrayRef(child *JSON) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateArrayReference(const cJSON *child);
//
// same as ArrayRef func
//
//go:linkname CreateArrayReference C.cJSON_CreateArrayReference
func CreateArrayReference(child *JSON) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateIntArray(const int *numbers, int count);
//
//go:linkname CreateIntArray C.cJSON_CreateIntArray
func CreateIntArray(numbers *c.Int, count c.Int) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateFloatArray(const float *numbers, int count);
//
//go:linkname CreateFloatArray C.cJSON_CreateFloatArray
func CreateFloatArray(numbers *c.Float, count c.Int) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateDoubleArray(const double *numbers, int count);
//
//go:linkname CreateDoubleArray C.cJSON_CreateDoubleArray
func CreateDoubleArray(numbers *c.Double, count c.Int) *JSON

// CJSON_PUBLIC(cJSON *) cJSON_CreateStringArray(const char *const *strings, int count);
//
//go:linkname CreateStringArray C.cJSON_CreateStringArray
func CreateStringArray(strings *c.Char, count c.Int) *JSON

// CJSON_PUBLIC(cBool) cJSON_AddItemToArray(cJSON *array, cJSON *item);
//
// Append item to the specified array.
//
// llgo:link (*JSON).AddItem C.cJSON_AddItemToArray
func (o *JSON) AddItem(item *JSON) Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_AddItemToArray(cJSON *array, cJSON *item);
//
// same as AddItem func
//
// llgo:link (*JSON).AddItemToArray C.cJSON_AddItemToArray
func (o *JSON) AddItemToArray(item *JSON) Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_AddItemToObject(cJSON *object, const char *string, cJSON *item);
//
// Append item to the specified object.
//
// llgo:link (*JSON).SetItem C.cJSON_AddItemToObject
func (o *JSON) SetItem(key *c.Char, item *JSON) Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_AddItemToObject(cJSON *object, const char *string, cJSON *item);
//
// same as SetItem func
//
// llgo:link (*JSON).AddItemToObject C.cJSON_AddItemToObject
func (o *JSON) AddItemToObject(key *c.Char, item *JSON) Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_AddItemToObjectCS(cJSON *object, const char *string, cJSON *item);
//
// Use this when string is definitely const (i.e. a literal, or as good as),
// and will definitely survive the cJSON object.
// warning that When this function was used, make sure to always check that
// (item->type & cJSON_StringIsConst) is zero before writing to `item->string`
//
// llgo:link (*JSON).AddItemToObjectCS C.cJSON_AddItemToObjectCS
func (o *JSON) AddItemToObjectCS(s *c.Char, item *JSON) Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_AddItemReferenceToArray(cJSON *array, cJSON *item);
//
// Append reference to item to the specified array/object.
// Use this when you want to add an existing cJSON to a new cJSON,
// but don't want to corrupt your existing cJSON.
//
// llgo:link (*JSON).AddItemReferenceToArray C.cJSON_AddItemReferenceToArray
func (o *JSON) AddItemReferenceToArray(item *JSON) Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_AddItemReferenceToObject(cJSON *object, const char *string, cJSON *item);
//
// llgo:link (*JSON).AddItemReferenceToObject C.cJSON_AddItemReferenceToObject
func (o *JSON) AddItemReferenceToObject(s *c.Char, item *JSON) Bool { return Bool(0) }

// CJSON_PUBLIC(cJSON *) cJSON_DetachItemViaPointer(cJSON *parent, cJSON * const item);
//
// Remove/Detach items from Arrays/Objects.
//
// llgo:link (*JSON).DetachItemViaPointer C.cJSON_DetachItemViaPointer
func (o *JSON) DetachItemViaPointer(item *JSON) *JSON { return nil }

// CJSON_PUBLIC(cJSON *) cJSON_DetachItemFromArray(cJSON *array, int which);
//
// llgo:link (*JSON).DetachItemFromArray C.cJSON_DetachItemFromArray
func (o *JSON) DetachItemFromArray(which c.Int) *JSON { return nil }

// CJSON_PUBLIC(void) cJSON_DeleteItemFromArray(cJSON *array, int which);
//
// llgo:link (*JSON).DeleteItemFromArray C.cJSON_DeleteItemFromArray
func (o *JSON) DeleteItemFromArray(which c.Int) {}

// CJSON_PUBLIC(cJSON *) cJSON_DetachItemFromObject(cJSON *object, const char *string);
//
// llgo:link (*JSON).DetachItemFromObject C.cJSON_DetachItemFromObject
func (o *JSON) DetachItemFromObject(s *c.Char) *JSON { return nil }

// CJSON_PUBLIC(cJSON *) cJSON_DetachItemFromObjectCaseSensitive(cJSON *object, const char *string);
//
// llgo:link (*JSON).DetachItemFromObjectCaseSensitive C.cJSON_DetachItemFromObjectCaseSensitive
func (o *JSON) DetachItemFromObjectCaseSensitive(s *c.Char) *JSON { return nil }

// CJSON_PUBLIC(void) cJSON_DeleteItemFromObject(cJSON *object, const char *string);
//
// llgo:link (*JSON).DeleteItemFromObject C.cJSON_DeleteItemFromObject
func (o *JSON) DeleteItemFromObject(s *c.Char) {}

// CJSON_PUBLIC(void) cJSON_DeleteItemFromObjectCaseSensitive(cJSON *object, const char *string);
//
// llgo:link (*JSON).DeleteItemFromObjectCaseSensitive C.cJSON_DeleteItemFromObjectCaseSensitive
func (o *JSON) DeleteItemFromObjectCaseSensitive(s *c.Char) {}

// CJSON_PUBLIC(cBool) cJSON_InsertItemInArray(cJSON *array, int which, cJSON *newitem);
//
// Update array items.
// Shifts pre-existing items to the right.
//
// llgo:link (*JSON).InsertItemInArray C.cJSON_InsertItemInArray
func (o *JSON) InsertItemInArray(which c.Int, newitem *JSON) Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_ReplaceItemViaPointer(cJSON * const parent, cJSON * const item, cJSON * replacement);
//
// llgo:link (*JSON).ReplaceItemViaPointer C.cJSON_ReplaceItemViaPointer
func (o *JSON) ReplaceItemViaPointer(item *JSON, replacement *JSON) Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_ReplaceItemInArray(cJSON *array, int which, cJSON *newitem);
//
// llgo:link (*JSON).ReplaceItemInArray C.cJSON_ReplaceItemInArray
func (o *JSON) ReplaceItemInArray(which c.Int, newitem *JSON) Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_ReplaceItemInObject(cJSON *object,const char *string,cJSON *newitem);
//
// llgo:link (*JSON).ReplaceItemInObject C.cJSON_ReplaceItemInObject
func (o *JSON) ReplaceItemInObject(s *c.Char, newitem *JSON) Bool { return Bool(0) }

// CJSON_PUBLIC(cBool) cJSON_ReplaceItemInObjectCaseSensitive(cJSON *object,const char *string,cJSON *newitem);
//
// llgo:link (*JSON).ReplaceItemInObjectCaseSensitive C.cJSON_ReplaceItemInObjectCaseSensitive
func (o *JSON) ReplaceItemInObjectCaseSensitive(s *c.Char, newitem *JSON) Bool {
	return Bool(0)
}

// CJSON_PUBLIC(cJSON *) cJSON_Duplicate(const cJSON *item, cBool recurse);
//
//	Duplicate a cJSON item
//
// Duplicate will create a new, identical cJSON item to the one you pass,
// in new memory that will need to be released. With recurse!=0,
// it will duplicate any children connected to the item.
// The item->next and ->prev pointers are always zero on return from Duplicate.
//
// llgo:link (*JSON).Duplicate C.cJSON_Duplicate
func (o *JSON) Duplicate(recurse Bool) *JSON { return nil }

// CJSON_PUBLIC(cBool) cJSON_Compare(const cJSON * const a, const cJSON * const b, const cBool case_sensitive);
//
// Recursively compare two cJSON items for equality. If either a or b is NULL or invalid,
// they will be considered unequal. case_sensitive determines if object keys are treated
// case sensitive (1) or case insensitive (0)
//
// llgo:link (*JSON).Compare C.cJSON_Compare
func (o *JSON) Compare(b *JSON, case_sensitive Bool) Bool { return Bool(0) }

// CJSON_PUBLIC(void) cJSON_Minify(char *json);
//
// Minify a strings, remove blank characters(such as ' ', '\t', '\r', '\n') from strings.
// The input pointer json cannot point to a read-only address area, such as a string constant,
// but should point to a readable and writable address area.
//
//go:linkname Minify C.cJSON_Minify
func Minify()

// CJSON_PUBLIC(cJSON*) cJSON_AddNullToObject(cJSON * const object, const char * const name);
//
// Helper functions for creating and adding items to an object at the same time.
// They return the added item or NULL on failure.
//
// llgo:link (*JSON).AddNullToObject C.cJSON_AddNullToObject
func (o *JSON) AddNullToObject(name *c.Char) *JSON { return nil }

// CJSON_PUBLIC(cJSON*) cJSON_AddTrueToObject(cJSON * const object, const char * const name);
//
// llgo:link (*JSON).AddTrueToObject C.cJSON_AddTrueToObject
func (o *JSON) AddTrueToObject(name *c.Char) *JSON { return nil }

// CJSON_PUBLIC(cJSON*) cJSON_AddFalseToObject(cJSON * const object, const char * const name);
//
// llgo:link (*JSON).AddFalseToObject C.cJSON_AddFalseToObject
func (o *JSON) AddFalseToObject(name *c.Char) *JSON { return nil }

// CJSON_PUBLIC(cJSON*) cJSON_AddBoolToObject(cJSON * const object, const char * const name, const cBool boolean);
//
// llgo:link (*JSON).AddBoolToObject C.cJSON_AddBoolToObject
func (o *JSON) AddBoolToObject(name *c.Char, b Bool) *JSON { return nil }

// CJSON_PUBLIC(cJSON*) cJSON_AddNumberToObject(cJSON * const object, const char * const name, const double number);
//
// llgo:link (*JSON).AddNumberToObject C.cJSON_AddNumberToObject
func (o *JSON) AddNumberToObject(name *c.Char, num c.Double) *JSON { return nil }

// CJSON_PUBLIC(cJSON*) cJSON_AddStringToObject(cJSON * const object, const char * const name, const char * const string);
//
// llgo:link (*JSON).AddStringToObject C.cJSON_AddStringToObject
func (o *JSON) AddStringToObject(name *c.Char, s *c.Char) *JSON { return nil }

// CJSON_PUBLIC(cJSON*) cJSON_AddRawToObject(cJSON * const object, const char * const name, const char * const raw);
//
// llgo:link (*JSON).AddRawToObject C.cJSON_AddRawToObject
func (o *JSON) AddRawToObject(name *c.Char, raw *c.Char) *JSON { return nil }

// CJSON_PUBLIC(cJSON*) cJSON_AddObjectToObject(cJSON * const object, const char * const name);
//
// llgo:link (*JSON).AddObjectToObject C.cJSON_AddObjectToObject
func (o *JSON) AddObjectToObject(name *c.Char) *JSON { return nil }

// CJSON_PUBLIC(cJSON*) cJSON_AddArrayToObject(cJSON * const object, const char * const name);
//
// llgo:link (*JSON).AddArrayToObject C.cJSON_AddArrayToObject
func (o *JSON) AddArrayToObject(name *c.Char) *JSON { return nil }

// CJSON_PUBLIC(double) cJSON_SetNumberHelper(cJSON *object, double number);
//
// helper for the cJSON_SetNumberValue macro
//
// llgo:link (*JSON).SetNumberHelper C.cJSON_SetNumberHelper
func (o *JSON) SetNumberHelper(number c.Double) c.Double { return 0 }

// CJSON_PUBLIC(char*) cJSON_SetValuestring(cJSON *object, const char *valuestring);
//
// Change the valuestring of a cJSON_String object, only takes effect when type of
// object is cJSON_String
//
// llgo:link (*JSON).SetValuestring C.cJSON_SetValuestring
func (o *JSON) SetValuestring(v *c.Char) *c.Char { return nil }

// CJSON_PUBLIC(void *) cJSON_malloc(size_t size);
//
// malloc/free objects using the malloc/free functions that have been set with cJSON_InitHooks
//
//go:linkname Malloc C.cJSON_malloc
func Malloc(size uintptr)

// CJSON_PUBLIC(void) cJSON_free(void *object);
//
//go:linkname Free C.cJSON_free
func Free(ptr unsafe.Pointer)
