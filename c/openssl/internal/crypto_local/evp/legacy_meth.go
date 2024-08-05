package evp

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl/sha"
)

func EVP_MD_CTX_get0_md_data(ctx *EVP_MD_CTX) unsafe.Pointer {
	return ctx.MdData
}

func SHA256_Init_Imp(c *sha.SHA256_CTX) c.Int {
	return c.Init()
}

func Sha256_init(ctx *EVP_MD_CTX) c.Int {
	return SHA256_Init_Imp((*sha.SHA256_CTX)(EVP_MD_CTX_get0_md_data(ctx)))
}

func SHA256_Update_imp(c *sha.SHA256_CTX, data_ unsafe.Pointer, len uintptr) c.Int {
	return c.Update(data_, len)
}

func Sha256_update(ctx *EVP_MD_CTX, data_ unsafe.Pointer, len uintptr) c.Int {
	return SHA256_Update_imp((*sha.SHA256_CTX)(EVP_MD_CTX_get0_md_data(ctx)), data_, len)
}

func SHA256_Final_Imp(c *sha.SHA256_CTX, md *byte) c.Int {
	return c.Final(md)
}

func Sha256_final(ctx *EVP_MD_CTX, md *byte) c.Int {
	return SHA256_Final_Imp((*sha.SHA256_CTX)(EVP_MD_CTX_get0_md_data(ctx)), md)
}
