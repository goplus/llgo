package main
import ("fmt"; "io/fs"; "os")

func main() {
	testIoFs()
	fmt.Println("\n=== All io/fs tests passed ===")
}

func testIoFs() {
	fmt.Println("=== Test Io/Fs ===")
	
	// Create a temp file
	f, err := os.Create("/tmp/test_iofs.txt")
	if err != nil { panic(err) }
	f.Close()
	
	// Stat it
	info, err := os.Stat("/tmp/test_iofs.txt")
	if err != nil { panic(err) }
	
	// Test FileInfo interface
	var fi fs.FileInfo = info
	
	if fi.IsDir() { panic("IsDir should be false for file") }
	if fi.Name() != "test_iofs.txt" { panic("Name mismatch") }
	
	// Cleanup
	os.Remove("/tmp/test_iofs.txt")
	
	fmt.Println("SUCCESS\n")
}
