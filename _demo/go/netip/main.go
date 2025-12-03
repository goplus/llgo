package main

import (
	"fmt"
	"net/netip"
)

func main() {
	s := netip.MustParseAddrPort("127.0.0.1:80")
	fmt.Println(s, s.Port())
}
