package internal

import "github.com/goplus/llgo/c"

type ossl_method_store_st struct {
	Ctx  *OSSL_LIB_CTX
	Algs *TodoStruct

	/*
	 * Lock to protect the |algs| array from concurrent writing, when
	 * individual implementations or queries are inserted.  This is used
	 * by the appropriate functions here.
	 */
	Lock *CRYPTO_RWLOCK

	/*
	 * Lock to reserve the whole store.  This is used when fetching a set
	 * of algorithms, via these functions, found in crypto/core_fetch.c:
	 * ossl_method_construct_reserve_store()
	 * ossl_method_construct_unreserve_store()
	 */
	BigLock *CRYPTO_RWLOCK

	/* query cache specific values */

	/* Count of the query cache entries for all algs */
	CacheNelem uintptr

	/* Flag: 1 if query cache entries for all algs need flushing */
	CacheNeedFlush c.Int
}

type OSSL_METHOD_STORE ossl_method_store_st
