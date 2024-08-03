package openssl

import (
	"github.com/goplus/llgo/c/openssl/internal/crypto_local"
	"github.com/goplus/llgo/c/openssl/internal/crypto_local/engine"
	"github.com/goplus/llgo/c/openssl/internal/crypto_local/evp"
	"github.com/goplus/llgo/c/openssl/internal/crypto_local/hmac"
	"github.com/goplus/llgo/c/openssl/pub"
)

type HMAC_CTX hmac.HMAC_CTX

type EVP_MD evp.EVP_MD

type EVP_MD_CTX evp.EVP_MD_CTX

type ENGINE engine.ENGINE

type OSSL_LIB_CTX crypto_local.OSSL_LIB_CTX

type ERR_STRING_DATA pub.ERR_STRING_DATA

type OSSL_CORE_HANDLE pub.OSSL_CORE_HANDLE

type OSSL_ALGORITHM pub.OSSL_ALGORITHM

// todo ...
