package main
import ("fmt"; "unicode")
func main() {
	testUnicode()
	fmt.Println("\n=== All unicode tests passed ===")
}
func testUnicode() {
	fmt.Println("=== Test Unicode ===")
	if !unicode.IsGraphic('A') { panic("IsGraphic('A') should be true") }
	if !unicode.IsSpace(' ') { panic("IsSpace(' ') should be true") }
	if !unicode.IsUpper('A') { panic("IsUpper('A') should be true") }
	if unicode.IsUpper('a') { panic("IsUpper('a') should be false") }
	fmt.Println("SUCCESS\n")
}
