package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl"
)

func GetHmacSha256(key string, msg string) string {
	var hashLen c.Uint = 32
	hash := [32]byte{}
	hmac := openssl.NewHMAC_CTX()

	//hmac.InitEx(unsafe.StringData(key), len(key))
	openssl.FreeHMAC_CTX(hmac)
	return ""
}

func main() {

}

/*
std::string GetHmacSha256(std::string key, std::string msg){
    unsigned int hash_len = 32;
    unsigned char hash[32] = {};

#if OPENSSL_API_COMPAT >= 0x30000000L
    if(!HMAC(EVP_sha256(), &key[0], key.length(),(unsigned char*)&msg[0], msg.length(), hash, &hash_len)){
      std::cout << "[ERROR]: HMAC Generation failed ";
      return {};
    }
#else
    // This code will work with OpenSSL 1.1. but not with 1.0.1.
    HMAC_CTX *hmac = HMAC_CTX_new();
    HMAC_Init_ex(hmac, &key[0], key.length(), EVP_sha256(), nullptr);
    HMAC_Update(hmac, (unsigned char*)&msg[0], msg.length());
    HMAC_Final(hmac, hash, &hash_len);
    HMAC_CTX_free(hmac);
#endif

    std::stringstream ss;
    ss << std::hex << std::setfill('0');
    for (size_t i = 0; i < hash_len; ++i) {
        ss << std::hex << std::setw(2)  << (unsigned int)hash[i];
    }

    return (ss.str());
}
*/
