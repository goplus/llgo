package main

import (
	"os"
)

func main() {
	// Test file operations
	testFile := "test_file.txt"

	// Clean up at the end
	defer os.Remove(testFile)

	// Test Write and WriteString
	f, err := os.Create(testFile)
	if err != nil {
		panic("Create failed: " + err.Error())
	}

	// Test Write
	data := []byte("Hello, World!\n")
	n, err := f.Write(data)
	if err != nil || n != len(data) {
		panic("Write failed")
	}

	// Test WriteString
	n, err = f.WriteString("Test WriteString\n")
	if err != nil || n != 17 {
		panic("WriteString failed")
	}

	f.Close()

	// Test ReadAt
	f, err = os.Open(testFile)
	if err != nil {
		panic("Open failed: " + err.Error())
	}

	buf := make([]byte, 5)
	n, err = f.ReadAt(buf, 0)
	if err != nil || n != 5 || string(buf) != "Hello" {
		panic("ReadAt failed: expected 'Hello'")
	}

	n, err = f.ReadAt(buf, 7)
	if err != nil || n != 5 || string(buf) != "World" {
		panic("ReadAt failed: expected 'World'")
	}

	f.Close()

	// Test WriteAt with offset 0
	f, err = os.OpenFile(testFile, os.O_RDWR, 0644)
	if err != nil {
		panic("OpenFile failed: " + err.Error())
	}

	n, err = f.WriteAt([]byte("XXXXX"), 0)
	if err != nil || n != 5 {
		panic("WriteAt at offset 0 failed")
	}

	// Test WriteAt with non-zero offset
	n, err = f.WriteAt([]byte("YYYYY"), 7)
	if err != nil || n != 5 {
		panic("WriteAt at offset 7 failed")
	}

	f.Close()

	// Verify WriteAt results
	f, err = os.Open(testFile)
	if err != nil {
		panic("Open failed: " + err.Error())
	}

	buf = make([]byte, 5)
	n, err = f.ReadAt(buf, 0)
	if err != nil || n != 5 || string(buf) != "XXXXX" {
		panic("WriteAt verification at offset 0 failed: expected 'XXXXX'")
	}

	buf = make([]byte, 5)
	n, err = f.ReadAt(buf, 7)
	if err != nil || n != 5 || string(buf) != "YYYYY" {
		panic("WriteAt verification at offset 7 failed: expected 'YYYYY'")
	}

	f.Close()

	// Test Seek
	f, err = os.Open(testFile)
	if err != nil {
		panic("Open failed: " + err.Error())
	}

	// Seek to position 7
	pos, err := f.Seek(7, 0) // SEEK_SET = 0
	if err != nil || pos != 7 {
		panic("Seek failed")
	}

	buf = make([]byte, 5)
	n, err = f.Read(buf)
	if err != nil || n != 5 || string(buf) != "YYYYY" {
		panic("Seek test failed: expected 'YYYYY'")
	}

	// Seek from current position
	pos, err = f.Seek(2, 1) // SEEK_CUR = 1
	if err != nil || pos != 14 {
		panic("Seek from current failed")
	}

	// Seek from end
	pos, err = f.Seek(-5, 2) // SEEK_END = 2
	if err != nil {
		panic("Seek from end failed")
	}

	f.Close()

	println("All os.File tests passed!")
}
