#include <openssl/crypto.h>

extern "C" {

void opensslFree(void *ptr) {
    OPENSSL_free(ptr);
}

}