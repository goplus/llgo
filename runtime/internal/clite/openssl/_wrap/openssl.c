#include <openssl/crypto.h>

void opensslFree(void *ptr) {
    OPENSSL_free(ptr);
}
