package main

var inlineObservation int

//go:noinline
func inlineOpaque(value int) int {
	inlineObservation = value
	return value
}

func inlineLeaf(value int) int {
	adjusted := inlineOpaque(value) + 2 // LLDB_STOP: inline_leaf
	return adjusted
}

func inlineMiddle(value int) int {
	doubled := inlineLeaf(value) * 2 // LLDB_STOP: inline_middle
	return doubled
}

//go:noinline
func optimizedInlineCaller(value int) int {
	result := inlineMiddle(value) + 1 // LLDB_STOP: inline_caller
	result++                          // LLDB_STOP: inline_after_call
	return result
}
