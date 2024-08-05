//go:build OPENSSL_THREADS

package openssl

import "github.com/goplus/llgo/c"

type CRYPTO_REF_COUNT struct {
	Val c.Int
	/*
		#  ifdef OPENSSL_THREADS
		    CRYPTO_RWLOCK *lock;
		#  endif
	*/
	lock *CRYPTO_RWLOCK
}
