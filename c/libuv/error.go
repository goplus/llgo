package libuv

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

const (
	E2BIG Errno = iota
	EACCES
	EADDRINUSE
	EADDRNOTAVAIL
	EAFNOSUPPORT
	EAGAIN
	EAI_ADDRFAMILY
	EAI_AGAIN
	EAI_BADFLAGS
	EAI_BADHINTS
	EAI_CANCELED
	EAI_FAIL
	EAI_FAMILY
	EAI_MEMORY
	EAI_NODATA
	EAI_NONAME
	EAI_OVERFLOW
	EAI_PROTOCOL
	EAI_SERVICE
	EAI_SOCKTYPE
	EALREADY
	EBADF
	EBUSY
	ECANCELED
	ECHARSET
	ECONNABORTED
	ECONNREFUSED
	ECONNRESET
	EDESTADDRREQ
	EEXIST
	EFAULT
	EFBIG
	EHOSTUNREACH
	EINTR
	EINVAL
	EIO
	EISCONN
	EISDIR
	ELOOP
	EMFILE
	EMSGSIZE
	ENAMETOOLONG
	ENETDOWN
	ENETUNREACH
	ENFILE
	ENOBUFS
	ENODEV
	ENOENT
	ENOMEM
	ENONET
	ENOPROTOOPT
	ENOSPC
	ENOSYS
	ENOTCONN
	ENOTDIR
	ENOTEMPTY
	ENOTSOCK
	ENOTSUP
	EOVERFLOW
	EPERM
	EPIPE
	EPROTO
	EPROTONOSUPPORT
	EPROTOTYPE
	ERANGE
	EROFS
	ESHUTDOWN
	ESPIPE
	ESRCH
	ETIMEDOUT
	ETXTBSY
	EXDEV
	UNKNOWN
	EOF
	ENXIO
	EMLINK
	EHOSTDOWN
	EREMOTEIO
	ENOTTY
	EFTYPE
	EILSEQ
	ESOCKTNOSUPPORT
	ENODATA
	EUNATCH
	ERRNO_MAX
)

//var errnoDescriptions = map[Errno]string{
//	E2BIG:              "argument list too long",
//	EACCES:             "permission denied",
//	EADDRINUSE:         "address already in use",
//	EADDRNOTAVAIL:      "address not available",
//	EAFNOSUPPORT:       "address family not supported",
//	EAGAIN:             "resource temporarily unavailable",
//	EAI_ADDRFAMILY:     "address family not supported",
//	EAI_AGAIN:          "temporary failure",
//	EAI_BADFLAGS:       "bad ai_flags value",
//	EAI_BADHINTS:       "invalid value for hints",
//	EAI_CANCELED:       "request canceled",
//	EAI_FAIL:           "permanent failure",
//	EAI_FAMILY:         "ai_family not supported",
//	EAI_MEMORY:         "out of memory",
//	EAI_NODATA:         "no address",
//	EAI_NONAME:         "unknown node or service",
//	EAI_OVERFLOW:       "argument buffer overflow",
//	EAI_PROTOCOL:       "resolved protocol is unknown",
//	EAI_SERVICE:        "service not available for socket type",
//	EAI_SOCKTYPE:       "socket type not supported",
//	EALREADY:           "connection already in progress",
//	EBADF:              "bad file descriptor",
//	EBUSY:              "resource busy or locked",
//	ECANCELED:          "operation canceled",
//	ECHARSET:           "invalid Unicode character",
//	ECONNABORTED:       "software caused connection abort",
//	ECONNREFUSED:       "connection refused",
//	ECONNRESET:         "connection reset by peer",
//	EDESTADDRREQ:       "destination address required",
//	EEXIST:             "file already exists",
//	EFAULT:             "bad address in system call argument",
//	EFBIG:              "file too large",
//	EHOSTUNREACH:       "host is unreachable",
//	EINTR:              "interrupted system call",
//	EINVAL:             "invalid argument",
//	EIO:                "i/o error",
//	EISCONN:            "socket is already connected",
//	EISDIR:             "illegal operation on a directory",
//	ELOOP:              "too many symbolic links encountered",
//	EMFILE:             "too many open files",
//	EMSGSIZE:           "message too long",
//	ENAMETOOLONG:       "name too long",
//	ENETDOWN:           "network is down",
//	ENETUNREACH:        "network is unreachable",
//	ENFILE:             "file table overflow",
//	ENOBUFS:            "no buffer space available",
//	ENODEV:             "no such device",
//	ENOENT:             "no such file or directory",
//	ENOMEM:             "not enough memory",
//	ENONET:             "machine is not on the network",
//	ENOPROTOOPT:        "protocol not available",
//	ENOSPC:             "no space left on device",
//	ENOSYS:             "function not implemented",
//	ENOTCONN:           "socket is not connected",
//	ENOTDIR:            "not a directory",
//	ENOTEMPTY:          "directory not empty",
//	ENOTSOCK:           "socket operation on non-socket",
//	ENOTSUP:            "operation not supported on socket",
//	EOVERFLOW:          "value too large for defined data type",
//	EPERM:              "operation not permitted",
//	EPIPE:              "broken pipe",
//	EPROTO:             "protocol error",
//	EPROTONOSUPPORT:    "protocol not supported",
//	EPROTOTYPE:         "protocol wrong type for socket",
//	ERANGE:             "result too large",
//	EROFS:              "read-only file system",
//	ESHUTDOWN:          "cannot send after transport endpoint shutdown",
//	ESPIPE:             "invalid seek",
//	ESRCH:              "no such process",
//	ETIMEDOUT:          "connection timed out",
//	ETXTBSY:            "text file is busy",
//	EXDEV:              "cross-device link not permitted",
//	UNKNOWN:            "unknown error",
//	EOF:                "end of file",
//	ENXIO:              "no such device or address",
//	EMLINK:             "too many links",
//	EHOSTDOWN:          "host is down",
//	EREMOTEIO:          "remote I/O error",
//	ENOTTY:             "inappropriate ioctl for device",
//	EFTYPE:             "inappropriate file type or format",
//	EILSEQ:             "illegal byte sequence",
//	ESOCKTNOSUPPORT:    "socket type not supported",
//	ENODATA:            "no data available",
//	EUNATCH:            "protocol driver not attached",
//}

type Errno c.Int

//go:linkname TranslateSysError C.uv_translate_sys_error
func TranslateSysError(sysErrno c.Int) c.Int

//go:linkname Strerror C.uv_strerror
func Strerror(err c.Int) *c.Char

//go:linkname StrerrorR C.uv_strerror_r
func StrerrorR(err c.Int, buf *c.Char, bufLen uintptr) *c.Char

//go:linkname ErrName C.uv_err_name
func ErrName(err c.Int) *c.Char

//go:linkname ErrNameR C.uv_err_name_r
func ErrNameR(err c.Int, buf *c.Char, bufLen uintptr) *c.Char
