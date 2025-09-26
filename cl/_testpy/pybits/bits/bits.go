package bits

import (
	"unsafe"

	"github.com/goplus/lib/py"
)

const LLGoPackage = "py.builtins"

type Bits struct {
	py.Object
}

func NewBits(v int64) *Bits {
	return (*Bits)(unsafe.Pointer(py.LongLong(v)))
}

//llgo:link (*Bits).BitLength py.int.bit_length
func (p *Bits) BitLength() *py.Object { return nil }
