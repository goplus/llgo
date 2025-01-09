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

package sha256

// llgo:skipall
import (
	"crypto"
	"hash"
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/openssl"
)

func init() {
	crypto.RegisterHash(crypto.SHA224, New224)
	crypto.RegisterHash(crypto.SHA256, New)
}

// The blocksize of SHA256 and SHA224 in bytes.
const BlockSize = 64

// The size of a SHA256 checksum in bytes.
const Size = 32

type digest256 struct {
	ctx openssl.SHA256_CTX
}

func (d *digest256) Size() int { return Size }

func (d *digest256) BlockSize() int { return BlockSize }

func (d *digest256) Reset() {
	d.ctx.Init()
}

func (d *digest256) Write(p []byte) (nn int, err error) {
	d.ctx.UpdateBytes(p)
	return len(p), nil
}

func (d *digest256) Sum(in []byte) []byte {
	hash := (*[Size]byte)(c.Alloca(Size))
	d.ctx.Final((*byte)(unsafe.Pointer(hash)))
	return append(in, hash[:]...)
}

// New returns a new hash.Hash computing the SHA256 checksum.
func New() hash.Hash {
	d := new(digest256)
	d.ctx.Init()
	return d
}

// Sum256 returns the SHA256 checksum of the data.
func Sum256(data []byte) (ret [Size]byte) {
	openssl.SHA256Bytes(data, &ret[0])
	return
}
