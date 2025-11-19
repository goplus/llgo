package main
import ("fmt"; "log")

func main() {
	testLog()
	fmt.Println("\n=== All log tests passed ===")
}

func testLog() {
	fmt.Println("=== Test Log ===")
	
	// These just need to not panic
	log.Println("test println")
	log.Printf("test printf: %d", 42)
	
	// Panicf and Panicln would actually panic, so we test them in a defer/recover
	func() {
		defer func() {
			if r := recover(); r == nil {
				panic("Panicln should panic")
			}
		}()
		log.Panicln("test panic")
	}()
	
	func() {
		defer func() {
			if r := recover(); r == nil {
				panic("Panicf should panic")
			}
		}()
		log.Panicf("test panic: %d", 42)
	}()
	
	// Fatalln would exit, so we skip testing it directly
	fmt.Println("Note: Fatalln not tested (would exit process)")
	
	fmt.Println("SUCCESS\n")
}
