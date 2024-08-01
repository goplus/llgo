package internal

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

type InitFN func(ctx *EVP_MD_CTX) c.Int
type UpdateFN func(ctx *EVP_MD_CTX, data unsafe.Pointer, count uintptr) c.Int
type FinalFN func(ctx *EVP_MD_CTX, md *byte) c.Int
type CopyFN func(to *EVP_MD_CTX, from *EVP_MD_CTX) c.Int
type CleanFN func(ctx *EVP_MD_CTX)
type MdCtrlFN func(ctx *EVP_MD_CTX, cmd c.Int, p1 c.Int, p2 unsafe.Pointer)

type evp_md_st struct {
	// nid
	Typ c.Int
	// Legacy structure members
	PKeyType  c.Int
	MdSize    c.Int
	Flags     c.Ulong
	Origin    c.Int
	Init      *InitFN
	Update    *UpdateFN
	Final     *FinalFN
	Copy      *CopyFN
	Cleanup   *CleanFN
	BlockSize c.Int
	CtxSize   c.Int     // how big does the ctx->md_data need to be
	MdCtrl    *MdCtrlFN // control function
	// New structure members
	// Above comment to be removed when legacy has gone
	NameId            c.Int
	TypeName          *c.Char
	Description       *c.Char
	Prov              *OSSL_PROVIDER //tocheck
	RefCnt            CRYPTO_REF_COUNT
	NewCtx            *OSSL_FUNC_digest_newctx_fn
	DInit             *OSSL_FUNC_digest_init_fn
	DUpdate           *OSSL_FUNC_digest_update_fn
	DFinal            *OSSL_FUNC_digest_final_fn
	DSqueeze          *OSSL_FUNC_digest_squeeze_fn
	Digest            *OSSL_FUNC_digest_digest_fn
	FreeCtx           *OSSL_FUNC_digest_freectx_fn
	DupCtx            *OSSL_FUNC_digest_dupctx_fn
	GetParams         *OSSL_FUNC_digest_get_params_fn
	SetCtxParams      *OSSL_FUNC_digest_set_ctx_params_fn
	GetCtxParams      *OSSL_FUNC_digest_get_ctx_params_fn
	GettableParams    *OSSL_FUNC_digest_gettable_params_fn
	SettableCtxParams *OSSL_FUNC_digest_settable_ctx_params_fn
	GettableCtxParams *OSSL_FUNC_digest_gettable_ctx_params_fn
}

type EVP_MD evp_md_st

type evp_pkey_ctx_st TodoStruct

type EVP_PKEY_CTX evp_pkey_ctx_st

type evp_md_ctx_st struct {
	ReqDigest *EVP_MD // The original requested digest
	Digest    *EVP_MD
	Engine    *ENGINE // functional reference if 'digest' is ENGINE-provided
	Flags     c.Ulong
	MdData    unsafe.Pointer
	// Public key context for sign/verify
	PCtx *EVP_PKEY_CTX
	// Update function: usually copied from EVP_MD
	Update *UpdateFN
	// Opaque ctx returned from a providers digest algorithm implementation
	// OSSL_FUNC_digest_newctx()
	AlgCtx        unsafe.Pointer
	FetchedDigest *EVP_MD
}

type EVP_MD_CTX evp_md_ctx_st

type OSSL_FUNC_digest_newctx_fn func(unsafe.Pointer) unsafe.Pointer
type OSSL_FUNC_digest_init_fn func(ctx unsafe.Pointer, params []OSSL_PARAM) c.Int
type OSSL_FUNC_digest_update_fn func(ctx unsafe.Pointer, inp *byte, len uintptr) c.Int
type OSSL_FUNC_digest_final_fn func(ctx unsafe.Pointer, out *byte, outl *uintptr, outsz uintptr) c.Int
type OSSL_FUNC_digest_squeeze_fn func(vctx unsafe.Pointer, out *byte, outl *uintptr, outlen uintptr) c.Int
type OSSL_FUNC_digest_digest_fn func(provctx unsafe.Pointer,
	in *byte, inl uintptr, out *byte, outl *uintptr, outsz uintptr) c.Int
type OSSL_FUNC_digest_freectx_fn func(vctx unsafe.Pointer)
type OSSL_FUNC_digest_dupctx_fn func(ctx unsafe.Pointer) unsafe.Pointer
type OSSL_FUNC_digest_get_params_fn func(params []OSSL_PARAM) c.Int
type OSSL_FUNC_digest_set_ctx_params_fn func(vctx unsafe.Pointer, params []OSSL_PARAM) c.Int
type OSSL_FUNC_digest_get_ctx_params_fn func(dctx unsafe.Pointer, params []OSSL_PARAM) c.Int
type OSSL_FUNC_digest_gettable_params_fn func(provctx unsafe.Pointer) *OSSL_PARAM
type OSSL_FUNC_digest_settable_ctx_params_fn func(ctx unsafe.Pointer, provctx unsafe.Pointer) *OSSL_PARAM
type OSSL_FUNC_digest_gettable_ctx_params_fn func(dctx unsafe.Pointer, provctx unsafe.Pointer) *OSSL_PARAM
