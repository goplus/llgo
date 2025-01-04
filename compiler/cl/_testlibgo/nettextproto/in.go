package main

import "net/textproto"

func main() {
	println(textproto.CanonicalMIMEHeaderKey("host"))
}
