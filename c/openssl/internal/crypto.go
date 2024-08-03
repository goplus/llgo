package internal

import "github.com/goplus/llgo/c"

type __darwin_pthread_key_t c.Ulong

type pthread_key_t __darwin_pthread_key_t

type CRYPTO_THREAD_LOCAL pthread_key_t
