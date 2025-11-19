package main
import ("bytes"; "fmt"; "io")

func main() {
	testIo()
	fmt.Println("\n=== All io tests passed ===")
}

func testIo() {
	fmt.Println("=== Test Io ===")
	
	// Use Writer interface
	var buf bytes.Buffer
	var w io.Writer = &buf
	
	n, err := w.Write([]byte("hello"))
	if err != nil { panic(fmt.Sprintf("Write failed: %v", err)) }
	if n != 5 { panic(fmt.Sprintf("Write should write 5 bytes, got %d", n)) }
	
	if buf.String() != "hello" { panic("Write content mismatch") }
	
	fmt.Println("SUCCESS\n")
}
