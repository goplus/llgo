package stdio

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

type Fpos_t c.LongLong

type X__sbuf struct {
	X_base *int8
	X_size c.Int
}

type X__sFILEX struct {
	Unused [8]uint8
}

type X__sFILE struct {
	X_p       *int8
	X_r       c.Int
	X_w       c.Int
	X_flags   int16
	X_file    int16
	X_bf      X__sbuf
	X_lbfsize c.Int
	X_cookie  unsafe.Pointer
	X_close   func(unsafe.Pointer) c.Int
	X_read    func(unsafe.Pointer, *int8, c.Int) c.Int
	X_seek    func(unsafe.Pointer, Fpos_t, c.Int) Fpos_t
	X_write   func(unsafe.Pointer, *int8, c.Int) c.Int
	X_ub      X__sbuf
	X_extra   *X__sFILEX
	X_ur      c.Int
	X_ubuf    [3]int8
	X_nbuf    [1]int8
	X_lb      X__sbuf
	X_blksize c.Int
	X_offset  Fpos_t
}
type FILE X__sFILE
