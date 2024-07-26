package libuv

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/net"
	"github.com/goplus/llgo/c/syscall"
	_ "unsafe"
)

const (
	E2BIG           Errno = Errno(syscall.E2BIG)
	EACCES          Errno = Errno(syscall.EACCES)
	EADDRINUSE      Errno = Errno(syscall.EADDRINUSE)
	EADDRNOTAVAIL   Errno = Errno(syscall.EADDRNOTAVAIL)
	EAFNOSUPPORT    Errno = Errno(syscall.EAFNOSUPPORT)
	EAGAIN          Errno = Errno(syscall.EAGAIN)
	EALREADY        Errno = Errno(syscall.EALREADY)
	EBADF           Errno = Errno(syscall.EBADF)
	EBUSY           Errno = Errno(syscall.EBUSY)
	ECANCELED       Errno = Errno(syscall.ECANCELED)
	ECONNABORTED    Errno = Errno(syscall.ECONNABORTED)
	ECONNREFUSED    Errno = Errno(syscall.ECONNREFUSED)
	ECONNRESET      Errno = Errno(syscall.ECONNRESET)
	EDESTADDRREQ    Errno = Errno(syscall.EDESTADDRREQ)
	EEXIST          Errno = Errno(syscall.EEXIST)
	EFAULT          Errno = Errno(syscall.EFAULT)
	EFBIG           Errno = Errno(syscall.EFBIG)
	EHOSTUNREACH    Errno = Errno(syscall.EHOSTUNREACH)
	EINTR           Errno = Errno(syscall.EINTR)
	EINVAL          Errno = Errno(syscall.EINVAL)
	EIO             Errno = Errno(syscall.EIO)
	EISCONN         Errno = Errno(syscall.EISCONN)
	EISDIR          Errno = Errno(syscall.EISDIR)
	ELOOP           Errno = Errno(syscall.ELOOP)
	EMFILE          Errno = Errno(syscall.EMFILE)
	EMSGSIZE        Errno = Errno(syscall.EMSGSIZE)
	ENAMETOOLONG    Errno = Errno(syscall.ENAMETOOLONG)
	ENETDOWN        Errno = Errno(syscall.ENETDOWN)
	ENETUNREACH     Errno = Errno(syscall.ENETUNREACH)
	ENFILE          Errno = Errno(syscall.ENFILE)
	ENOBUFS         Errno = Errno(syscall.ENOBUFS)
	ENODEV          Errno = Errno(syscall.ENODEV)
	ENOENT          Errno = Errno(syscall.ENOENT)
	ENOMEM          Errno = Errno(syscall.ENOMEM)
	ENOPROTOOPT     Errno = Errno(syscall.ENOPROTOOPT)
	ENOSPC          Errno = Errno(syscall.ENOSPC)
	ENOSYS          Errno = Errno(syscall.ENOSYS)
	ENOTCONN        Errno = Errno(syscall.ENOTCONN)
	ENOTDIR         Errno = Errno(syscall.ENOTDIR)
	ENOTEMPTY       Errno = Errno(syscall.ENOTEMPTY)
	ENOTSOCK        Errno = Errno(syscall.ENOTSOCK)
	ENOTSUP         Errno = Errno(syscall.ENOTSUP)
	EOVERFLOW       Errno = Errno(syscall.EOVERFLOW)
	EPERM           Errno = Errno(syscall.EPERM)
	EPIPE           Errno = Errno(syscall.EPIPE)
	EPROTO          Errno = Errno(syscall.EPROTO)
	EPROTONOSUPPORT Errno = Errno(syscall.EPROTONOSUPPORT)
	EPROTOTYPE      Errno = Errno(syscall.EPROTOTYPE)
	ERANGE          Errno = Errno(syscall.ERANGE)
	EROFS           Errno = Errno(syscall.EROFS)
	ESHUTDOWN       Errno = Errno(syscall.ESHUTDOWN)
	ESPIPE          Errno = Errno(syscall.ESPIPE)
	ESRCH           Errno = Errno(syscall.ESRCH)
	ETIMEDOUT       Errno = Errno(syscall.ETIMEDOUT)
	ETXTBSY         Errno = Errno(syscall.ETXTBSY)
	EXDEV           Errno = Errno(syscall.EXDEV)
	ENXIO           Errno = Errno(syscall.ENXIO)
	EMLINK          Errno = Errno(syscall.EMLINK)
	EHOSTDOWN       Errno = Errno(syscall.EHOSTDOWN)
	ENOTTY          Errno = Errno(syscall.ENOTTY)
	EFTYPE          Errno = Errno(syscall.EFTYPE)
	EILSEQ          Errno = Errno(syscall.EILSEQ)
	ESOCKTNOSUPPORT Errno = Errno(syscall.ESOCKTNOSUPPORT)
)

const (
	EAI_ADDRFAMILY Errno = Errno(net.EAI_ADDRFAMILY)
	EAI_AGAIN      Errno = Errno(net.EAI_AGAIN)
	EAI_BADFLAGS   Errno = Errno(net.EAI_BADFLAGS)
	EAI_BADHINTS   Errno = Errno(net.EAI_BADHINTS)
	EAI_FAIL       Errno = Errno(net.EAI_FAIL)
	EAI_FAMILY     Errno = Errno(net.EAI_FAMILY)
	EAI_MEMORY     Errno = Errno(net.EAI_MEMORY)
	EAI_NODATA     Errno = Errno(net.EAI_NODATA)
	EAI_NONAME     Errno = Errno(net.EAI_NONAME)
	EAI_OVERFLOW   Errno = Errno(net.EAI_OVERFLOW)
	EAI_PROTOCOL   Errno = Errno(net.EAI_PROTOCOL)
	EAI_SERVICE    Errno = Errno(net.EAI_SERVICE)
	EAI_SOCKTYPE   Errno = Errno(net.EAI_SOCKTYPE)
)

const (
	EAI_CANCELED Errno = -3003
	ECHARSET     Errno = -4080
	ENONET       Errno = -4056
	UNKNOWN      Errno = -4094
	EOF          Errno = -1
	EREMOTEIO    Errno = -4030
	ERRNO_MAX    Errno = EOF - 1
)

type Errno c.Int

//go:linkname TranslateSysError C.uv_translate_sys_error
func TranslateSysError(sysErrno c.Int) Errno

//go:linkname Strerror C.uv_strerror
func Strerror(err Errno) *c.Char

//go:linkname StrerrorR C.uv_strerror_r
func StrerrorR(err Errno, buf *c.Char, bufLen uintptr) *c.Char

//go:linkname ErrName C.uv_err_name
func ErrName(err Errno) *c.Char

//go:linkname ErrNameR C.uv_err_name_r
func ErrNameR(err Errno, buf *c.Char, bufLen uintptr) *c.Char
