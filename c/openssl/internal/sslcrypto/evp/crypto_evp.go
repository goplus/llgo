package evp

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl/inter"
	"github.com/goplus/llgo/c/openssl/internal/sslcrypto"
	"github.com/goplus/llgo/c/openssl/internal/sslcrypto/engine"
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
	Prov              *sslcrypto.OSSL_PROVIDER //todo
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
	Prov              *sslcrypto.OSSL_PROVIDER
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

/* Macros to code block cipher wrappers */

/* Wrapper functions for each cipher mode */

/*
#define EVP_C_DATA(kstruct, ctx) \
        ((kstruct *)EVP_CIPHER_CTX_get_cipher_data(ctx))

#define BLOCK_CIPHER_ecb_loop() \
        size_t i, bl; \
        bl = EVP_CIPHER_CTX_get0_cipher(ctx)->block_size;    \
        if (inl < bl) return 1;\
        inl -= bl; \
        for (i=0; i <= inl; i+=bl)

#define BLOCK_CIPHER_func_ecb(cname, cprefix, kstruct, ksched) \
static int cname##_ecb_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out, const unsigned char *in, size_t inl) \
{\
        BLOCK_CIPHER_ecb_loop() \
            cprefix##_ecb_encrypt(in + i, out + i, &EVP_C_DATA(kstruct,ctx)->ksched, EVP_CIPHER_CTX_is_encrypting(ctx)); \
        return 1;\
}

#define EVP_MAXCHUNK ((size_t)1 << 30)

#define BLOCK_CIPHER_func_ofb(cname, cprefix, cbits, kstruct, ksched) \
    static int cname##_ofb_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out, const unsigned char *in, size_t inl) \
{\
        while(inl>=EVP_MAXCHUNK) {\
            int num = EVP_CIPHER_CTX_get_num(ctx);\
            cprefix##_ofb##cbits##_encrypt(in, out, (long)EVP_MAXCHUNK, &EVP_C_DATA(kstruct,ctx)->ksched, ctx->iv, &num); \
            EVP_CIPHER_CTX_set_num(ctx, num);\
            inl-=EVP_MAXCHUNK;\
            in +=EVP_MAXCHUNK;\
            out+=EVP_MAXCHUNK;\
        }\
        if (inl) {\
            int num = EVP_CIPHER_CTX_get_num(ctx);\
            cprefix##_ofb##cbits##_encrypt(in, out, (long)inl, &EVP_C_DATA(kstruct,ctx)->ksched, ctx->iv, &num); \
            EVP_CIPHER_CTX_set_num(ctx, num);\
        }\
        return 1;\
}

#define BLOCK_CIPHER_func_cbc(cname, cprefix, kstruct, ksched) \
static int cname##_cbc_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out, const unsigned char *in, size_t inl) \
{\
        while(inl>=EVP_MAXCHUNK) {\
            cprefix##_cbc_encrypt(in, out, (long)EVP_MAXCHUNK, &EVP_C_DATA(kstruct,ctx)->ksched, ctx->iv, EVP_CIPHER_CTX_is_encrypting(ctx));\
            inl-=EVP_MAXCHUNK;\
            in +=EVP_MAXCHUNK;\
            out+=EVP_MAXCHUNK;\
        }\
        if (inl)\
            cprefix##_cbc_encrypt(in, out, (long)inl, &EVP_C_DATA(kstruct,ctx)->ksched, ctx->iv, EVP_CIPHER_CTX_is_encrypting(ctx));\
        return 1;\
}

#define BLOCK_CIPHER_func_cfb(cname, cprefix, cbits, kstruct, ksched)  \
static int cname##_cfb##cbits##_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out, const unsigned char *in, size_t inl) \
{\
    size_t chunk = EVP_MAXCHUNK;\
    if (cbits == 1)  chunk >>= 3;\
    if (inl < chunk) chunk = inl;\
    while (inl && inl >= chunk) {\
        int num = EVP_CIPHER_CTX_get_num(ctx);\
        cprefix##_cfb##cbits##_encrypt(in, out, (long) \
            ((cbits == 1) \
                && !EVP_CIPHER_CTX_test_flags(ctx, EVP_CIPH_FLAG_LENGTH_BITS) \
                ? chunk*8 : chunk), \
            &EVP_C_DATA(kstruct, ctx)->ksched, ctx->iv,\
            &num, EVP_CIPHER_CTX_is_encrypting(ctx));\
        EVP_CIPHER_CTX_set_num(ctx, num);\
        inl -= chunk;\
        in += chunk;\
        out += chunk;\
        if (inl < chunk) chunk = inl;\
    }\
    return 1;\
}

#define BLOCK_CIPHER_all_funcs(cname, cprefix, cbits, kstruct, ksched) \
        BLOCK_CIPHER_func_cbc(cname, cprefix, kstruct, ksched) \
        BLOCK_CIPHER_func_cfb(cname, cprefix, cbits, kstruct, ksched) \
        BLOCK_CIPHER_func_ecb(cname, cprefix, kstruct, ksched) \
        BLOCK_CIPHER_func_ofb(cname, cprefix, cbits, kstruct, ksched)

#define BLOCK_CIPHER_def1(cname, nmode, mode, MODE, kstruct, nid, block_size, \
                          key_len, iv_len, flags, init_key, cleanup, \
                          set_asn1, get_asn1, ctrl) \
static const EVP_CIPHER cname##_##mode = { \
        nid##_##nmode, block_size, key_len, iv_len, \
        flags | EVP_CIPH_##MODE##_MODE, \
        EVP_ORIG_GLOBAL, \
        init_key, \
        cname##_##mode##_cipher, \
        cleanup, \
        sizeof(kstruct), \
        set_asn1, get_asn1,\
        ctrl, \
        NULL \
}; \
const EVP_CIPHER *EVP_##cname##_##mode(void) { return &cname##_##mode; }

#define BLOCK_CIPHER_def_cbc(cname, kstruct, nid, block_size, key_len, \
                             iv_len, flags, init_key, cleanup, set_asn1, \
                             get_asn1, ctrl) \
BLOCK_CIPHER_def1(cname, cbc, cbc, CBC, kstruct, nid, block_size, key_len, \
                  iv_len, flags, init_key, cleanup, set_asn1, get_asn1, ctrl)

#define BLOCK_CIPHER_def_cfb(cname, kstruct, nid, key_len, \
                             iv_len, cbits, flags, init_key, cleanup, \
                             set_asn1, get_asn1, ctrl) \
BLOCK_CIPHER_def1(cname, cfb##cbits, cfb##cbits, CFB, kstruct, nid, 1, \
                  key_len, iv_len, flags, init_key, cleanup, set_asn1, \
                  get_asn1, ctrl)

#define BLOCK_CIPHER_def_ofb(cname, kstruct, nid, key_len, \
                             iv_len, cbits, flags, init_key, cleanup, \
                             set_asn1, get_asn1, ctrl) \
BLOCK_CIPHER_def1(cname, ofb##cbits, ofb, OFB, kstruct, nid, 1, \
                  key_len, iv_len, flags, init_key, cleanup, set_asn1, \
                  get_asn1, ctrl)

#define BLOCK_CIPHER_def_ecb(cname, kstruct, nid, block_size, key_len, \
                             flags, init_key, cleanup, set_asn1, \
                             get_asn1, ctrl) \
BLOCK_CIPHER_def1(cname, ecb, ecb, ECB, kstruct, nid, block_size, key_len, \
                  0, flags, init_key, cleanup, set_asn1, get_asn1, ctrl)

#define BLOCK_CIPHER_defs(cname, kstruct, \
                          nid, block_size, key_len, iv_len, cbits, flags, \
                          init_key, cleanup, set_asn1, get_asn1, ctrl) \
BLOCK_CIPHER_def_cbc(cname, kstruct, nid, block_size, key_len, iv_len, flags, \
                     init_key, cleanup, set_asn1, get_asn1, ctrl) \
BLOCK_CIPHER_def_cfb(cname, kstruct, nid, key_len, iv_len, cbits, \
                     flags, init_key, cleanup, set_asn1, get_asn1, ctrl) \
BLOCK_CIPHER_def_ofb(cname, kstruct, nid, key_len, iv_len, cbits, \
                     flags, init_key, cleanup, set_asn1, get_asn1, ctrl) \
BLOCK_CIPHER_def_ecb(cname, kstruct, nid, block_size, key_len, flags, \
                     init_key, cleanup, set_asn1, get_asn1, ctrl)
*/

