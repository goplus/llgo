package main

import "net/textproto"

func main() {
	h := make(textproto.MIMEHeader)
	h.Set("host", "www.example.com")
	println(h.Get("Host"))
}

/* Expected output:
www.example.com
*/
