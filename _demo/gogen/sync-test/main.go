package main
import ("fmt"; "sync")

func main() {
	testSync()
	fmt.Println("\n=== All sync tests passed ===")
}

func testSync() {
	fmt.Println("=== Test Sync ===")
	
	var m sync.Map
	
	// Store
	m.Store("key1", "value1")
	m.Store("key2", 42)
	
	// Load
	val, ok := m.Load("key1")
	if !ok { panic("Load should find key1") }
	if val.(string) != "value1" { panic("Load value mismatch") }
	
	// Range
	count := 0
	m.Range(func(key, value interface{}) bool {
		count++
		return true
	})
	if count != 2 { panic(fmt.Sprintf("Range should visit 2 items, got %d", count)) }
	
	fmt.Println("SUCCESS\n")
}
