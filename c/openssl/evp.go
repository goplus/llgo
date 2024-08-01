package openssl

import "github.com/goplus/llgo/c/openssl/internal"

func EVP_sha256() *EVP_MD {
	return (*EVP_MD)(internal.EVP_sha256())
}
