package main

// test override main.Hello=hello-from-test from build_test.go
var Hello string

func main() {
	println(Hello)
}
