package main

// testClosureAsParam: closure passed as parameter (higher-order function)
func main() {
	applyFn := func(nums []int, f func(int) int) []int {
		res := make([]int, len(nums))
		for i, n := range nums {
			res[i] = f(n)
		}
		return res
	}
	factor := 3
	nums := []int{1, 2, 3}
	_ = applyFn(nums, func(n int) int {
		return n * factor
	})
}
