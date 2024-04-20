package fncall

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func Foo() int {
	return max(1, 2)
}
