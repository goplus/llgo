package main

/*
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
*/
import "C"
import (
	"fmt"
	"unsafe"
)

func main() {
	// C.CString example
	cstr := C.CString("Hello, World!")
	C.puts(cstr)

	// C.CBytes example
	bytes := []byte{65, 66, 67, 68} // ABCD
	cbytes := C.CBytes(bytes)

	// C.GoString example
	gostr := C.GoString(cstr)
	println("Converted back to Go string: ", gostr)

	// C.GoStringN example (with length limit)
	gostringN := C.GoStringN(cstr, 5) // only take first 5 characters
	println("Length-limited string: ", gostringN)

	// C.GoBytes example
	gobytes := C.GoBytes(cbytes, 4) // 4 is the length
	println("Converted back to Go byte slice: ", gobytes)

	// C math library examples
	x := 2.0
	// Calculate square root
	sqrtResult := C.sqrt(C.double(x))
	fmt.Printf("sqrt(%v) = %v\n", x, float64(sqrtResult))

	// Calculate sine
	sinResult := C.sin(C.double(x))
	fmt.Printf("sin(%v) = %v\n", x, float64(sinResult))

	// Calculate cosine
	cosResult := C.cos(C.double(x))
	fmt.Printf("cos(%v) = %v\n", x, float64(cosResult))

	// Calculate natural logarithm
	logResult := C.log(C.double(x))
	fmt.Printf("log(%v) = %v\n", x, float64(logResult))

	C.free(unsafe.Pointer(cstr))
	C.free(cbytes)
}
