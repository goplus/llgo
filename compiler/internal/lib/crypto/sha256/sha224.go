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

import (
	"hash"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl"
)

// The size of a SHA224 checksum in bytes.
const Size224 = 28

type digest224 struct {
	ctx openssl.SHA224_CTX
}

func (d *digest224) Size() int { return Size224 }

func (d *digest224) BlockSize() int { return BlockSize }

func (d *digest224) Reset() {
	d.ctx.Init()
}

func (d *digest224) Write(p []byte) (nn int, err error) {
	d.ctx.UpdateBytes(p)
	return len(p), nil
}

func (d *digest224) Sum(in []byte) []byte {
	hash := (*[Size]byte)(c.Alloca(Size))
	d.ctx.Final((*byte)(unsafe.Pointer(hash)))
	return append(in, hash[:]...)
}

// New224 returns a new hash.Hash computing the SHA224 checksum.
func New224() hash.Hash {
	d := new(digest224)
	d.ctx.Init()
	return d
}

// Sum224 returns the SHA224 checksum of the data.
func Sum224(data []byte) (ret [Size224]byte) {
	openssl.SHA224Bytes(data, &ret[0])
	return
}
