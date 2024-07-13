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

package inih

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/cpp/std"
)

// -----------------------------------------------------------------------------

// llgo:type C
type Reader struct {
	Unused [32]byte
}

// llgo:link (*Reader).InitFromBuffer C._ZN9INIReaderC1EPKcm
func (r *Reader) InitFromBuffer(buffer *c.Char, bufferSize uintptr) {}

// llgo:link (*Reader).InitFromFile C._ZN9INIReaderC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
func (r *Reader) InitFromFile(fileName *std.String) {}

// llgo:link (*Reader).Dispose C.INIReaderDispose
func (s *Reader) Dispose() {}

// -----------------------------------------------------------------------------

// NewReader creates a new INIReader instance.
func NewReader(buffer *c.Char, bufferSize uintptr) (ret Reader) {
	ret.InitFromBuffer(buffer, bufferSize)
	return
}

// NewReaderFile creates a new INIReader instance.
func NewReaderFile(fileName *std.String) (ret Reader) {
	ret.InitFromFile(fileName)
	return
}

// -----------------------------------------------------------------------------

// llgo:link (*Reader).ParseError C._ZNK9INIReader10ParseErrorEv
func (*Reader) ParseError() c.Int { return 0 }

// -----------------------------------------------------------------------------

// llgo:link (*Reader).GetInteger C._ZNK9INIReader10GetIntegerERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_l
func (*Reader) GetInteger(section *std.String, name *std.String, defaultValue c.Long) c.Long {
	return 0
}

// llgo:link (*Reader).GetBoolean C._ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_b
func (*Reader) GetBoolean(section *std.String, name *std.String, defaultValue bool) bool {
	return false
}

// llgo:link (*Reader).GetString C._ZNK9INIReader9GetStringERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_
func (*Reader) GetString(section *std.String, name *std.String, defaultValue *std.String) (ret std.String) {
	return
}

// -----------------------------------------------------------------------------
