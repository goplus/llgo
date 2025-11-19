package main
import ("fmt"; "strconv")

func main() {
	testStrconv()
	fmt.Println("\n=== All strconv tests passed ===")
}

func testStrconv() {
	fmt.Println("=== Test Strconv ===")
	
	// FormatInt
	s := strconv.FormatInt(42, 10)
	if s != "42" { panic("FormatInt failed") }
	
	// Itoa
	s2 := strconv.Itoa(123)
	if s2 != "123" { panic("Itoa failed") }
	
	// Atoi
	num, err := strconv.Atoi("456")
	if err != nil || num != 456 { panic("Atoi failed") }
	
	// Quote
	quoted := strconv.Quote("hello")
	if quoted != `"hello"` { panic("Quote failed") }
	
	// Unquote
	unquoted, err := strconv.Unquote(`"hello"`)
	if err != nil || unquoted != "hello" { panic("Unquote failed") }
	
	// QuoteRune
	quotedRune := strconv.QuoteRune('A')
	if quotedRune != "'A'" { panic("QuoteRune failed") }
	
	// FormatFloat
	floatStr := strconv.FormatFloat(3.14, 'f', 2, 64)
	if floatStr != "3.14" { panic("FormatFloat failed") }
	
	fmt.Println("SUCCESS\n")
}
