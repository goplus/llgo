package sslcrypto

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl/inter"
	"github.com/goplus/llgo/c/openssl/internal/sslcrypto/dso"
	"github.com/goplus/llgo/c/openssl/pub"
)

type CRYPTO_REF_COUNT inter.CRYPTO_REF_COUNT
type OSSL_PARAM pub.OSSL_PARAM
type OSSL_CALLBACK pub.OSSL_CALLBACK
type ERR_STRING_DATA pub.ERR_STRING_DATA

type OSSL_provider_init_fn pub.OSSL_provider_init_fn
type OSSL_CORE_HANDLE pub.OSSL_CORE_HANDLE
type OSSL_DISPATCH pub.OSSL_DISPATCH
type OSSL_ALGORITHM pub.OSSL_ALGORITHM
type CRYPTO_RWLOCK pub.CRYPTO_RWLOCK

type ossl_provider_st struct {
	// Flag bits
	// unsigned int flag_initialized:1;
	// unsigned int flag_activated:1;
	// unsigned int ischild:1; //#ifndef FIPS_MODULE
	Flags c.Uint
	// Getting and setting the flags require synchronization
	FlagLock *CRYPTO_RWLOCK
	// OpenSSL library side data
	RefCnt CRYPTO_REF_COUNT
	// For the activatecnt counter
	ActivateCnt_lock *CRYPTO_RWLOCK
	ActivateCnt      c.Int
	Name             *c.Char
	Path             *c.Char
	Module           *dso.DSO
	InitFunction     *OSSL_provider_init_fn

	// STACK_OF(INFOPAIR) *parameters;*/
	Parameters unsafe.Pointer //#define STACK_OF(type) struct stack_st_##type

	LibCtx *OSSL_LIB_CTX
	Store  *PROVIDER_STORE /* The store this instance belongs to */

	ErrorLib     c.Int            //#ifndef FIPS_MODULE
	ErrorStrings *ERR_STRING_DATA //#ifndef FIPS_MODULE and #ifndef OPENSSL_NO_ERR

	Teardown         *OSSL_FUNC_provider_teardown_fn
	GettableParams   *OSSL_FUNC_provider_gettable_params_fn
	GetParams        *OSSL_FUNC_provider_get_params_fn
	GetCapabilities  *OSSL_FUNC_provider_get_capabilities_fn
	SelfTest         *OSSL_FUNC_provider_self_test_fn
	QueryOperation   *OSSL_FUNC_provider_query_operation_fn
	UnqueryOperation *OSSL_FUNC_provider_unquery_operation_fn
	/*
	 * Cache of bit to indicate of query_operation() has been called on
	 * a specific operation or not.
	 */
	OperationBits   *byte
	OperationBitsSZ uintptr
	OpbitsLock      *CRYPTO_RWLOCK
	Handle          *OSSL_CORE_HANDLE //#ifndef FIPS_MODULE

	/* Provider side data */
	ProvCtx  unsafe.Pointer
	Dispatch *OSSL_DISPATCH
}

type OSSL_PROVIDER ossl_provider_st

type provider_store_st struct {
	//todo
}

type PROVIDER_STORE provider_store_st

type OSSL_FUNC_provider_teardown_fn func(provctx unsafe.Pointer)
type OSSL_FUNC_provider_gettable_params_fn func(provctx unsafe.Pointer) *OSSL_PARAM
type OSSL_FUNC_provider_get_params_fn func(provctx unsafe.Pointer, params []OSSL_PARAM) c.Int
type OSSL_FUNC_provider_get_capabilities_fn func(provctx unsafe.Pointer,
						capability *c.Char, cb *OSSL_CALLBACK, arg unsafe.Pointer)
type OSSL_FUNC_provider_self_test_fn func() //todo
type OSSL_FUNC_provider_query_operation_fn func(provctx unsafe.Pointer,
	operation_id c.Int, no_cache *c.Int) *OSSL_ALGORITHM
type OSSL_FUNC_provider_unquery_operation_fn func(provctx unsafe.Pointer,
	operation_id c.Int, algs *OSSL_ALGORITHM)
