package evp

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl/inter"
	"github.com/goplus/llgo/c/openssl/internal/sslcrypto"
	"github.com/goplus/llgo/c/openssl/internal/sslcrypto/engine"
	"github.com/goplus/llgo/c/openssl/pub"
)

type evp_cipher_ctx_st struct {
	Cipher  *EVP_CIPHER
	Engine  *engine.ENGINE             /* functional reference if 'cipher' is ENGINE-provided */
	Encrypt c.Int                      /* encrypt or decrypt */
	BufLen  c.Int                      /* number we have left */
	Oiv     [EVP_MAX_IV_LENGTH]byte    /* original iv */
	Iv      [EVP_MAX_IV_LENGTH]byte    /* working iv */
	Buf     [EVP_MAX_BLOCK_LENGTH]byte /* saved partial block */
	Num     c.Int                      /* used by cfb/ofb/ctr mode */
	/* FIXME: Should this even exist? It appears unused */
	AppData    unsafe.Pointer /* application stuff */
	KeyLen     c.Int          /* May change for variable length cipher */
	IvLen      c.Int          /* IV length */
	Flags      c.Ulong        /* Various flags */
	CipherData unsafe.Pointer /* per EVP data */
	FinalUsed  c.Int
	BlockMask  c.Int
	Final      [EVP_MAX_BLOCK_LENGTH]byte /* possible final block */

	/*
	 * Opaque ctx returned from a providers cipher algorithm implementation
	 * OSSL_FUNC_cipher_newctx()
	 */
	Algctx        unsafe.Pointer
	FetchedCipher *EVP_CIPHER
}

type EVP_CIPHER_CTX evp_cipher_ctx_st

type evp_keymgmt_st struct {
	Id     c.Int /* libcrypto internal */
	NameId c.Int
	/* NID for the legacy alg if there is one */
	LegacyAlg   c.Int
	TypeName    *c.Char
	Description *c.Char
	Prov        *sslcrypto.OSSL_PROVIDER
	RefCnt      inter.CRYPTO_REF_COUNT

	/* Constructor(s), destructor, information */
	New            *OSSL_FUNC_keymgmt_new_fn
	Free           *OSSL_FUNC_keymgmt_free_fn
	GetParams      *OSSL_FUNC_keymgmt_get_params_fn
	GettableParams *OSSL_FUNC_keymgmt_gettable_params_fn
	SetParams      *OSSL_FUNC_keymgmt_set_params_fn
	SettableParams *OSSL_FUNC_keymgmt_settable_params_fn

	/* Generation, a complex constructor */
	GenInit           *OSSL_FUNC_keymgmt_gen_init_fn
	GenSetTemplate    *OSSL_FUNC_keymgmt_gen_set_template_fn
	GenSetParams      *OSSL_FUNC_keymgmt_gen_set_params_fn
	GenSettableParams *OSSL_FUNC_keymgmt_gen_settable_params_fn
	Gen               *OSSL_FUNC_keymgmt_gen_fn
	GenCleanup        *OSSL_FUNC_keymgmt_gen_cleanup_fn

	Load *OSSL_FUNC_keymgmt_load_fn

	/* Key object checking */
	QueryOperationName *OSSL_FUNC_keymgmt_query_operation_name_fn
	Has                *OSSL_FUNC_keymgmt_has_fn
	Validate           *OSSL_FUNC_keymgmt_validate_fn
	Match              *OSSL_FUNC_keymgmt_match_fn

	/* Import and export routines */
	Import        *OSSL_FUNC_keymgmt_import_fn
	ImportTypes   *OSSL_FUNC_keymgmt_import_types_fn
	ImportTypesEx *OSSL_FUNC_keymgmt_import_types_ex_fn
	Export        *OSSL_FUNC_keymgmt_export_fn
	ExportTypes   *OSSL_FUNC_keymgmt_export_types_fn
	ExportTypesEx *OSSL_FUNC_keymgmt_export_types_ex_fn
	Dup           *OSSL_FUNC_keymgmt_dup_fn
}

type OSSL_FUNC_keymgmt_new_fn func(provctx unsafe.Pointer) unsafe.Pointer
type OSSL_FUNC_keymgmt_free_fn func(keydata unsafe.Pointer)
type OSSL_FUNC_keymgmt_get_params_fn func(key unsafe.Pointer, params []pub.OSSL_PARAM) c.Int
type OSSL_FUNC_keymgmt_gettable_params_fn func(provctx unsafe.Pointer) *pub.OSSL_PARAM
type OSSL_FUNC_keymgmt_set_params_fn func(key unsafe.Pointer, params []pub.OSSL_PARAM) c.Int
type OSSL_FUNC_keymgmt_settable_params_fn func(provctx unsafe.Pointer) *pub.OSSL_PARAM
type OSSL_FUNC_keymgmt_gen_init_fn func(provctx unsafe.Pointer, selection c.Int, params []pub.OSSL_PARAM) unsafe.Pointer
type OSSL_FUNC_keymgmt_gen_set_template_fn func(genctx unsafe.Pointer, templ unsafe.Pointer) c.Int
type OSSL_FUNC_keymgmt_gen_set_params_fn func(genctx unsafe.Pointer, params []pub.OSSL_PARAM) c.Int
type OSSL_FUNC_keymgmt_gen_settable_params_fn func(genctx unsafe.Pointer, provctx unsafe.Pointer) *pub.OSSL_PARAM
type OSSL_FUNC_keymgmt_gen_fn func(genctx unsafe.Pointer, osslcb *pub.OSSL_CALLBACK, cbarg unsafe.Pointer) unsafe.Pointer
type OSSL_FUNC_keymgmt_gen_cleanup_fn func(genctx unsafe.Pointer)
type OSSL_FUNC_keymgmt_load_fn func(reference unsafe.Pointer, reference_sz uintptr) unsafe.Pointer
type OSSL_FUNC_keymgmt_query_operation_name_fn func(operation_id c.Int) *c.Char
type OSSL_FUNC_keymgmt_has_fn func(keydata unsafe.Pointer, selection c.Int) c.Int
type OSSL_FUNC_keymgmt_validate_fn func(keydata unsafe.Pointer, selection c.Int, checktype c.Int) c.Int
type OSSL_FUNC_keymgmt_match_fn func(keydata1 unsafe.Pointer, keydata2 unsafe.Pointer, selection c.Int) c.Int
type OSSL_FUNC_keymgmt_import_fn func(fake_keydata unsafe.Pointer, ignored_selection c.Int, params []pub.OSSL_PARAM) c.Int
type OSSL_FUNC_keymgmt_import_types_fn func(selection c.Int) *pub.OSSL_PARAM
type OSSL_FUNC_keymgmt_import_types_ex_fn func(provctx unsafe.Pointer, selec c.Int) *pub.OSSL_PARAM
type OSSL_FUNC_keymgmt_export_fn func(keydata unsafe.Pointer, selection c.Int, param_cb *pub.OSSL_CALLBACK, cbarg unsafe.Pointer) c.Int
type OSSL_FUNC_keymgmt_export_types_fn func(selection c.Int) *pub.OSSL_PARAM
type OSSL_FUNC_keymgmt_export_types_ex_fn func(provctx unsafe.Pointer, sel c.Int) *pub.OSSL_PARAM
type OSSL_FUNC_keymgmt_dup_fn func(keydata_from unsafe.Pointer, selection c.Int) unsafe.Pointer

type EVP_KEYMGMT evp_keymgmt_st

// todo ...
