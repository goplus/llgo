package libuv

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

const (
	LLGoPackage = "link: $(pkg-config --libs libuv); -luv"
)

// ----------------------------------------------

const (
	RUN_DEFAULT RunMode = iota
	RUN_ONCE
	RUN_NOWAIT
)

type RunMode int

// ----------------------------------------------

/* Handle types. */

type Loop struct {
	Unused [0]byte
}

type Handle struct {
	Unused [0]byte
}

type Buf struct {
	Base *c.Char
	Len  uintptr
}

// ----------------------------------------------

/* Function type */

// llgo:type C
type WalkCb func(handle *Handle, arg c.Pointer)

// ----------------------------------------------

//go:linkname LoopSize C.uv_loop_size
func LoopSize() uintptr

// llgo:link (*Loop).Init C.uv_loop_init
func (loop *Loop) Init() c.Int {
	return 0
}

// llgo:link (*Loop).Run C.uv_loop_run
func (l *Loop) Run(mode c.Int) c.Int {
	return 0
}

// llgo:link (*Loop).Stop C.uv_loop_stop
func (l *Loop) Stop() {
	return
}

// llgo:link (*Loop).Default  C.uv_default_loop
func (l *Loop) Default() *Loop {
	return nil
}

// llgo:link (*Loop).New C.uv_loop_new
func (l *Loop) New() *Loop {
	return nil
}

// Deprecated: use LoopClose instead.
// llgo:link (*Loop).Delete C.uv_loop_delete
func (l *Loop) Delete() {
	return
}

// llgo:link (*Loop).Alive C.uv_loop_alive
func (l *Loop) Alive() c.Int {
	return 0
}

// llgo:link (*Loop).Close C.uv_loop_close
func (l *Loop) Close() c.Int {
	return 0
}

// llgo:link (*Loop).Configure C.uv_loop_configure
func (l *Loop) Configure(loop *Loop, option c.Int, arg c.Int) c.Int {
	return 0
}

// llgo:link (*Loop).Walk C.uv_walk
func (loop *Loop) Walk(walkCb WalkCb, arg c.Pointer) {}

// llgo:link (*Loop).Fork C.uv_loop_fork
func (l *Loop) Fork(loop *Loop) int {
	return 0
}

// llgo:link (*Loop).UpdateTime C.uv_update_time
func (l *Loop) UpdateTime() {
	return
}

// llgo:link (*Loop).Now C.uv_now
func (l *Loop) Now() uint64 {
	return 0
}

// llgo:link (*Loop).BackendFd C.uv_backend_fd
func (l *Loop) BackendFd() int {
	return 0
}

// llgo:link (*Loop).BackendTimeout C.uv_backend_timeout
func (l *Loop) BackendTimeout() int {
	return 0
}

// llgo:link (*Handle).Ref C.uv_ref
func (h *Handle) Ref() {
	return
}

// llgo:link (*Handle).Unref C.uv_unref
func (h *Handle) Unref() {
	return
}

// llgo:link (*Handle).HasRef C.uv_has_ref
func (h *Handle) HasRef() int {
	return 0
}

//go:linkname InitBuf C.uv_buf_init
func InitBuf(base *c.Char, len c.Uint) Buf
