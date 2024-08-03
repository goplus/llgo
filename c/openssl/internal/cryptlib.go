package internal

const (
	CRYPTO_EX_INDEX__COUNT = 18
)

/*
 * The state for each class.  This could just be a typedef, but
 * a structure allows future changes.
 */
type ex_callbacks_st struct {
	//meth *STACK_OF(EX_CALLBACK); todo
}

type EX_CALLBACKS ex_callbacks_st

type ossl_ex_data_global_st struct {
	ExDataLock *CRYPTO_RWLOCK
	ExData     [CRYPTO_EX_INDEX__COUNT]EX_CALLBACKS
}

type OSSL_EX_DATA_GLOBAL ossl_ex_data_global_st
