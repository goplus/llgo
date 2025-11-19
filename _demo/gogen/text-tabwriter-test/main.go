package main
import ("bytes"; "fmt"; "text/tabwriter")

func main() {
	testTabwriter()
	fmt.Println("\n=== All text/tabwriter tests passed ===")
}

func testTabwriter() {
	fmt.Println("=== Test Tabwriter ===")
	
	var buf bytes.Buffer
	w := tabwriter.NewWriter(&buf, 0, 0, 1, ' ', 0)
	if w == nil { panic("NewWriter should not return nil") }
	
	fmt.Fprintln(w, "a\tb\tc")
	fmt.Fprintln(w, "aa\tbb\tcc")
	
	err := w.Flush()
	if err != nil { panic(fmt.Sprintf("Flush failed: %v", err)) }
	
	result := buf.String()
	if len(result) == 0 { panic("Tabwriter should produce output") }
	
	fmt.Println("SUCCESS\n")
}
