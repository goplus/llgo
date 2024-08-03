//go:build !EVP_MD

package internal

import (
	"unsafe"

	"github.com/goplus/llgo/c"
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

	EVP_PKEY_NONE     = NID_undef
	EVP_PKEY_RSA      = NID_rsaEncryption
	EVP_PKEY_RSA2     = NID_rsa
	EVP_PKEY_RSA_PSS  = NID_rsassaPss
	EVP_PKEY_DSA      = NID_dsa
	EVP_PKEY_DSA1     = NID_dsa_2
	EVP_PKEY_DSA2     = NID_dsaWithSHA
	EVP_PKEY_DSA3     = NID_dsaWithSHA1
	EVP_PKEY_DSA4     = NID_dsaWithSHA1_2
	EVP_PKEY_DH       = NID_dhKeyAgreement
	EVP_PKEY_DHX      = NID_dhpublicnumber
	EVP_PKEY_EC       = NID_X9_62_id_ecPublicKey
	EVP_PKEY_SM2      = NID_sm2
	EVP_PKEY_HMAC     = NID_hmac
	EVP_PKEY_CMAC     = NID_cmac
	EVP_PKEY_SCRYPT   = NID_id_scrypt
	EVP_PKEY_TLS1_PRF = NID_tls1_prf
	EVP_PKEY_HKDF     = NID_hkdf
	EVP_PKEY_POLY1305 = NID_poly1305
	EVP_PKEY_SIPHASH  = NID_siphash
	EVP_PKEY_X25519   = NID_X25519
	EVP_PKEY_ED25519  = NID_ED25519
	EVP_PKEY_X448     = NID_X448
	EVP_PKEY_ED448    = NID_ED448
	EVP_PKEY_KEYMGMT  = -1

	/*
		//todo.....
		Easy to use macros for EVP_PKEY related selections
			# define EVP_PKEY_KEY_PARAMETERS                                            \
			    ( OSSL_KEYMGMT_SELECT_ALL_PARAMETERS )
			# define EVP_PKEY_PRIVATE_KEY                                               \
			    ( EVP_PKEY_KEY_PARAMETERS | OSSL_KEYMGMT_SELECT_PRIVATE_KEY )
			# define EVP_PKEY_PUBLIC_KEY                                                \
			    ( EVP_PKEY_KEY_PARAMETERS | OSSL_KEYMGMT_SELECT_PUBLIC_KEY )
			# define EVP_PKEY_KEYPAIR                                                   \
			    ( EVP_PKEY_PUBLIC_KEY | OSSL_KEYMGMT_SELECT_PRIVATE_KEY )
	*/
)

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

const (
	EVP_PKEY_MO_SIGN    = 0x0001
	EVP_PKEY_MO_VERIFY  = 0x0002
	EVP_PKEY_MO_ENCRYPT = 0x0004
	EVP_PKEY_MO_DECRYPT = 0x0008
)

//------ # ifndef EVP_MD

// OSSL_DEPRECATEDIN_3_0 EVP_MD *EVP_MD_meth_new(int md_type, int pkey_type);
//
// llgo:link (*EVP_MD).MethNew C.EVP_MD_meth_new
func (c *EVP_MD) MethNew(md_type c.Int, pkey_type c.Int) *EVP_MD { return nil }

// OSSL_DEPRECATEDIN_3_0 EVP_MD *EVP_MD_meth_dup(const EVP_MD *md);
//
// llgo:link (*EVP_MD).MethDup C.EVP_MD_meth_dup
func (c *EVP_MD) MethDup() *EVP_MD { return nil }

