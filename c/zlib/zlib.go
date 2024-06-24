package zlib

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $(pkg-config --libs zlib); -lz"
)

const (
	Z_NO_FLUSH      = 0
	Z_PARTIAL_FLUSH = 1
	Z_SYNC_FLUSH    = 2
	Z_FULL_FLUSH    = 3
	Z_FINISH        = 4
	Z_BLOCK         = 5
	Z_TREES         = 6

	Z_OK            = 0
	Z_STREAM_END    = 1
	Z_NEED_DICT     = 2
	Z_ERRNO         = -1
	Z_STREAM_ERROR  = -2
	Z_DATA_ERROR    = -3
	Z_MEM_ERROR     = -4
	Z_BUF_ERROR     = -5
	Z_VERSION_ERROR = -6

	Z_NO_COMPRESSION      = 0
	Z_BEST_SPEED          = 1
	Z_BEST_COMPRESSION    = 9
	Z_DEFAULT_COMPRESSION = -1
	/* compression levels */

	Z_FILTERED         = 1
	Z_HUFFMAN_ONLY     = 2
	Z_RLE              = 3
	Z_FIXED            = 4
	Z_DEFAULT_STRATEGY = 0

	Z_BINARY  = 0
	Z_TEXT    = 1
	Z_ASCII   = Z_TEXT
	Z_UNKNOWN = 2

	Z_DEFLATED = 8

	Z_NULL = 0
)

//go:linkname Compress C.compress
func Compress(dest *uint8, destLen *uint32, source *uint8, sourceLen uint32) c.Int

//go:linkname Compress2 C.compress2
func Compress2(dest *uint8, destLen *uint32, source *uint8, sourceLen uint32, level c.Int) c.Int

//go:linkname Uncompress C.uncompress
func Uncompress(dest *uint8, destLen *uint32, source *uint8, sourceLen uint32) c.Int

//go:linkname Uncompress2 C.uncompress2
func Uncompress2(dest *uint8, destLen *uint32, source *uint8, sourceLen *uint32) c.Int

//go:linkname CompressBound C.compressBound
func CompressBound(sourceLen uint32) uint32
