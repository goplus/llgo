package evp

const (
	NID_sha1                  = 64
	NID_sha1WithRSAEncryption = 65
	SHA_DIGEST_LENGTH         = 20
	EVP_ORIG_GLOBAL           = 1
)

func EVP_sha1() *EVP_MD {
	return &EVP_MD{Typ: NID_sha1,
		PKeyType: NID_sha1WithRSAEncryption,
		MdSize:   SHA_DIGEST_LENGTH,
		Flags:    EVP_MD_FLAG_DIGALGID_ABSENT,
		Origin:   EVP_ORIG_GLOBAL}
}

func EVP_sha256() *EVP_MD {
	return nil
}
