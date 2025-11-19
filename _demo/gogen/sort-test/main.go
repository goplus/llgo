package main

import (
	"fmt"
	"sort"
)

func main() {
	testSlice()
	fmt.Println("\n=== All sort tests passed ===")
}

func testSlice() {
	fmt.Println("=== Test Slice ===")

	nums := []int{3, 1, 4, 1, 5, 9, 2, 6}
	sort.Slice(nums, func(i, j int) bool {
		return nums[i] < nums[j]
	})

	expected := []int{1, 1, 2, 3, 4, 5, 6, 9}
	for i, v := range nums {
		if v != expected[i] {
			panic(fmt.Sprintf("sort.Slice failed at index %d: expected %d, got %d", i, expected[i], v))
		}
	}

	fmt.Println("SUCCESS: Slice works correctly\n")
}
