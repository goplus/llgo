package main

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	_ = max(1, 2)
}
