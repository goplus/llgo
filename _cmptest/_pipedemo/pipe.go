package main

import (
	"fmt"
	"io"
)

func main() {
	data := []byte("This is some data that needs to be stored in Body.")
	pr, pw := io.Pipe()
	go func() {
		defer pw.Close()
		if _, err := pw.Write(data); err != nil {
			fmt.Println("Error writing to pipe:", err)
			return
		}
	}()
	defer pr.Close()

	readData, err := io.ReadAll(pr)
	if err != nil {
		fmt.Println("Error reading from Body:", err)
		return
	}
	fmt.Println("Body:", string(readData))
}
