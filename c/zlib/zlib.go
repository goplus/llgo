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

package zlib

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $(pkg-config --libs zlib); -lz"
)

/* errno */
const (
	OK            = 0
	STREAM_END    = 1
	NEED_DICT     = 2
	ERRNO         = -1
	STREAM_ERROR  = -2
	DATA_ERROR    = -3
	MEM_ERROR     = -4
	BUF_ERROR     = -5
	VERSION_ERROR = -6
)

/* compression levels */
const (
	NO_COMPRESSION      = 0
	BEST_SPEED          = 1
	BEST_COMPRESSION    = 9
	DEFAULT_COMPRESSION = -1
)

const (
	NO_FLUSH      = 0
	PARTIAL_FLUSH = 1
	SYNC_FLUSH    = 2
	FULL_FLUSH    = 3
	FINISH        = 4
	BLOCK         = 5
	TREES         = 6
)

const (
	FILTERED         = 1
	HUFFMAN_ONLY     = 2
	RLE              = 3
	FIXED            = 4
	DEFAULT_STRATEGY = 0
)

const (
	BINARY  = 0
	TEXT    = 1
	ASCII   = TEXT
	UNKNOWN = 2
)

const (
	DEFLATED = 8
)

//go:linkname CompressBound C.compressBound
func CompressBound(sourceLen c.Ulong) c.Ulong

//go:linkname Compress C.compress
func Compress(dest *byte, destLen *c.Ulong, source *byte, sourceLen c.Ulong) c.Int

//go:linkname Compress2 C.compress2
func Compress2(dest *byte, destLen *c.Ulong, source *byte, sourceLen c.Ulong, level c.Int) c.Int

//go:linkname Uncompress C.uncompress
func Uncompress(dest *byte, destLen *c.Ulong, source *byte, sourceLen c.Ulong) c.Int

//go:linkname Uncompress2 C.uncompress2
func Uncompress2(dest *byte, destLen *c.Ulong, source *byte, sourceLen *c.Ulong) c.Int
