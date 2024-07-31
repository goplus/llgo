/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package openssl

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

// -----------------------------------------------------------------------------

type RSA struct {
	Unused [0]byte
}

// OSSL_DEPRECATEDIN_3_0 RSA *RSA_new(void);
//
//go:linkname RSANew C.RSA_new
func RSANew() *RSA

// OSSL_DEPRECATEDIN_3_0 RSA *RSA_new_method(ENGINE *engine);

// OSSL_DEPRECATEDIN_3_0 int RSA_generate_key_ex(RSA *rsa, int bits, BIGNUM *e, BN_GENCB *cb);
//
// llgo:link (*RSA).GenerateKeyEx C.RSA_generate_key_ex
func (*RSA) GenerateKeyEx(bits c.Int, e *BIGNUM, cb *BN_GENCB) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0 int RSA_generate_multi_prime_key(RSA *rsa, int bits, int primes, BIGNUM *e, BN_GENCB *cb);
//
// llgo:link (*RSA).GenerateMultiPrimeKey C.RSA_generate_multi_prime_key
func (*RSA) GenerateMultiPrimeKey(bits, primes c.Int, e *BIGNUM, cb *BN_GENCB) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0 int RSA_sign(
// int type, const unsigned char *m, unsigned int m_length,
// unsigned char *sigret, unsigned int *siglen, RSA *rsa);
//
//go:linkname RSASign C.RSA_sign
func RSASign(typ c.Int, msg unsafe.Pointer, mlen c.Uint, sigret *byte, siglen *c.Uint, rsa *RSA) c.Int

// OSSL_DEPRECATEDIN_3_0 int RSA_verify(int type, const unsigned char *m,
//	  unsigned int m_length,
//	  const unsigned char *sigbuf,
//	  unsigned int siglen, RSA *rsa);

// -----------------------------------------------------------------------------
