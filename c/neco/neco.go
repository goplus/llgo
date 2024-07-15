package neco

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoFiles   = "_neco/neco.c"
	LLGoPackage = "link"
)

const (
	NECO_OK           = 0   ///< Successful result (no error)
	NECO_ERROR        = -1  ///< System error (check errno)
	NECO_INVAL        = -2  ///< Invalid argument
	NECO_PERM         = -3  ///< Operation not permitted
	NECO_NOMEM        = -4  ///< Cannot allocate memory
	NECO_EOF          = -5  ///< End of file or stream (neco_stream_*)
	NECO_NOTFOUND     = -6  ///< No such coroutine (neco_cancel)
	NECO_NOSIGWATCH   = -7  ///< Not watching on a signal
	NECO_CLOSED       = -8  ///< Channel is closed
	NECO_EMPTY        = -9  ///< Channel is empty (neco_chan_tryrecv)
	NECO_TIMEDOUT     = -10 ///< Deadline has elapsed (neco_*_dl)
	NECO_CANCELED     = -11 ///< Operation canceled (by neco_cancel)
	NECO_BUSY         = -12 ///< Resource busy (mutex_trylock)
	NECO_NEGWAITGRP   = -13 ///< Negative waitgroup counter
	NECO_GAIERROR     = -14 ///< Error with getaddrinfo (check neco_gai_error)
	NECO_UNREADFAIL   = -15 ///< Failed to unread byte (neco_stream_unread_byte)
	NECO_PARTIALWRITE = -16 ///< Failed to write all data (neco_stream_flush)
	NECO_NOTGENERATOR = -17 ///< Coroutine is not a generator (neco_gen_yield)
	NECO_NOTSUSPENDED = -18 ///< Coroutine is not suspended (neco_resume)

	NECO_CANCEL_ASYNC   = 1
	NECO_CANCEL_INLINE  = 2
	NECO_CANCEL_ENABLE  = 3
	NECO_CANCEL_DISABLE = 4
)

//go:linkname Neco_gen_yield C.neco_gen_yield
func Neco_gen_yield(data c.Pointer) c.Int

//go:linkname Neco_gen_next C.neco_gen_next
func Neco_gen_next(gen *Neco_gen, data c.Pointer) c.Int

//go:linkname Neco_gen_start C.neco_gen_start
func Neco_gen_start(gen **Neco_gen, data_size uintptr, co Neco_coro, argc c.Int, argv ...any) c.Int

//go:linkname Neco_gen_release C.neco_gen_release
func Neco_gen_release(gen *Neco_gen) c.Int

//go:linkname Neco_exit_prog C.__neco_exit_prog
func Neco_exit_prog(code c.Int)

//go:linkname Neco_env_setpaniconerror C.neco_env_setpaniconerror
func Neco_env_setpaniconerror(paniconerror bool)

//go:linkname Neco_env_setcanceltype C.neco_env_setcanceltype
func Neco_env_setcanceltype(type_ c.Int)

//go:linkname Neco_strerror C.neco_strerror
func Neco_strerror(errcode int) *c.Char

//go:linkname Neco_start C.neco_start
func Neco_start(co Neco_coro, argc c.Int, argv ...any) c.Int

type Neco_gen struct{}

type Neco_coro = func(argc c.Int, argv ...any)
