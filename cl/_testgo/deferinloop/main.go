package main

import (
	"fmt"
	"runtime"
	"sync"
	"time"
)

type Resource struct {
	name string
}

func (r *Resource) Close() {
	fmt.Printf("Closing resource: %s\n", r.name)
}

func (r *Resource) String() string {
	return fmt.Sprintf("Resource(%s)", r.name)
}

func main() {
	// Basic case: defer in a simple loop
	fmt.Println("=== Basic for loop with defer ===")
	for i := 0; i < 3; i++ {
		defer fmt.Println(i)
	}

	// Complex types and method calls
	fmt.Println("\n=== Complex types and method calls ===")
	resources := []*Resource{
		{"db"},
		{"file"},
		{"network"},
	}
	for _, res := range resources {
		defer res.Close()
	}

	// Closure capturing different variable types
	fmt.Println("\n=== Closure capturing different variable types ===")
	str := "hello"
	num := 42
	ptr := &num
	for i := 0; i < 2; i++ {
		defer func(idx int) {
			fmt.Printf("Closure %d: str=%s, num=%d, ptr=%d\n", idx, str, num, *ptr)
		}(i)
	}

	// Defer in conditional statements
	fmt.Println("\n=== Defer in conditional statements ===")
	values := []int{1, 2, 3, 4}
	for _, v := range values {
		if v%2 == 0 {
			defer func(val int) {
				fmt.Printf("Even number: %d\n", val)
			}(v)
		} else {
			defer fmt.Printf("Odd number: %d\n", v)
		}
	}

	// Defer in switch statements
	fmt.Println("\n=== Defer in switch statements ===")
	for i := 0; i < 3; i++ {
		switch i {
		case 0:
			defer fmt.Println("Case 0")
		case 1:
			defer func() {
				fmt.Println("Case 1 - closure")
			}()
		default:
			defer fmt.Printf("Default case: %d\n", i)
		}
	}

	// Nested loops with defer
	fmt.Println("\n=== Nested loops with defer ===")
	for i := 0; i < 2; i++ {
		defer fmt.Printf("Outer loop: %d\n", i)
		for j := 0; j < 2; j++ {
			defer func(outer, inner int) {
				fmt.Printf("Inner loop: outer=%d, inner=%d\n", outer, inner)
			}(i, j)
		}
	}

	// TODO(lijie): WaitGroup bug on linux
	if runtime.GOOS != "linux" {
		// Defer with select and goroutines
		fmt.Println("\n=== Defer with select and goroutines ===")
		ch := make(chan int)
		var wg sync.WaitGroup

		// Start a receiver goroutine
		go func() {
			for i := 0; i < 2; i++ {
				select {
				case v := <-ch:
					fmt.Printf("Received: %d\n", v)
				case <-timeout(time.Second):
					fmt.Println("Receive timeout")
				}
			}
		}()

		for i := 0; i < 2; i++ {
			wg.Add(1)
			go func(id int) {
				defer wg.Done()
				select {
				case ch <- id:
					defer fmt.Printf("Sent value: %d\n", id)
				case <-timeout(time.Millisecond * 100):
					defer fmt.Printf("Timeout for: %d\n", id)
				}
			}(i)
		}

		wg.Wait()
		close(ch) // Close the channel after all goroutines are done
	}

	// Defer with interfaces and type assertions
	fmt.Println("\n=== Defer with interfaces and type assertions ===")
	items := []interface{}{
		"string",
		42,
		&Resource{"interface"},
	}
	for _, item := range items {
		switch v := item.(type) {
		case string:
			defer fmt.Printf("String: %s\n", v)
		case int:
			defer fmt.Printf("Integer: %d\n", v)
		case *Resource:
			defer v.Close()
		}
	}

	// Error handling with defer
	fmt.Println("\n=== Error handling with defer ===")
	for i := 0; i < 3; i++ {
		func(val int) {
			defer func() {
				if r := recover(); r != nil {
					fmt.Printf("Recovered from: %v\n", r)
				}
			}()

			if val == 1 {
				defer fmt.Printf("Before panic: %d\n", val)
				panic("oops")
			}
			defer fmt.Printf("Normal execution: %d\n", val)
		}(i)
	}

	// Example of for loop nested in if statement
	fmt.Println("\n=== Defer in for loop nested in if ===")
	condition := true
	value := 42
	if condition {
		fmt.Println("Entering if block")
		for i := 0; i < 3; i++ {
			defer func(val, idx int) {
				fmt.Printf("Deferred in if: val=%d, i=%d\n", val, idx)
			}(value, i)
		}
		fmt.Println("Exiting if block")
	}

	fmt.Println("\n=== Main function ending ===")
}
