package main
import ("fmt"; "path/filepath")
func main() {
	result := filepath.Join("foo", "bar", "baz.txt")
	fmt.Printf("filepath.Join result: %s\n", result)
	expected := "foo/bar/baz.txt"
	if result != expected && result != "foo\\bar\\baz.txt" {
		panic(fmt.Sprintf("filepath.Join failed: got '%s'", result))
	}
	fmt.Println("=== All path/filepath tests passed ===")
}
