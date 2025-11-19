package main

import (
	"fmt"
	"math"
)

func main() {
	testMathFunctions()
	fmt.Println("\n=== All math tests passed ===")
}

func testMathFunctions() {
	fmt.Println("=== Test Math Functions ===")

	// Exp
	expResult := math.Exp(1.0)
	fmt.Printf("Exp(1.0) = %f\n", expResult)
	if expResult < 2.71 || expResult > 2.72 {
		panic(fmt.Sprintf("Exp(1.0) should be ~2.718, got %f", expResult))
	}

	// Log
	logResult := math.Log(math.E)
	fmt.Printf("Log(E) = %f\n", logResult)
	if logResult < 0.99 || logResult > 1.01 {
		panic(fmt.Sprintf("Log(E) should be ~1.0, got %f", logResult))
	}

	fmt.Println("SUCCESS: Math functions work correctly\n")
}
