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

package md5

// llgo:skipall
import (
	"crypto"
	"hash"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl"
)

func init() {
	crypto.RegisterHash(crypto.MD5, New)
}

// The blocksize of MD5 in bytes.
const BlockSize = 64

// The size of an MD5 checksum in bytes.
const Size = 16

type digest struct {
	ctx openssl.MD5_CTX
}

func (d *digest) Size() int { return Size }

func (d *digest) BlockSize() int { return BlockSize }

func (d *digest) Reset() {
	d.ctx.Init()
}

func (d *digest) Write(p []byte) (nn int, err error) {
	d.ctx.UpdateBytes(p)
	return len(p), nil
}

func (d *digest) Sum(in []byte) []byte {
	hash := (*[Size]byte)(c.Alloca(Size))
	d.ctx.Final((*byte)(unsafe.Pointer(hash)))
	return append(in, hash[:]...)
}

func New() hash.Hash {
	d := new(digest)
	d.ctx.Init()
	return d
}

func Sum(data []byte) (ret [Size]byte) {
	openssl.MD5Bytes(data, &ret[0])
	return
}
