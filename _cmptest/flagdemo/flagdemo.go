package main

import (
	"flag"
	"fmt"
	"os"
)

func main() {
	fmt.Println("args:", os.Args[1:])
	if len(os.Args) == 1 {
		os.Args = []string{"flagdemo", "-cpu", "100"}
	}

	verbose := flag.Bool("v", false, "verbose")
	cpu := flag.Int("cpu", 1, "cpu number")
	host := flag.String("host", ":8888", "host")
	flag.Parse()

	fmt.Println("host:", *host, "cpu:", *cpu, "verbose:", *verbose)
}
