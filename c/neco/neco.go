package neco

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoFiles   = "_wrap/neco.c"
	LLGoPackage = "link"
)

const (
	OK           = 0   ///< Successful result (no error)
	ERROR        = -1  ///< System error (check errno)
	INVAL        = -2  ///< Invalid argument
	PERM         = -3  ///< Operation not permitted
	NOMEM        = -4  ///< Cannot allocate memory
	EOF          = -5  ///< End of file or stream (neco_stream_*)
	NOTFOUND     = -6  ///< No such coroutine (neco_cancel)
	NOSIGWATCH   = -7  ///< Not watching on a signal
	CLOSED       = -8  ///< Channel is closed
	EMPTY        = -9  ///< Channel is empty (neco_chan_tryrecv)
	TIMEDOUT     = -10 ///< Deadline has elapsed (neco_*_dl)
	CANCELED     = -11 ///< Operation canceled (by neco_cancel)
	BUSY         = -12 ///< Resource busy (mutex_trylock)
	NEGWAITGRP   = -13 ///< Negative waitgroup counter
	GAIERROR     = -14 ///< Error with getaddrinfo (check neco_gai_error)
	UNREADFAIL   = -15 ///< Failed to unread byte (neco_stream_unread_byte)
	PARTIALWRITE = -16 ///< Failed to write all data (neco_stream_flush)
	NOTGENERATOR = -17 ///< Coroutine is not a generator (neco_gen_yield)
	NOTSUSPENDED = -18 ///< Coroutine is not suspended (neco_resume)

	CANCEL_ASYNC   = 1
	CANCEL_INLINE  = 2
	CANCEL_ENABLE  = 3
	CANCEL_DISABLE = 4

	EAI_SYSTEM = 11

	NANOSECOND  = int64(1)
	MICROSECOND = int64(1000)
	MILLISECOND = int64(1000000)
	SECOND      = int64(1000000000)
	MINUTE      = int64(60000000000)
	HOUR        = int64(3600000000000)
)

// generator
type Gen struct{}

// llgo:type C
type Coro = func(argc c.Int, argv *c.Pointer)

//go:linkname GenYield C.neco_gen_yield
func GenYield(data c.Pointer) c.Int

//go:linkname GenNext C.neco_gen_next
func GenNext(gen *Gen, data c.Pointer) c.Int

//go:linkname GenStart C.neco_gen_start
func GenStart(gen **Gen, dataSize uintptr, co Coro, argc c.Int, __llgo_va_list ...any) c.Int

//go:linkname GenRelease C.neco_gen_release
func GenRelease(gen *Gen) c.Int

//go:linkname ExitProg C.__neco_exit_prog
func ExitProg(code c.Int)

//go:linkname EnvSetpaniconerror C.neco_env_setpaniconerror
func EnvSetpaniconerror(paniconerror bool)

//go:linkname EnvSetcanceltype C.neco_env_setcanceltype
func EnvSetcanceltype(type_ c.Int)

//go:linkname Strerror C.neco_strerror
func Strerror(errcode c.Int) *c.Char

//go:linkname Start C.neco_start
func Start(co Coro, argc c.Int, __llgo_va_list ...any) c.Int
