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

package sha512

import (
	"crypto"
	"hash"
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/openssl"
)

// llgo:skipall
type _sha512 struct{}

func init() {
	crypto.RegisterHash(crypto.SHA384, New384)
	crypto.RegisterHash(crypto.SHA512, New)
	crypto.RegisterHash(crypto.SHA512_224, New512_224)
	crypto.RegisterHash(crypto.SHA512_256, New512_256)
}

const (
	// Size is the size, in bytes, of a SHA-512 checksum.
	Size = 64

	// Size224 is the size, in bytes, of a SHA-512/224 checksum.
	Size224 = 28

	// Size256 is the size, in bytes, of a SHA-512/256 checksum.
	Size256 = 32

	// Size384 is the size, in bytes, of a SHA-384 checksum.
	Size384 = 48

	// BlockSize is the block size, in bytes, of the SHA-512/224,
	// SHA-512/256, SHA-384 and SHA-512 hash functions.
	BlockSize = 128
)

type digest512 struct {
	ctx openssl.SHA512_CTX
}

func (d *digest512) Size() int { return Size }

func (d *digest512) BlockSize() int { return BlockSize }

func (d *digest512) Reset() {
	d.ctx.Init()
}

func (d *digest512) Write(p []byte) (nn int, err error) {
	d.ctx.UpdateBytes(p)
	return len(p), nil
}

func (d *digest512) Sum(in []byte) []byte {
	hash := (*[Size]byte)(c.Alloca(Size))
	d.ctx.Final((*byte)(unsafe.Pointer(hash)))
	return append(in, hash[:]...)
}

func New() hash.Hash {
	d := new(digest512)
	d.ctx.Init()
	return d
}

func Sum512(data []byte) (ret [Size]byte) {
	openssl.SHA512Bytes(data, &ret[0])
	return
}

func New512_224() hash.Hash {
	panic("todo: crypto/sha512.New512_224")
}

func Sum512_224(data []byte) [Size224]byte {
	panic("todo: crypto/sha512.Sum512_224")
}

func New512_256() hash.Hash {
	panic("todo: crypto/sha512.New512_256")
}

func Sum512_256(data []byte) [Size256]byte {
	panic("todo: crypto/sha512.Sum512_256")
}
