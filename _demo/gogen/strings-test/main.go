package main
import ("fmt"; "strings"; "unicode")

func main() {
	testStringsFunctions()
	testBuilder()
	fmt.Println("\n=== All strings tests passed ===")
}

func testStringsFunctions() {
	fmt.Println("=== Test Strings Functions ===")
	
	// HasPrefix
	if !strings.HasPrefix("hello", "hel") { panic("HasPrefix failed") }
	
	// HasSuffix  
	if !strings.HasSuffix("hello.txt", ".txt") { panic("HasSuffix failed") }
	
	// Split
	parts := strings.Split("a,b,c", ",")
	if len(parts) != 3 || parts[0] != "a" { panic("Split failed") }
	
	// SplitN
	parts2 := strings.SplitN("a,b,c,d", ",", 2)
	if len(parts2) != 2 || parts2[1] != "b,c,d" { panic("SplitN failed") }
	
	// Join
	joined := strings.Join([]string{"a", "b", "c"}, ",")
	if joined != "a,b,c" { panic("Join failed") }
	
	// Index
	idx := strings.Index("hello", "ll")
	if idx != 2 { panic(fmt.Sprintf("Index should be 2, got %d", idx)) }
	
	// IndexByte
	idx2 := strings.IndexByte("hello", 'l')
	if idx2 != 2 { panic(fmt.Sprintf("IndexByte should be 2, got %d", idx2)) }
	
	// LastIndexByte
	idx3 := strings.LastIndexByte("hello", 'l')
	if idx3 != 3 { panic(fmt.Sprintf("LastIndexByte should be 3, got %d", idx3)) }
	
	// Contains
	if !strings.Contains("hello", "ell") { panic("Contains failed") }
	
	// ContainsAny
	if !strings.ContainsAny("hello", "aeiou") { panic("ContainsAny failed") }
	
	// ContainsRune
	if !strings.ContainsRune("hello", 'e') { panic("ContainsRune failed") }
	
	// TrimSuffix
	trimmed := strings.TrimSuffix("hello.txt", ".txt")
	if trimmed != "hello" { panic("TrimSuffix failed") }
	
	// TrimLeft
	trimmed2 := strings.TrimLeft("###hello", "#")
	if trimmed2 != "hello" { panic("TrimLeft failed") }
	
	// TrimRight
	trimmed3 := strings.TrimRight("hello###", "#")
	if trimmed3 != "hello" { panic("TrimRight failed") }
	
	// TrimRightFunc
	trimmed4 := strings.TrimRightFunc("hello123", unicode.IsDigit)
	if trimmed4 != "hello" { panic("TrimRightFunc failed") }
	
	// Repeat
	repeated := strings.Repeat("ab", 3)
	if repeated != "ababab" { panic("Repeat failed") }
	
	// ToUpper
	upper := strings.ToUpper("hello")
	if upper != "HELLO" { panic("ToUpper failed") }
	
	// Title (deprecated but still in usage.json)
	titled := strings.Title("hello world")
	if titled != "Hello World" { panic("Title failed") }
	
	fmt.Println("SUCCESS\n")
}

func testBuilder() {
	fmt.Println("=== Test Builder ===")
	
	var builder strings.Builder
	builder.WriteString("hello")
	result := builder.String()
	if result != "hello" { panic(fmt.Sprintf("Builder.String failed: got '%s'", result)) }
	
	fmt.Println("SUCCESS\n")
}
