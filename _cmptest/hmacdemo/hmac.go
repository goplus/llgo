package main

import "crypto/hmac"

func main() {
	hmac.New(nil, []byte{'1', '2'})
}
