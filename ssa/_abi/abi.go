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

package abi

import (
	"crypto/sha256"
	"encoding/base64"
	"fmt"
	"go/types"
	"hash"
)

// Builder is a helper for constructing ABI types.
type Builder struct {
	h   hash.Hash
	buf []byte
}

// New creates a new ABI type Builder.
func New() *Builder {
	h := sha256.New()
	buf := make([]byte, sha256.Size)
	return &Builder{h, buf}
}

// TypeName returns the ABI type name for the specified type.
func (b *Builder) TypeName(t types.Type) string {
	switch t := t.(type) {
	case *types.Basic:
		return t.Name()
	case *types.Pointer:
		return "*" + b.TypeName(t.Elem())
	case *types.Struct:
		return b.StructName(t)
	}
	panic("todo")
}

// StructName returns the ABI type name for the specified struct type.
func (b *Builder) StructName(t *types.Struct) string {
	hash := b.structHash(t)
	return "struct$" + base64.RawURLEncoding.EncodeToString(hash)
}

func (b *Builder) structHash(t *types.Struct) []byte {
	h := b.h
	h.Reset()
	n := t.NumFields()
	fmt.Fprintln(h, "struct", n)
	for i := 0; i < n; i++ {
		f := t.Field(i)
		name := f.Name()
		if f.Embedded() {
			name = "-"
		}
		fmt.Fprintln(h, name, b.TypeName(f.Type()))
	}
	return h.Sum(b.buf[:0])
}
