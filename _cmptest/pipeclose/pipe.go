package main

import (
	"fmt"
	"io"
	"sync"
)

func main() {
	reader, writer := io.Pipe()
	var g sync.WaitGroup
	g.Add(1)
	go func() {
		_, err := writer.Write([]byte("hello"))
		if err != nil {
			fmt.Println(err)
			reader.Close()
		}
		g.Done()
	}()
	reader.Close()
	g.Wait()
}
