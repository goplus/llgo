package internal

type hmac_ctx_st struct {
	MD    *EVP_MD
	MDCtx *EVP_MD_CTX
	ICtx  *EVP_MD_CTX
	OCtx  *EVP_MD_CTX
}

type HMAC_CTX hmac_ctx_st
