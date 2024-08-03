package inter

import "github.com/goplus/llgo/c/openssl/pub"

type CRYPTO_RWLOCK pub.CRYPTO_RWLOCK

const (
	CRYPTO_EX_INDEX__COUNT = 18
)

/*
 * The state for each class.  This could just be a typedef, but
 * a structure allows future changes.
 */
type ex_callbacks_st struct {
	//todo
}

type EX_CALLBACKS ex_callbacks_st

type ossl_ex_data_global_st struct {
	ExDataLock *CRYPTO_RWLOCK
	ExData     [CRYPTO_EX_INDEX__COUNT]EX_CALLBACKS
}

type OSSL_EX_DATA_GLOBAL ossl_ex_data_global_st
