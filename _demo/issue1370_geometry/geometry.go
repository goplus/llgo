package main

import (
	"fmt"

	"github.com/goplus/llgo/_demo/issue1370_geometry/geometry"
)

func main() {
	rect := geometry.NewRectangle(5.0, 3.0)

	err := geometry.RegisterShape(rect, 42)
	if err != nil {
		println("FAIL: RegisterShape returned error")
		return
	}

	if rect.GetID() != 42 {
		println("FAIL: ID not set correctly")
		return
	}

	area := rect.Area()
	fmt.Printf("Area: %.1f\n", area)

	if area != 15.0 {
		println("FAIL: Area calculation incorrect")
		return
	}

	println("SUCCESS: Custom interface with private methods works correctly")
}
