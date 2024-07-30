package openssl

import "github.com/goplus/llgo/c"

const (
	SHA_DIGEST_LENGTH = 20
	SHA_LBLOCK        = 16
	SHA_CBLOCK        = (SHA_LBLOCK * 4)
	SHA_LAST_BLOCK    = (SHA_CBLOCK - 8)

	SHA256_CBLOCK            = (SHA_LBLOCK * 4)
	SHA256_192_DIGEST_LENGTH = 24
	SHA224_DIGEST_LENGTH     = 28
	SHA256_DIGEST_LENGTH     = 32
	SHA384_DIGEST_LENGTH     = 48
	SHA512_DIGEST_LENGTH     = 64
	SHA512_CBLOCK            = (SHA_LBLOCK * 8)
)

/*
#  if (defined(_WIN32) || defined(_WIN64)) && !defined(__MINGW32__)
#   define SHA_LONG64 unsigned __int64
#  elif defined(__arch64__)
#   define SHA_LONG64 unsigned long
#  else
#   define SHA_LONG64 unsigned long long
#  endif
*/
type SHA_LONG64 = c.UlongLong

type SHA_LONG = c.Uint