/*
#define IMPLEMENT_BLOCK_CIPHER(cname, ksched, cprefix, kstruct, nid, \
                               block_size, key_len, iv_len, cbits, \
                               flags, init_key, \
                               cleanup, set_asn1, get_asn1, ctrl) \
        BLOCK_CIPHER_all_funcs(cname, cprefix, cbits, kstruct, ksched) \
        BLOCK_CIPHER_defs(cname, kstruct, nid, block_size, key_len, iv_len, \
                          cbits, flags, init_key, cleanup, set_asn1, \
                          get_asn1, ctrl)

#define IMPLEMENT_CFBR(cipher,cprefix,kstruct,ksched,keysize,cbits,iv_len,fl) \
        BLOCK_CIPHER_func_cfb(cipher##_##keysize,cprefix,cbits,kstruct,ksched) \
        BLOCK_CIPHER_def_cfb(cipher##_##keysize,kstruct, \
                             NID_##cipher##_##keysize, keysize/8, iv_len, cbits, \
                             (fl)|EVP_CIPH_FLAG_DEFAULT_ASN1, \
                             cipher##_init_key, NULL, NULL, NULL, NULL)
*/

type evp_cipher_aead_asn1_params struct {
	Iv     [EVP_MAX_IV_LENGTH]byte
	IvLen  c.Uint
	TagLen c.Uint
}

// int evp_cipher_param_to_asn1_ex(EVP_CIPHER_CTX *c, ASN1_TYPE *type,
// evp_cipher_aead_asn1_params *params);
//
// llgo:link (*EVP_CIPHER_CTX).EvpCipherParamToAsn1Ex C.evp_cipher_param_to_asn1_ex
func (c *EVP_CIPHER_CTX) EvpCipherParamToAsn1Ex(typ *pub.ASN1_TYPE, params *evp_cipher_aead_asn1_params) c.Int {
	return 0
}

// int evp_cipher_asn1_to_param_ex(EVP_CIPHER_CTX *c, ASN1_TYPE *type,
// evp_cipher_aead_asn1_params *params);
//
// llgo:link (*EVP_CIPHER_CTX).EvpCipherAsn1ToParamEx C.evp_cipher_asn1_to_param_ex
func (c *EVP_CIPHER_CTX) EvpCipherAsn1ToParamEx(typ *pub.ASN1_TYPE, params *evp_cipher_aead_asn1_params) c.Int {
	return 0
}

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
