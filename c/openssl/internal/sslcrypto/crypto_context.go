//go:build !FIPS_MODULE
// +build !FIPS_MODULE

package sslcrypto

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl/inter"
	"github.com/goplus/llgo/c/openssl/pub"
)

type ossl_lib_ctx_st struct {
	Lock, RandCrngtLock *pub.CRYPTO_RWLOCK
	Global              inter.OSSL_EX_DATA_GLOBAL

	PropertyStringData unsafe.Pointer
	EvpMethodStore     unsafe.Pointer
	ProviderStore      unsafe.Pointer
	NameMap            unsafe.Pointer
	PropertyDefns      unsafe.Pointer
	GlobalProperties   unsafe.Pointer
	Drbg               unsafe.Pointer
	DrbgNonce          unsafe.Pointer

	RcuLocalKey pub.CRYPTO_THREAD_LOCAL

	ProviderConf  unsafe.Pointer
	BioCore       unsafe.Pointer
	ChildProvider unsafe.Pointer

	DecoderStore     *OSSL_METHOD_STORE //#ifndef FIPS_MODULE
	DecoderCache     unsafe.Pointer     //#ifndef FIPS_MODULE
	EncoderStore     *OSSL_METHOD_STORE //#ifndef FIPS_MODULE
	StoreLoaderStore *OSSL_METHOD_STORE //#ifndef FIPS_MODULE
	SelfTestCb       unsafe.Pointer     //#ifndef FIPS_MODULE
	IndicatorCb      unsafe.Pointer     //#ifndef FIPS_MODULE

	RandCrngt       unsafe.Pointer
	CompMethods     unsafe.Pointer //todo STACK_OF(SSL_COMP)
	IsChild         c.Int
	ConfDiagnostics c.Int
}

type OSSL_LIB_CTX ossl_lib_ctx_st

// int EVP_set_default_properties(OSSL_LIB_CTX *libctx, const char *propq);
//
// llgo:link (*OSSL_LIB_CTX).EVPSetDefaultProperties C.EVP_set_default_properties
func (c *OSSL_LIB_CTX) EVPSetDefaultProperties(propq *c.Char) c.Int { return 0 }

// int EVP_default_properties_is_fips_enabled(OSSL_LIB_CTX *libctx);
//
// llgo:link (*OSSL_LIB_CTX).EVPDefaultPropertiesIsFipsEnabled() C.EVP_default_properties_is_fips_enabled
func (c *OSSL_LIB_CTX) EVPDefaultPropertiesIsFipsEnabled() c.Int { return 0 }

// int EVP_default_properties_enable_fips(OSSL_LIB_CTX *libctx, int enable);
//
// llgo:link (*OSSL_LIB_CTX).EVPDefaultPropertiesEnableFips C.EVP_default_properties_enable_fips
func (c *OSSL_LIB_CTX) EVPDefaultPropertiesEnableFips(enable c.Int) c.Int { return 0 }

// todo ...
