package libuv

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/net"
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

const (
	LOOP_BLOCK_SIGNAL LoopOption = iota
	METRICS_IDLE_TIME
)

const (
	UV_LEAVE_GROUP Membership = iota
	UV_JOIN_GROUP
)

const (
	UNKNOWN_HANDLE HandleType = iota
	ASYNC
	CHECK
	FS_EVENT
	FS_POLL
	HANDLE
	IDLE
	NAMED_PIPE
	POLL
	PREPARE
	PROCESS
	STREAM
	TCP
	TIMER
	TTY
	UDP
	SIGNAL
	FILE
	HANDLE_TYPE_MAX
)

const (
	UNKNOWN_REQ ReqType = iota
	REQ
	CONNECT
	WRITE
	SHUTDOWN
	UDP_SEND
	FS
	WORK
	GETADDRINFO
	GETNAMEINFO
	RANDOM
	REQ_TYPE_PRIVATE
	REQ_TYPE_MAX
)

const (
	READABLE PollEvent = 1 << iota
	WRITABLE
	DISCONNECT
	PRIPRIORITIZED
)

type RunMode c.Int

type LoopOption c.Int

type Membership c.Int

type HandleType c.Int

type ReqType c.Int

type OsSock c.Int

type OsFd c.Int

type PollEvent c.Int

// ----------------------------------------------

/* Handle types. */

type Loop struct {
	Unused [0]byte
}

type Poll struct {
	Unused [0]byte
}

/* Request types. */

type Shutdown struct {
	Unused [0]byte
}

type Buf struct {
	Base *c.Char
	Len  uintptr
} // ----------------------------------------------

/* Function type */

// llgo:type C
type MallocFunc func(size uintptr) c.Pointer

// llgo:type C
type ReallocFunc func(ptr c.Pointer, size uintptr) c.Pointer

// llgo:type C
type CallocFunc func(count uintptr, size uintptr) c.Pointer

// llgo:type C
type FreeFunc func(ptr c.Pointer)

// llgo:type C
type AllocCb func(handle *Handle, suggestedSize uintptr, buf *Buf)

// llgo:type C
type GetaddrinfoCb func(req *GetAddrInfo, status c.Int, res *net.AddrInfo)

// llgo:type C
type GetnameinfoCb func(req *GetNameInfo, status c.Int, hostname *c.Char, service *c.Char)

// llgo:type C
type ShutdownCb func(req *Shutdown, status c.Int)

// llgo:type C
type WalkCb func(handle *Handle, arg c.Pointer)

// llgo:type C
type PollCb func(handle *Poll, status c.Int, events c.Int)

// ----------------------------------------------

//go:linkname Version C.uv_version
func Version() c.Uint

//go:linkname VersionString C.uv_version_string
func VersionString() *c.Char

//go:linkname LibraryShutdown C.uv_library_shutdown
func LibraryShutdown()

//go:linkname ReplaceAllocator C.uv_replace_allocator
func ReplaceAllocator(mallocFunc MallocFunc, reallocFunc ReallocFunc, callocFunc CallocFunc, freeFunc FreeFunc) c.Int

//go:linkname Close C.uv_close
func Close(handle *Handle, closeCb CloseCb)

// ----------------------------------------------

// llgo:link (*Shutdown).Shutdown C.uv_shutdown
func (shutdown *Shutdown) Shutdown(stream *Stream, shutdownCb ShutdownCb) c.Int {
	return 0
}

// ----------------------------------------------

/* Loop related functions and method. */

//go:linkname LoopSize C.uv_loop_size
func LoopSize() uintptr

//go:linkname Run C.uv_run
func Run(loop *Loop, mode RunMode) c.Int

//go:linkname LoopAlive C.uv_loop_alive
func LoopAlive(loop *Loop) c.Int

//go:linkname LoopClose C.uv_loop_close
func LoopClose(loop *Loop) c.Int

//go:linkname LoopConfigure C.uv_loop_configure
func LoopConfigure(loop *Loop, option LoopOption, arg c.Int) c.Int

//go:linkname LoopDefault C.uv_default_loop
func LoopDefault() *Loop

//go:linkname LoopDelete C.uv_loop_delete
func LoopDelete(loop *Loop) c.Int

//go:linkname LoopFork C.uv_loop_fork
func LoopFork(loop *Loop) c.Int

//go:linkname LoopInit C.uv_loop_init
func LoopInit(loop *Loop) c.Int

//go:linkname LoopNew C.uv_loop_new
func LoopNew() *Loop

//go:linkname LoopNow C.uv_now
func LoopNow(loop *Loop) c.UlongLong

//go:linkname LoopUpdateTime C.uv_update_time
func LoopUpdateTime(loop *Loop)

//go:linkname LoopBackendFd C.uv_backend_fd
func LoopBackendFd(loop *Loop) c.Int

//go:linkname LoopBackendTimeout C.uv_backend_timeout
func LoopBackendTimeout(loop *Loop) c.Int

//go:linkname LoopWalk C.uv_walk
func LoopWalk(loop *Loop, walkCb WalkCb, arg c.Pointer)

// ----------------------------------------------

/* Buf related functions and method. */

//go:linkname InitBuf C.uv_buf_init
func InitBuf(base *c.Char, len c.Uint) Buf

// ----------------------------------------------

/* Poll related function and method */

//go:linkname PollInit C.uv_poll_init
func PollInit(loop *Loop, handle *Poll, fd OsFd) c.Int

//go:linkname PollStart C.uv_poll_start
func PollStart(handle *Poll, events c.Int, cb PollCb) c.Int

//go:linkname PollStop C.uv_poll_stop
func PollStop(handle *Poll) c.Int

//go:linkname PollInitSocket C.uv_poll_init_socket
func PollInitSocket(loop *Loop, handle *Poll, socket c.Int) c.Int
