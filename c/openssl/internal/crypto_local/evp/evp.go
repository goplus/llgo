//go:build !EVP_MD
// +build !EVP_MD

package evp

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl/inter"
	"github.com/goplus/llgo/c/openssl/internal/crypto_local"
	"github.com/goplus/llgo/c/openssl/internal/crypto_local/engine"
	"github.com/goplus/llgo/c/openssl/pub"
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
	Prov              *crypto_local.OSSL_PROVIDER //todo
	RefCnt            inter.CRYPTO_REF_COUNT
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

//------ # ifndef EVP_MD

// OSSL_DEPRECATEDIN_3_0 EVP_MD *EVP_MD_meth_new(int md_type, int pkey_type);
//
// llgo:link (*EVP_MD).MethNew C.EVP_MD_meth_new
func (c *EVP_MD) MethNew(md_type c.Int, pkey_type c.Int) *EVP_MD { return nil }

// OSSL_DEPRECATEDIN_3_0 EVP_MD *EVP_MD_meth_dup(const EVP_MD *md);
//
// llgo:link (*EVP_MD).MethDup C.EVP_MD_meth_dup
func (c *EVP_MD) MethDup() *EVP_MD { return nil }

// OSSL_DEPRECATEDIN_3_0 void EVP_MD_meth_free(EVP_MD *md);
//
// llgo:link (*EVP_MD).MethFree() C.EVP_MD_meth_free
func (c *EVP_MD) MethFree() {}

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_input_blocksize(EVP_MD *md, int blocksize);
//
// llgo:link (*EVP_MD).MethSetInputBlocksize C.EVP_MD_meth_set_input_blocksize
func (c *EVP_MD) MethSetInputBlocksize(blocksize c.Int) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_result_size(EVP_MD *md, int resultsize);
//
// llgo:link (*EVP_MD).MethSetResultSize C.EVP_MD_meth_set_result_size
func (c *EVP_MD) MethSetResultSize(resultsize c.Int) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_app_datasize(EVP_MD *md, int datasize);
//
// llgo:link (*EVP_MD).MethSetAppDatasize C.EVP_MD_meth_set_app_datasize
func (c *EVP_MD) MethSetAppDatasize(datasize c.Int) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_flags(EVP_MD *md, unsigned long flags);
//
// llgo:link (*EVP_MD).MethSetFlags C.EVP_MD_meth_set_flags
func (c *EVP_MD) MethSetFlags(flags c.Ulong) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_init(EVP_MD *md, int (*init)(EVP_MD_CTX *ctx));
//
// llgo:link (*EVP_MD).MethSetInit C.EVP_MD_meth_set_init
func (c *EVP_MD) MethSetInit(fnInit *(func(ctx *EVP_MD_CTX) c.Int)) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_update(EVP_MD *md, int (*update)(EVP_MD_CTX *ctx,
//
//	const void *data,
//	size_t count));
//
// llgo:link (*EVP_MD).MethSetUpdate C.EVP_MD_meth_set_update
func (c *EVP_MD) MethSetUpdate(fnUpdate *(func(ctx *EVP_MD_CTX, data unsafe.Pointer, count uintptr) c.Int)) c.Int {
	return 0
}

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_final(EVP_MD *md, int (*final)(EVP_MD_CTX *ctx,
//
//	unsigned char *md));
//
// llgo:link (*EVP_MD).MethSetFinal C.EVP_MD_meth_set_final
func (c *EVP_MD) MethSetFinal(fnFinal *(func(ctx *EVP_MD_CTX, md *byte) c.Int)) c.Int {
	return 0
}

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_copy(EVP_MD *md, int (*copy)(EVP_MD_CTX *to,
//
//	const EVP_MD_CTX *from));
//
// llgo:link (*EVP_MD).MethSetCopy C.EVP_MD_meth_set_copy
func (c *EVP_MD) MethSetCopy(fnCopy *(func(to *EVP_MD_CTX, from *EVP_MD_CTX) c.Int)) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_cleanup(EVP_MD *md, int (*cleanup)(EVP_MD_CTX *ctx));
//
// llgo:link (*EVP_MD).MethSetCleanup C.EVP_MD_meth_set_cleanup
func (c *EVP_MD) MethSetCleanup(fnCleanup *(func(ctx *EVP_MD_CTX) c.Int)) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_ctrl(EVP_MD *md, int (*ctrl)(EVP_MD_CTX *ctx, int cmd,
//
//	int p1, void *p2));
//
// llgo:link (*EVP_MD).MethSetCtrl C.EVP_MD_meth_set_ctrl
func (c *EVP_MD) MethSetCtrl(fnCtrl *(func(ctx *EVP_MD_CTX, cmd c.Int, p1 c.Int, p2 unsafe.Pointer) c.Int)) c.Int {
	return 0
}

// OSSL_DEPRECATEDIN_3_0 int EVP_MD_meth_get_input_blocksize(const EVP_MD *md);
//
// llgo:link (*EVP_MD).MethGetInputBlocksize C.EVP_MD_meth_get_input_blocksize
func (c *EVP_MD) MethGetInputBlocksize() c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0 int EVP_MD_meth_get_result_size(const EVP_MD *md);
//
// llgo:link (*EVP_MD).MethGetResultSize C.EVP_MD_meth_get_result_size
func (c *EVP_MD) MethGetResultSize() c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0 int EVP_MD_meth_get_app_datasize(const EVP_MD *md);
//
// llgo:link (*EVP_MD).MethGetAppDatasize C.EVP_MD_meth_get_app_datasize
func (c *EVP_MD) MethGetAppDatasize() c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0 unsigned long EVP_MD_meth_get_flags(const EVP_MD *md);
//
// llgo:link (*EVP_MD).MethGetFlags C.EVP_MD_meth_get_flags
func (c *EVP_MD) MethGetFlags() c.Ulong { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int (*EVP_MD_meth_get_init(const EVP_MD *md))(EVP_MD_CTX *ctx);
//
// llgo:link (*EVP_MD).MethGetInit C.EVP_MD_meth_get_init
func (c *EVP_MD) MethGetInit() *(func(ctx *EVP_MD_CTX) c.Int) { return nil }

// OSSL_DEPRECATEDIN_3_0
// int (*EVP_MD_meth_get_update(const EVP_MD *md))(EVP_MD_CTX *ctx,
//
//	const void *data, size_t count);
//
// llgo:link (*EVP_MD).MethGetUpdate C.EVP_MD_meth_get_update
func (*EVP_MD) MethGetUpdate() *(func(ctx *EVP_MD_CTX, data unsafe.Pointer, count uintptr) c.Int) {
	return nil
}

// OSSL_DEPRECATEDIN_3_0
// int (*EVP_MD_meth_get_final(const EVP_MD *md))(EVP_MD_CTX *ctx,
//
//	unsigned char *md);
//
// llgo:link (*EVP_MD).MethGetFinal C.EVP_MD_meth_get_final
func (c *EVP_MD) MethGetFinal() *(func(ctx *EVP_MD_CTX, md *byte) c.Int) { return nil }

// OSSL_DEPRECATEDIN_3_0
// int (*EVP_MD_meth_get_copy(const EVP_MD *md))(EVP_MD_CTX *to,
//
//	const EVP_MD_CTX *from);
//
// llgo:link (*EVP_MD).MethGetCopy C.EVP_MD_meth_get_copy
func (c *EVP_MD) MethGetCopy() *(func(to *EVP_MD_CTX, from *EVP_MD_CTX) c.Int) { return nil }

// OSSL_DEPRECATEDIN_3_0
// int (*EVP_MD_meth_get_cleanup(const EVP_MD *md))(EVP_MD_CTX *ctx);
//
// llgo:link (*EVP_MD).MethGetCleanup C.EVP_MD_meth_get_cleanup
func (c *EVP_MD) MethGetCleanup() *(func(ctx *EVP_MD_CTX) c.Int) { return nil }

// OSSL_DEPRECATEDIN_3_0
// int (*EVP_MD_meth_get_ctrl(const EVP_MD *md))(EVP_MD_CTX *ctx, int cmd,
//
//	int p1, void *p2);
//
// llgo:link (*EVP_MD).MethGetCtrl C.EVP_MD_meth_get_ctrl
func (c *EVP_MD) MethGetCtrl() *(func(ctx *EVP_MD_CTX, cmd c.Int, p1 c.Int, p2 unsafe.Pointer) c.Int) {
	return nil
}

const (
	/* digest can only handle a single block */
	EVP_MD_FLAG_ONESHOT = 0x0001
	/* digest is extensible-output function, XOF */
	EVP_MD_FLAG_XOF = 0x0002

	/* DigestAlgorithmIdentifier flags... */
	EVP_MD_FLAG_DIGALGID_MASK = 0x0018

	/* NULL or absent parameter accepted. Use NULL */
	EVP_MD_FLAG_DIGALGID_NULL = 0x0000

	/* NULL or absent parameter accepted. Use NULL for PKCS#1 otherwise absent */
	EVP_MD_FLAG_DIGALGID_ABSENT = 0x0008

	/* Custom handling via ctrl */
	EVP_MD_FLAG_DIGALGID_CUSTOM = 0x0018

	/* Note if suitable for use in FIPS mode */
	EVP_MD_FLAG_FIPS = 0x0400

	/* Digest ctrls */
	EVP_MD_CTRL_DIGALGID = 0x1
	EVP_MD_CTRL_MICALG   = 0x2
	EVP_MD_CTRL_XOF_LEN  = 0x3
	EVP_MD_CTRL_TLSTREE  = 0x4

	/* Minimum Algorithm specific ctrl value */
	EVP_MD_CTRL_ALG_CTRL = 0x1000
)

/*--------------- !EVP_MD */

type evp_pkey_ctx_st struct {
	//todo
}

type EVP_PKEY_CTX evp_pkey_ctx_st

type evp_md_ctx_st struct {
	ReqDigest *EVP_MD // The original requested digest
	Digest    *EVP_MD
	Engine    *engine.ENGINE // functional reference if 'digest' is ENGINE-provided
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
type OSSL_FUNC_digest_init_fn func(ctx unsafe.Pointer, params []pub.OSSL_PARAM) c.Int
type OSSL_FUNC_digest_update_fn func(ctx unsafe.Pointer, inp *byte, len uintptr) c.Int
type OSSL_FUNC_digest_final_fn func(ctx unsafe.Pointer, out *byte, outl *uintptr, outsz uintptr) c.Int
type OSSL_FUNC_digest_squeeze_fn func(vctx unsafe.Pointer, out *byte, outl *uintptr, outlen uintptr) c.Int
type OSSL_FUNC_digest_digest_fn func(provctx unsafe.Pointer,
	in *byte, inl uintptr, out *byte, outl *uintptr, outsz uintptr) c.Int
type OSSL_FUNC_digest_freectx_fn func(vctx unsafe.Pointer)
type OSSL_FUNC_digest_dupctx_fn func(ctx unsafe.Pointer) unsafe.Pointer
type OSSL_FUNC_digest_get_params_fn func(params []pub.OSSL_PARAM) c.Int
type OSSL_FUNC_digest_set_ctx_params_fn func(vctx unsafe.Pointer, params []pub.OSSL_PARAM) c.Int
type OSSL_FUNC_digest_get_ctx_params_fn func(dctx unsafe.Pointer, params []pub.OSSL_PARAM) c.Int
type OSSL_FUNC_digest_gettable_params_fn func(provctx unsafe.Pointer) *pub.OSSL_PARAM
type OSSL_FUNC_digest_settable_ctx_params_fn func(ctx unsafe.Pointer, provctx unsafe.Pointer) *pub.OSSL_PARAM
type OSSL_FUNC_digest_gettable_ctx_params_fn func(dctx unsafe.Pointer, provctx unsafe.Pointer) *pub.OSSL_PARAM

type CipherInitFn func(ctx *EVP_CIPHER_CTX, key *byte, iv *byte, enc c.Int) c.Int
type DoChipperFn func(ctx *EVP_CIPHER_CTX, out *byte, in *byte, intl uintptr) c.Int
type CipherCleanFn func(ctx *EVP_CIPHER_CTX) c.Int
type CipherSetAsn1ParametersFn func(ctx *EVP_CIPHER_CTX, t *pub.ASN1_TYPE) c.Int
type CipherGetAsn1ParametersFn func(ctx *EVP_CIPHER_CTX, t *pub.ASN1_TYPE) c.Int
type CipherCtrlFn func(ctx *EVP_CIPHER_CTX, typ c.Int, arg c.Int, ptr unsafe.Pointer) c.Int

type evp_cipher_st struct {
	Nid       c.Int
	BlockSize c.Int
	/* Default value for variable length ciphers */
	KeyLen c.Int
	IvLen  c.Int
	/* Legacy structure members */
	/* Various flags */
	Flags c.Ulong
	/* How the EVP_CIPHER was created. */
	Origin c.Int
	/* init key */
	Init *CipherInitFn
	/* encrypt/decrypt data */
	DoCipher *DoChipperFn
	/* cleanup ctx */
	Cleanup *CipherCleanFn
	/* how big ctx->cipher_data needs to be */
	CtxSize c.Int
	/* Populate a ASN1_TYPE with parameters */
	SetAsn1Parameters *CipherSetAsn1ParametersFn
	/* Get parameters from a ASN1_TYPE */
	GetAsn1Parameters *CipherGetAsn1ParametersFn
	/* Miscellaneous operations */
	Ctrl *CipherCtrlFn
	/* Application data */
	AppData unsafe.Pointer
	/* New structure members */
	/* Above comment to be removed when legacy has gone */
	NameId            c.Int
	TypeName          *c.Char
	Description       *c.Char
	Prov              *crypto_local.OSSL_PROVIDER
	RefCnt            inter.CRYPTO_REF_COUNT
	NewCtx            *OSSL_FUNC_cipher_newctx_fn
	EInit             *OSSL_FUNC_cipher_encrypt_init_fn
	DInit             *OSSL_FUNC_cipher_decrypt_init_fn
	CUpdate           *OSSL_FUNC_cipher_update_fn
	CFinal            *OSSL_FUNC_cipher_final_fn
	CCipher           *OSSL_FUNC_cipher_cipher_fn
	FreeCtx           *OSSL_FUNC_cipher_freectx_fn
	DupCtx            *OSSL_FUNC_cipher_dupctx_fn
	GetParams         *OSSL_FUNC_cipher_get_params_fn
	GetCtxParams      *OSSL_FUNC_cipher_get_ctx_params_fn
	SetCtxParams      *OSSL_FUNC_cipher_set_ctx_params_fn
	GettableParams    *OSSL_FUNC_cipher_gettable_params_fn
	GettableCtxParams *OSSL_FUNC_cipher_gettable_ctx_params_fn
	SettableCtxParams *OSSL_FUNC_cipher_settable_ctx_params_fn
}

type OSSL_FUNC_cipher_newctx_fn func(provctx unsafe.Pointer) unsafe.Pointer
type OSSL_FUNC_cipher_encrypt_init_fn func(ctx unsafe.Pointer, key *byte, keylen uintptr, iv *byte, ivlen uintptr, params []pub.OSSL_PARAM) c.Int
type OSSL_FUNC_cipher_decrypt_init_fn func(vctx unsafe.Pointer, key *byte,
	keylen uintptr, iv *byte, ivlen uintptr, params []pub.OSSL_PARAM) c.Int
type OSSL_FUNC_cipher_update_fn func(vctx unsafe.Pointer, out *byte, outl *uintptr,
	outsize uintptr, in *byte, inl uintptr) c.Int
type OSSL_FUNC_cipher_final_fn func(vctx unsafe.Pointer, out *byte, outl *uintptr,
	outsize uintptr) c.Int
type OSSL_FUNC_cipher_cipher_fn func(vctx unsafe.Pointer, out *byte, outl *uintptr,
	outsize uintptr, in *byte, intl uintptr) c.Int
type OSSL_FUNC_cipher_freectx_fn func(vctx unsafe.Pointer)
type OSSL_FUNC_cipher_dupctx_fn func(vctx unsafe.Pointer) unsafe.Pointer
type OSSL_FUNC_cipher_get_params_fn func(params []pub.OSSL_PARAM) c.Int
type OSSL_FUNC_cipher_get_ctx_params_fn func(vctx unsafe.Pointer, params []pub.OSSL_PARAM) c.Int
type OSSL_FUNC_cipher_set_ctx_params_fn func(vctx unsafe.Pointer, params []pub.OSSL_PARAM) c.Int
type OSSL_FUNC_cipher_gettable_params_fn func(provctx unsafe.Pointer) *pub.OSSL_PARAM
type OSSL_FUNC_cipher_gettable_ctx_params_fn func(cctx unsafe.Pointer, p_ctx unsafe.Pointer) *pub.OSSL_PARAM
type OSSL_FUNC_cipher_settable_ctx_params_fn func(cctx unsafe.Pointer, p_ctx unsafe.Pointer) *pub.OSSL_PARAM

type EVP_CIPHER evp_cipher_st

/*
 * To support transparent execution of operation in backends other
 * than the "origin" key, we support transparent export/import to
 * those providers, and maintain a cache of the imported keydata,
 * so we don't need to redo the export/import every time we perform
 * the same operation in that same provider.
 * This requires that the "origin" backend (whether it's a legacy or a
 * provider "origin") implements exports, and that the target provider
 * has an EVP_KEYMGMT that implements import.
 */
type OP_CACHE_ELEM struct {
	Keymgmt   *EVP_KEYMGMT
	Keydata   unsafe.Pointer
	Selection c.Int
}

//DEFINE_STACK_OF(OP_CACHE_ELEM) todo

// todo ....
