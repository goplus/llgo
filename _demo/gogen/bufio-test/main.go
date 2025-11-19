package main
import ("bufio"; "fmt"; "strings")

func main() {
	testBufio()
	fmt.Println("\n=== All bufio tests passed ===")
}

func testBufio() {
	fmt.Println("=== Test Bufio ===")
	
	// NewScanner
	input := "line1\nline2\nline3"
	scanner := bufio.NewScanner(strings.NewReader(input))
	
	lines := []string{}
	for scanner.Scan() {
		lines = append(lines, scanner.Text())
	}
	
	if len(lines) != 3 { panic(fmt.Sprintf("Should scan 3 lines, got %d", len(lines))) }
	if lines[0] != "line1" { panic("First line should be 'line1'") }
	if lines[1] != "line2" { panic("Second line should be 'line2'") }
	
	fmt.Println("SUCCESS\n")
}
