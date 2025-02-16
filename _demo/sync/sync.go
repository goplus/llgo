package main

import (
	"fmt"
	"sync"
	"sync/atomic"
	"time"
)

// Counter represents a thread-safe counter
type Counter struct {
	mu    sync.Mutex
	value int64
}

// Increment increases the counter value by 1
func (c *Counter) Increment() {
	c.mu.Lock()
	defer c.mu.Unlock()
	c.value++
}

// GetValue returns the current value of the counter
func (c *Counter) GetValue() int64 {
	c.mu.Lock()
	defer c.mu.Unlock()
	return c.value
}

// Constant values for the test
const (
	numGoroutines = 64
	numIterations = 10000
	expectedTotal = numGoroutines * numIterations
)

func main() {
	// Create a new counter instance
	counter := &Counter{}

	// Create a wait group to wait for all goroutines to finish
	var wg sync.WaitGroup

	// Track active goroutines for monitoring
	var activeGoroutines int32

	// Start time
	startTime := time.Now()

	// Launch goroutines
	for i := 0; i < numGoroutines; i++ {
		wg.Add(1)
		atomic.AddInt32(&activeGoroutines, 1)

		go func(id int) {
			defer func() {
				wg.Done()
				atomic.AddInt32(&activeGoroutines, -1)
			}()

			// Each goroutine increments the counter numIterations times
			for j := 0; j < numIterations; j++ {
				counter.Increment()

				// Simulate varying workload with random sleeps
				if j%100 == 0 {
					time.Sleep(time.Microsecond)
				}
			}
			fmt.Printf("Goroutine %d finished\n", id)
		}(i)
	}

	// Monitor progress in a separate goroutine
	go func() {
		for {
			active := atomic.LoadInt32(&activeGoroutines)
			if active == 0 {
				break
			}
			fmt.Printf("Active goroutines: %d\n", active)
			time.Sleep(time.Second)
		}
	}()

	// Wait for all goroutines to complete
	wg.Wait()

	// Calculate execution time
	duration := time.Since(startTime)

	// Get and verify the final result
	finalValue := counter.GetValue()
	fmt.Printf("\nExecution completed in: %v\n", duration)
	fmt.Printf("Final counter value: %d\n", finalValue)
	fmt.Printf("Expected value: %d\n", expectedTotal)

	// Assert the result
	if finalValue != expectedTotal {
		panic(fmt.Sprintf("ERROR: Counter value mismatch! Expected %d, got %d\n",
			expectedTotal, finalValue))
	} else {
		fmt.Printf("SUCCESS: Counter value matches expected total\n")
	}

	// Print some statistics
	opsPerSecond := float64(expectedTotal) / duration.Seconds()
	fmt.Printf("\nStatistics:\n")
	fmt.Printf("Operations per second: %.2f\n", opsPerSecond)
	fmt.Printf("Average time per operation: %.2f ns\n",
		float64(duration.Nanoseconds())/float64(expectedTotal))
}
