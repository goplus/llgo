package evp

import (
	"github.com/goplus/llgo/c/openssl/pub"
)

const (
	EVP_MAX_MD_SIZE         = 64
	EVP_MAX_KEY_LENGTH      = 64
	EVP_MAX_IV_LENGTH       = 16
	EVP_MAX_BLOCK_LENGTH    = 32
	EVP_MAX_AEAD_TAG_LENGTH = 16
	PKCS5_SALT_LEN          = 8
	PKCS5_DEFAULT_ITER      = 2048

	EVP_PK_RSA   = 0x0001
	EVP_PK_DSA   = 0x0002
	EVP_PK_DH    = 0x0004
	EVP_PK_EC    = 0x0008
	EVP_PKT_SIGN = 0x0010
	EVP_PKT_ENC  = 0x0020
	EVP_PKT_EXCH = 0x0040
	EVP_PKS_RSA  = 0x0100
	EVP_PKS_DSA  = 0x0200
	EVP_PKS_EC   = 0x0400

	EVP_PKEY_NONE     = pub.NID_undef
	EVP_PKEY_RSA      = pub.NID_rsaEncryption
	EVP_PKEY_RSA2     = pub.NID_rsa
	EVP_PKEY_RSA_PSS  = pub.NID_rsassaPss
	EVP_PKEY_DSA      = pub.NID_dsa
	EVP_PKEY_DSA1     = pub.NID_dsa_2
	EVP_PKEY_DSA2     = pub.NID_dsaWithSHA
	EVP_PKEY_DSA3     = pub.NID_dsaWithSHA1
	EVP_PKEY_DSA4     = pub.NID_dsaWithSHA1_2
	EVP_PKEY_DH       = pub.NID_dhKeyAgreement
	EVP_PKEY_DHX      = pub.NID_dhpublicnumber
	EVP_PKEY_EC       = pub.NID_X9_62_id_ecPublicKey
	EVP_PKEY_SM2      = pub.NID_sm2
	EVP_PKEY_HMAC     = pub.NID_hmac
	EVP_PKEY_CMAC     = pub.NID_cmac
	EVP_PKEY_SCRYPT   = pub.NID_id_scrypt
	EVP_PKEY_TLS1_PRF = pub.NID_tls1_prf
	EVP_PKEY_HKDF     = pub.NID_hkdf
	EVP_PKEY_POLY1305 = pub.NID_poly1305
	EVP_PKEY_SIPHASH  = pub.NID_siphash
	EVP_PKEY_X25519   = pub.NID_X25519
	EVP_PKEY_ED25519  = pub.NID_ED25519
	EVP_PKEY_X448     = pub.NID_X448
	EVP_PKEY_ED448    = pub.NID_ED448
	EVP_PKEY_KEYMGMT  = -1
)

const (
	EVP_PKEY_MO_SIGN    = 0x0001
	EVP_PKEY_MO_VERIFY  = 0x0002
	EVP_PKEY_MO_ENCRYPT = 0x0004
	EVP_PKEY_MO_DECRYPT = 0x0008
)

const (
	/* values for EVP_MD_CTX flags */
	EVP_MD_CTX_FLAG_ONESHOT = 0x0001 /* digest update will be
	 * called once only */
	EVP_MD_CTX_FLAG_CLEANED = 0x0002 /* context has already been
	 * cleaned */
	EVP_MD_CTX_FLAG_REUSE = 0x0004 /* Don't free up ctx->md_data
	 * in EVP_MD_CTX_reset */
	/*
	 * FIPS and pad options are ignored in 1.0.0, definitions are here so we
	 * don't accidentally reuse the values for other purposes.
	 */
	/* This flag has no effect from openssl-3.0 onwards */
	EVP_MD_CTX_FLAG_NON_FIPS_ALLOW = 0x0008
	/*
	 * The following PAD options are also currently ignored in 1.0.0, digest
	 * parameters are handled through EVP_DigestSign*() and EVP_DigestVerify*()
	 * instead.
	 */
	EVP_MD_CTX_FLAG_PAD_MASK  = 0xF0 /* RSA mode to use */
	EVP_MD_CTX_FLAG_PAD_PKCS1 = 0x00 /* PKCS#1 v1.5 mode */
	EVP_MD_CTX_FLAG_PAD_X931  = 0x10 /* X9.31 mode */
	EVP_MD_CTX_FLAG_PAD_PSS   = 0x20 /* PSS mode */

	EVP_MD_CTX_FLAG_NO_INIT = 0x0100 /* Don't initialize md_data */
	/*
	 * Some functions such as EVP_DigestSign only finalise copies of internal
	 * contexts so additional data can be included after the finalisation call.
	 * This is inefficient if this functionality is not required: it is disabled
	 * if the following flag is set.
	 */
	EVP_MD_CTX_FLAG_FINALISE = 0x0200

	/* NOTE: 0x0400 and 0x0800 are reserved for internal usage */
)

const (
	EVP_ORIG_GLOBAL             = 1
	EVP_MD_FLAG_DIGALGID_ABSENT = 0x0008
)

// todo .......
