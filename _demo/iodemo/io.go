package main

import (
	"io"
	"os"
)

func f(w io.Writer) {
	w.Write([]byte("Hello, world\n"))
}

func main() {
	f(os.Stdout)
}
