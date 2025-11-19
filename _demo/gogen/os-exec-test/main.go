package main
import ("fmt"; "os/exec")

func main() {
	testExec()
	fmt.Println("\n=== All os/exec tests passed ===")
}

func testExec() {
	fmt.Println("=== Test Exec ===")
	
	// Command
	cmd := exec.Command("echo", "hello")
	if cmd == nil { panic("Command should not return nil") }
	
	// Run
	err := cmd.Run()
	if err != nil { panic(fmt.Sprintf("Run failed: %v", err)) }
	
	fmt.Println("SUCCESS\n")
}
