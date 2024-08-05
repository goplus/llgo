package openssl

import (
	"github.com/goplus/llgo/c"
)

type CRYPTO_REF_COUNT struct {
	Val c.Int
}
