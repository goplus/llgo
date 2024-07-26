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

type Handle struct {
	Unused [96]byte
}

type Dir struct {
	Unused [0]byte
}

type Stream struct {
	Unused [264]byte
}

type Pipe struct {
	Unused [0]byte
}

type Tty struct {
	Unused [0]byte
}

type Poll struct {
	Unused [0]byte
}

type Prepare struct {
	Unused [0]byte
}

type Check struct {
	Unused [0]byte
}

type Idle struct {
	Unused [0]byte
}

type Async struct {
	Unused [0]byte
}

type Process struct {
	Unused [0]byte
}

/* Request types. */

type Req struct {
	Unused [0]byte
}

type GetAddrInfo struct {
	Unused [0]byte
}

type GetNameInfo struct {
	Unused [0]byte
}

type Shutdown struct {
	Unused [0]byte
}

type Write struct {
	Unused [192]byte
}

type Connect struct {
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
type ReadCb func(stream *Stream, nread c.Long, buf *Buf)

// llgo:type C
type WriteCb func(req *Write, status c.Int)

// llgo:type C
type GetaddrinfoCb func(req *GetAddrInfo, status c.Int, res *net.AddrInfo)

// llgo:type C
type GetnameinfoCb func(req *GetNameInfo, status c.Int, hostname *c.Char, service *c.Char)

// llgo:type C
type ConnectionCb func(server *Stream, status c.Int)

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

// ----------------------------------------------

// llgo:link (*Shutdown).Shutdown C.uv_shutdown
func (shutdown *Shutdown) Shutdown(stream *Stream, shutdownCb ShutdownCb) c.Int {
	return 0
}

// ----------------------------------------------

/* Handle related function and method */

// llgo:link (*Handle).Ref C.uv_ref
func (handle *Handle) Ref() {}

// llgo:link (*Handle).Unref C.uv_unref
func (handle *Handle) Unref() {}

// llgo:link (*Handle).HasRef C.uv_has_ref
func (handle *Handle) HasRef() c.Int {
	return 0
}

//go:linkname HandleSize C.uv_handle_size
func HandleSize(handleType HandleType) uintptr

// llgo:link (*Handle).GetType C.uv_handle_get_type
func (handle *Handle) GetType() HandleType {
	return 0
}

//go:linkname HandleTypeName C.uv_handle_type_name
func HandleTypeName(handleType HandleType) *c.Char

// llgo:link (*Handle).GetData C.uv_handle_get_data
func (handle *Handle) GetData() c.Pointer {
	return nil
}

// llgo:link (*Handle).GetLoop C.uv_handle_get_loop
func (handle *Handle) GetLoop() *Loop {
	return nil
}

// llgo:link (*Handle).SetData C.uv_handle_set_data
func (handle *Handle) SetData(data c.Pointer) {}

// llgo:link (*Handle).IsActive C.uv_is_active
func (handle *Handle) IsActive() c.Int {
	return 0
}

// llgo:link (*Handle).Close C.uv_close
func (handle *Handle) Close(closeCb CloseCb) {}

// llgo:link (*Handle).SendBufferSize C.uv_send_buffer_size
func (handle *Handle) SendBufferSize(value *c.Int) c.Int {
	return 0
}

// llgo:link (*Handle).RecvBufferSize C.uv_recv_buffer_size
func (handle *Handle) RecvBufferSize(value *c.Int) c.Int {
	return 0
}

// llgo:link (*Handle).Fileno C.uv_fileno
func (handle *Handle) Fileno(fd *OsFd) c.Int {
	return 0
}

//go:linkname UvPipe C.uv_pipe
func UvPipe(fds [2]UvFile, readFlags c.Int, writeFlags c.Int) c.Int {
	return 0
}

//go:linkname Socketpair C.uv_socketpair
func Socketpair(_type c.Int, protocol c.Int, socketVector [2]OsSock, flag0 c.Int, flag1 c.Int) c.Int {
	return 0
}

// llgo:link (*Handle).IsClosing C.uv_is_closing
func (handle *Handle) IsClosing() c.Int {
	return 0
}

// ----------------------------------------------

/* Req related function and method */

//go:linkname ReqSize C.uv_req_size
func ReqSize(reqType ReqType) uintptr

// llgo:link (*Req).GetData C.uv_req_get_data
func (req *Req) GetData() c.Pointer {
	return nil
}

// llgo:link (*Req).SetData C.uv_handle_set_data
func (req *Req) SetData(data c.Pointer) {}

// llgo:link (*Req).GetType C.uv_req_get_type
func (req *Req) GetType() ReqType {
	return 0
}

//go:linkname TypeName C.uv_req_type_name
func TypeName(reqType ReqType) *c.Char

// ----------------------------------------------

/* Stream related function and method */

// llgo:link (*Stream).GetWriteQueueSize C.uv_stream_get_write_queue_size
func (stream *Stream) GetWriteQueueSize() uintptr {
	return 0
}

// llgo:link (*Stream).Listen C.uv_listen
func (stream *Stream) Listen(backlog c.Int, connectionCb ConnectionCb) c.Int {
	return 0
}

// llgo:link (*Stream).Accept C.uv_accept
func (server *Stream) Accept(client *Stream) c.Int {
	return 0
}

// llgo:link (*Stream).StartRead C.uv_read_start
func (stream *Stream) StartRead(allocCb AllocCb, readCb ReadCb) c.Int {
	return 0
}

// llgo:link (*Stream).StopRead C.uv_read_stop
func (stream *Stream) StopRead() c.Int {
	return 0
}

// llgo:link (*Write).Write C.uv_write
func (req *Write) Write(stream *Stream, bufs *Buf, nbufs c.Uint, writeCb WriteCb) c.Int {
	return 0
}

// llgo:link (*Write).Write2 C.uv_write2
func (req *Write) Write2(stream *Stream, bufs *Buf, nbufs c.Uint, sendStream *Stream, writeCb WriteCb) c.Int {
	return 0
}

// llgo:link (*Stream).TryWrite C.uv_try_write
func (stream *Stream) TryWrite(bufs *Buf, nbufs c.Uint) c.Int {
	return 0
}

// llgo:link (*Stream).TryWrite2 C.uv_try_write2
func (stream *Stream) TryWrite2(bufs *Buf, nbufs c.Uint, sendStream *Stream) c.Int {
	return 0
}

// llgo:link (*Stream).IsReadable C.uv_is_readable
func (stream *Stream) IsReadable() c.Int {
	return 0
}

// llgo:link (*Stream).IsWritable C.uv_is_writable
func (stream *Stream) IsWritable() c.Int {
	return 0
}

// llgo:link (*Stream).SetBlocking C.uv_stream_set_blocking
func (stream *Stream) SetBlocking(blocking c.Int) c.Int {
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

// ----------------------------------------------

/* Getaddrinfo related function and method */

//go:linkname Getaddrinfo C.uv_getaddrinfo
func Getaddrinfo(loop *Loop, req *GetAddrInfo, getaddrinfoCb GetaddrinfoCb, node *c.Char, service *c.Char, hints *net.AddrInfo) c.Int

//go:linkname Freeaddrinfo C.uv_freeaddrinfo
func Freeaddrinfo(addrInfo *net.AddrInfo)

// ----------------------------------------------

/* Getnameinfo related function and method */

//go:linkname Getnameinfo C.uv_getnameinfo
func Getnameinfo(loop *Loop, req *GetNameInfo, getnameinfoCb GetnameinfoCb, addr *net.SockAddr, flags c.Int) c.Int
