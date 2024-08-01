//go:build OPENSSL_THREADS

package internal

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
