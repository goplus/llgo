package main

import (
	"fmt"
	"log"
	"net/url"
)

func main() {
	u, err := url.Parse("http://foo.example.com/foo?bar=1")
	if err != nil {
		log.Fatal(err)
	}
	u.Scheme = "https"
	u.Host = "bar.example.com"
	q := u.Query()
	q.Set("bar", "2")
	u.RawQuery = q.Encode()
	fmt.Println(u)
}
