package main
import ("fmt"; "os")

func main() {
	testOs()
	fmt.Println("\n=== All os tests passed ===")
}

func testOs() {
	fmt.Println("=== Test Os ===")
	
	// Getenv/Setenv
	os.Setenv("TEST_VAR", "test_value")
	val := os.Getenv("TEST_VAR")
	if val != "test_value" { panic("Getenv/Setenv failed") }
	
	// Create/Open/Close/WriteString/Remove
	f, err := os.Create("/tmp/test_llgo.txt")
	if err != nil { panic(fmt.Sprintf("Create failed: %v", err)) }
	
	_, err = f.WriteString("test content")
	if err != nil { panic(fmt.Sprintf("WriteString failed: %v", err)) }
	
	err = f.Close()
	if err != nil { panic(fmt.Sprintf("Close failed: %v", err)) }
	
	f2, err := os.Open("/tmp/test_llgo.txt")
	if err != nil { panic(fmt.Sprintf("Open failed: %v", err)) }
	f2.Close()
	
	// Lstat
	info, err := os.Lstat("/tmp/test_llgo.txt")
	if err != nil { panic(fmt.Sprintf("Lstat failed: %v", err)) }
	if info.Name() != "test_llgo.txt" { panic("Lstat name mismatch") }
	
	// Remove
	err = os.Remove("/tmp/test_llgo.txt")
	if err != nil { panic(fmt.Sprintf("Remove failed: %v", err)) }
	
	// IsNotExist
	_, err = os.Open("/tmp/nonexistent_file_xyz.txt")
	if !os.IsNotExist(err) { panic("IsNotExist should be true") }
	
	fmt.Println("SUCCESS\n")
}
