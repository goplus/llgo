package evp

import (
	"github.com/goplus/llgo/c/openssl/evp"
	"github.com/goplus/llgo/c/openssl/pub"
	"github.com/goplus/llgo/c/openssl/sha"
)

func EVP_sha256() *EVP_MD {
	return &EVP_MD{
		Type:      pub.NID_sha256,
		PKeyType:  pub.NID_sha256WithRSAEncryption,
		MdSize:    sha.SHA256_DIGEST_LENGTH,
		Flags:     evp.EVP_MD_FLAG_DIGALGID_ABSENT,
		Origin:    evp.EVP_ORIG_GLOBAL,
		Init:      Sha256_init,
		Update:    Sha256_update,
		Final:     Sha256_final,
		BlockSize: sha.SHA256_CBLOCK,
	}
}
