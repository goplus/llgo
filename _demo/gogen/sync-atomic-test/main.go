package main
import ("fmt"; "sync/atomic")
func main() {
	var counter int32 = 10
	loaded := atomic.LoadInt32(&counter)
	if loaded != 10 { panic(fmt.Sprintf("LoadInt32 should be 10, got %d", loaded)) }
	
	result := atomic.AddInt32(&counter, 5)
	if result != 15 { panic(fmt.Sprintf("AddInt32 should be 15, got %d", result)) }
	
	fmt.Println("=== All sync/atomic tests passed ===")
}
