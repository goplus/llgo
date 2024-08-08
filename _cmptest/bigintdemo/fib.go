package main

import (
	"fmt"
	"math/big"
)

func fib() {
	// Initialize two big ints with the first two numbers in the sequence.
	a := big.NewInt(0)
	b := big.NewInt(1)

	// Initialize limit as 10^99, the smallest integer with 100 digits.
	var limit big.Int
	limit.Exp(big.NewInt(10), big.NewInt(99), nil)

	// Loop while a is smaller than 1e100.
	for a.Cmp(&limit) < 0 {
		// Compute the next Fibonacci number, storing it in a.
		a.Add(a, b)
		// Swap a and b so that b is the next number in the sequence.
		a, b = b, a
	}
	fmt.Println(a) // 100-digit Fibonacci number
}

func abs() {
	a := big.NewInt(64)
	b := big.NewInt(-52)
	a.Set(b)
	a.Abs(a)
	a.Set(big.NewInt(-164))
	a.Abs(a)
	fmt.Println("value: ", a.String())
}

func neg() {
	fmt.Println("value: ", big.NewInt(-64).Neg(big.NewInt(-64)))
	fmt.Println("value: ", big.NewInt(64).Neg(big.NewInt(64)))
	fmt.Println("value: ", big.NewInt(0).Neg(big.NewInt(0)))
}

func calc() {
	a := big.NewInt(64)
	b := big.NewInt(-52)
	c := big.NewInt(54)
	fmt.Println("value:", a.Add(a, b))
	fmt.Println("value:", a.Sub(b, c))
	d := big.NewInt(10)
	e := big.NewInt(4)
	fmt.Println("value:", d.Mul(d, e))
}

func bitop() {
	a := big.NewInt(4)
	fmt.Println("value:", a.Lsh(a, 1))
	b := big.NewInt(16)
	fmt.Println("value:", b.Rsh(b, 2))
}

func main() {
	bitop()
}
