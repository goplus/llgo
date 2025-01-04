package main

/*
#include <stdlib.h>
*/
import "C"

func main() {
	p := C.malloc(1024)
	defer C.free(p)
}
