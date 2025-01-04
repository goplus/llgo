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
	"hash"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl"
)

type digest384 struct {
	ctx openssl.SHA384_CTX
}

func (d *digest384) Size() int { return Size384 }

func (d *digest384) BlockSize() int { return BlockSize }

func (d *digest384) Reset() {
	d.ctx.Init()
}

func (d *digest384) Write(p []byte) (nn int, err error) {
	d.ctx.UpdateBytes(p)
	return len(p), nil
}

func (d *digest384) Sum(in []byte) []byte {
	hash := (*[Size]byte)(c.Alloca(Size))
	d.ctx.Final((*byte)(unsafe.Pointer(hash)))
	return append(in, hash[:]...)
}

func New384() hash.Hash {
	d := new(digest384)
	d.ctx.Init()
	return d
}

func Sum384(data []byte) (ret [Size384]byte) {
	openssl.SHA384Bytes(data, &ret[0])
	return
}
