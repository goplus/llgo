package hmac

import "github.com/goplus/llgo/c/openssl/internal/crypto_local/evp"

type hmac_ctx_st struct {
	MD    *evp.EVP_MD
	MDCtx *evp.EVP_MD_CTX
	ICtx  *evp.EVP_MD_CTX
	OCtx  *evp.EVP_MD_CTX
}

type HMAC_CTX hmac_ctx_st
