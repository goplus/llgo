package main

import (
	"fmt"
	"os"
)

func main() {
	path := "seek_demo.txt"
	f, err := os.Create(path)
	if err != nil {
		fmt.Println("create:", err)
		return
	}
	defer func() {
		f.Close()
		os.Remove(path)
	}()

	_, err = f.WriteString("hello-llgo")
	if err != nil {
		fmt.Println("write:", err)
		return
	}

	pos, err := f.Seek(6, 0)
	if err != nil {
		fmt.Println("seek:", err)
		return
	}

	buf := make([]byte, 4)
	n, err := f.Read(buf)
	if err != nil {
		fmt.Println("read:", err)
		return
	}

	fmt.Println("pos:", pos)
	fmt.Println("read:", string(buf[:n]))
}
