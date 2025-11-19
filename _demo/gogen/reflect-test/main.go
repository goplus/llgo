package main
import ("fmt"; "reflect")

func main() {
	testReflect()
	fmt.Println("\n=== All reflect tests passed ===")
}

func testReflect() {
	fmt.Println("=== Test Reflect ===")
	
	// TypeOf
	t := reflect.TypeOf(42)
	if t.Kind() != reflect.Int { panic("TypeOf(42).Kind() should be Int") }
	if t.Name() != "int" { panic("TypeOf(42).Name() should be 'int'") }
	
	// TypeOf with pointer
	var num int = 42
	tp := reflect.TypeOf(&num)
	if tp.Kind() != reflect.Ptr { panic("TypeOf(&num).Kind() should be Ptr") }
	if tp.Elem().Kind() != reflect.Int { panic("Elem().Kind() should be Int") }
	
	// ValueOf
	v := reflect.ValueOf(&num)
	ptr := v.Pointer()
	if ptr == 0 { panic("Pointer should not be 0") }
	
	fmt.Println("SUCCESS\n")
}