// OSSL_DEPRECATEDIN_3_0 void EVP_MD_meth_free(EVP_MD *md);
//
// llgo:link (*EVP_MD).MethFree() C.EVP_MD_meth_free
func (c *EVP_MD) MethFree() {}

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_input_blocksize(EVP_MD *md, int blocksize);
//
// llgo:link (*EVP_MD).MethSetInputBlocksize C.EVP_MD_meth_set_input_blocksize
func (c *EVP_MD) MethSetInputBlocksize(blocksize c.Int) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_result_size(EVP_MD *md, int resultsize);
//
// llgo:link (*EVP_MD).MethSetResultSize C.EVP_MD_meth_set_result_size
func (c *EVP_MD) MethSetResultSize(resultsize c.Int) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_app_datasize(EVP_MD *md, int datasize);
//
// llgo:link (*EVP_MD).MethSetAppDatasize C.EVP_MD_meth_set_app_datasize
func (c *EVP_MD) MethSetAppDatasize(datasize c.Int) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_flags(EVP_MD *md, unsigned long flags);
//
// llgo:link (*EVP_MD).MethSetFlags C.EVP_MD_meth_set_flags
func (c *EVP_MD) MethSetFlags(flags c.Ulong) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_init(EVP_MD *md, int (*init)(EVP_MD_CTX *ctx));
//
// llgo:link (*EVP_MD).MethSetInit C.EVP_MD_meth_set_init
func (c *EVP_MD) MethSetInit(fnInit *(func(ctx *EVP_MD_CTX) c.Int)) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_update(EVP_MD *md, int (*update)(EVP_MD_CTX *ctx,
//
//	const void *data,
//	size_t count));
//
// llgo:link (*EVP_MD).MethSetUpdate C.EVP_MD_meth_set_update
func (c *EVP_MD) MethSetUpdate(fnUpdate *(func(ctx *EVP_MD_CTX, data unsafe.Pointer, count uintptr) c.Int)) c.Int {
	return 0
}

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_final(EVP_MD *md, int (*final)(EVP_MD_CTX *ctx,
//
//	unsigned char *md));
//
// llgo:link (*EVP_MD).MethSetFinal C.EVP_MD_meth_set_final
func (c *EVP_MD) MethSetFinal(fnFinal *(func(ctx *EVP_MD_CTX, md *byte) c.Int)) c.Int {
	return 0
}

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_copy(EVP_MD *md, int (*copy)(EVP_MD_CTX *to,
//
//	const EVP_MD_CTX *from));
//
// llgo:link (*EVP_MD).MethSetCopy C.EVP_MD_meth_set_copy
func (c *EVP_MD) MethSetCopy(fnCopy *(func(to *EVP_MD_CTX, from *EVP_MD_CTX) c.Int)) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_cleanup(EVP_MD *md, int (*cleanup)(EVP_MD_CTX *ctx));
//
// llgo:link (*EVP_MD).MethSetCleanup C.EVP_MD_meth_set_cleanup
func (c *EVP_MD) MethSetCleanup(fnCleanup *(func(ctx *EVP_MD_CTX) c.Int)) c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int EVP_MD_meth_set_ctrl(EVP_MD *md, int (*ctrl)(EVP_MD_CTX *ctx, int cmd,
//
//	int p1, void *p2));
//
// llgo:link (*EVP_MD).MethSetCtrl C.EVP_MD_meth_set_ctrl
func (c *EVP_MD) MethSetCtrl(fnCtrl *(func(ctx *EVP_MD_CTX, cmd c.Int, p1 c.Int, p2 unsafe.Pointer) c.Int)) c.Int {
	return 0
}

// OSSL_DEPRECATEDIN_3_0 int EVP_MD_meth_get_input_blocksize(const EVP_MD *md);
//
// llgo:link (*EVP_MD).MethGetInputBlocksize C.EVP_MD_meth_get_input_blocksize
func (c *EVP_MD) MethGetInputBlocksize() c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0 int EVP_MD_meth_get_result_size(const EVP_MD *md);
//
// llgo:link (*EVP_MD).MethGetResultSize C.EVP_MD_meth_get_result_size
func (c *EVP_MD) MethGetResultSize() c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0 int EVP_MD_meth_get_app_datasize(const EVP_MD *md);
//
// llgo:link (*EVP_MD).MethGetAppDatasize C.EVP_MD_meth_get_app_datasize
func (c *EVP_MD) MethGetAppDatasize() c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0 unsigned long EVP_MD_meth_get_flags(const EVP_MD *md);
//
// llgo:link (*EVP_MD).MethGetFlags C.EVP_MD_meth_get_flags
func (c *EVP_MD) MethGetFlags() c.Ulong { return 0 }

// OSSL_DEPRECATEDIN_3_0
// int (*EVP_MD_meth_get_init(const EVP_MD *md))(EVP_MD_CTX *ctx);
//
// llgo:link (*EVP_MD).MethGetInit C.EVP_MD_meth_get_init
func (c *EVP_MD) MethGetInit() *(func(ctx *EVP_MD_CTX) c.Int) { return nil }

// OSSL_DEPRECATEDIN_3_0
// int (*EVP_MD_meth_get_update(const EVP_MD *md))(EVP_MD_CTX *ctx,
//
//	const void *data, size_t count);
//
// llgo:link (*EVP_MD).MethGetUpdate C.EVP_MD_meth_get_update
func (*EVP_MD) MethGetUpdate() *(func(ctx *EVP_MD_CTX, data unsafe.Pointer, count uintptr) c.Int) {
	return nil
}

// OSSL_DEPRECATEDIN_3_0
// int (*EVP_MD_meth_get_final(const EVP_MD *md))(EVP_MD_CTX *ctx,
//
//	unsigned char *md);
//
// llgo:link (*EVP_MD).MethGetFinal C.EVP_MD_meth_get_final
func (c *EVP_MD) MethGetFinal() *(func(ctx *EVP_MD_CTX, md *byte) c.Int) { return nil }

// OSSL_DEPRECATEDIN_3_0
// int (*EVP_MD_meth_get_copy(const EVP_MD *md))(EVP_MD_CTX *to,
//
//	const EVP_MD_CTX *from);
//
// llgo:link (*EVP_MD).MethGetCopy C.EVP_MD_meth_get_copy
func (c *EVP_MD) MethGetCopy() *(func(to *EVP_MD_CTX, from *EVP_MD_CTX) c.Int) { return nil }

// OSSL_DEPRECATEDIN_3_0
// int (*EVP_MD_meth_get_cleanup(const EVP_MD *md))(EVP_MD_CTX *ctx);
//
// llgo:link (*EVP_MD).MethGetCleanup C.EVP_MD_meth_get_cleanup
func (c *EVP_MD) MethGetCleanup() *(func(ctx *EVP_MD_CTX) c.Int) { return nil }

// OSSL_DEPRECATEDIN_3_0
// int (*EVP_MD_meth_get_ctrl(const EVP_MD *md))(EVP_MD_CTX *ctx, int cmd,
//
//	int p1, void *p2);
//
// llgo:link (*EVP_MD).MethGetCtrl C.EVP_MD_meth_get_ctrl
func (c *EVP_MD) MethGetCtrl() *(func(ctx *EVP_MD_CTX, cmd c.Int, p1 c.Int, p2 unsafe.Pointer) c.Int) {
	return nil
}

const (
	/* digest can only handle a single block */
	EVP_MD_FLAG_ONESHOT = 0x0001
	/* digest is extensible-output function, XOF */
	EVP_MD_FLAG_XOF = 0x0002

	/* DigestAlgorithmIdentifier flags... */
	EVP_MD_FLAG_DIGALGID_MASK = 0x0018

	/* NULL or absent parameter accepted. Use NULL */
	EVP_MD_FLAG_DIGALGID_NULL = 0x0000

	/* NULL or absent parameter accepted. Use NULL for PKCS#1 otherwise absent */
	EVP_MD_FLAG_DIGALGID_ABSENT = 0x0008

	/* Custom handling via ctrl */
	EVP_MD_FLAG_DIGALGID_CUSTOM = 0x0018

	/* Note if suitable for use in FIPS mode */
	EVP_MD_FLAG_FIPS = 0x0400

	/* Digest ctrls */
	EVP_MD_CTRL_DIGALGID = 0x1
	EVP_MD_CTRL_MICALG   = 0x2
	EVP_MD_CTRL_XOF_LEN  = 0x3
	EVP_MD_CTRL_TLSTREE  = 0x4

	/* Minimum Algorithm specific ctrl value */
	EVP_MD_CTRL_ALG_CTRL = 0x1000
)

/*--------------- !EVP_MD */

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

// todo .......
