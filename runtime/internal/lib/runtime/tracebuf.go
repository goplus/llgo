package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/lib/runtime/internal/sys"
)

// traceBufHeader is per-P tracing buffer.
type traceBufHeader struct {
	link     *traceBuf // in trace.empty/full
	lastTime traceTime // when we wrote the last event
	pos      int       // next write offset in arr
	lenPos   int       // position of batch length value
}

// traceBuf is per-M tracing buffer.
//
// TODO(mknyszek): Rename traceBuf to traceBatch, since they map 1:1 with event batches.
type traceBuf struct {
	_ sys.NotInHeap
	traceBufHeader
	arr [64<<10 - unsafe.Sizeof(traceBufHeader{})]byte // underlying buffer for traceBufHeader.buf
}
