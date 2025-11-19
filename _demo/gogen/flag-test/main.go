package main
import ("fmt"; "flag"; "os")

func main() {
	testFlag()
	fmt.Println("\n=== All flag tests passed ===")
}

func testFlag() {
	fmt.Println("=== Test Flag ===")
	
	// Reset flags for testing
	flag.CommandLine = flag.NewFlagSet(os.Args[0], flag.ExitOnError)
	
	// Bool
	verbose := flag.Bool("verbose", false, "verbose mode")
	if verbose == nil { panic("Bool should not return nil") }
	
	// Parse (with no args)
	flag.Parse()
	
	// NArg (should be 0)
	if flag.NArg() != 0 { panic(fmt.Sprintf("NArg should be 0, got %d", flag.NArg())) }
	
	// Arg (should return empty string for invalid index)
	arg := flag.Arg(0)
	if arg != "" { panic(fmt.Sprintf("Arg(0) should be empty, got '%s'", arg)) }
	
	// PrintDefaults (just verify it doesn't panic)
	flag.PrintDefaults()
	
	fmt.Println("SUCCESS\n")
}
