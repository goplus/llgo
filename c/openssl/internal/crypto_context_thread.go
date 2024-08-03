//go:build OPENSSL_THREADS

package internal

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

type ossl_lib_ctx_st struct {
	Lock, RandCrngtLock *CRYPTO_RWLOCK
	Global              OSSL_EX_DATA_GLOBAL

	PropertyStringData unsafe.Pointer
	EvpMethodStore     unsafe.Pointer
	ProviderStore      unsafe.Pointer
	NameMap            unsafe.Pointer
	PropertyDefns      unsafe.Pointer
	GlobalProperties   unsafe.Pointer
	Drbg               unsafe.Pointer
	DrbgNonce          unsafe.Pointer

	RcuLocalKey CRYPTO_THREAD_LOCAL

	ProviderConf  unsafe.Pointer
	BioCore       unsafe.Pointer
	ChildProvider unsafe.Pointer

	DecoderStore     *OSSL_METHOD_STORE //#ifndef FIPS_MODULE
	DecoderCache     unsafe.Pointer     //#ifndef FIPS_MODULE
	EncoderStore     *OSSL_METHOD_STORE //#ifndef FIPS_MODULE
	StoreLoaderStore *OSSL_METHOD_STORE //#ifndef FIPS_MODULE
	SelfTestCb       unsafe.Pointer     //#ifndef FIPS_MODULE
	IndicatorCb      unsafe.Pointer     //#ifndef FIPS_MODULE

	Threads unsafe.Pointer

	RandCrngt       unsafe.Pointer
	CompMethods     *TodoStruct
	IsChild         c.Int
	ConfDiagnostics c.Int
}

type OSSL_LIB_CTX ossl_lib_ctx_st

// todo ...
