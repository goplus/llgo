package main

import (
	"os"
)

func main() {
	home, _ := os.UserHomeDir()
	println("home:", home)

	cfgdir, _ := os.UserConfigDir()
	println("cfgdir:", cfgdir)

	cache, _ := os.UserCacheDir()
	println("cachedir:", cache)

	// os.Stdout.Write([]byte("Hello, World\n"))
}
