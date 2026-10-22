package main

var aggregateObservation [3]int

//go:noinline
func observeAggregate(value [3]int) {
	aggregateObservation = value
}

//go:noinline
func mutateAggregate(value *[3]int) {
	value[1] += 10
}

//go:noinline
func optimizedAggregate(parameter [3]int) int {
	local := parameter
	observeAggregate(local)
	mutateAggregate(&local)
	mutateAggregate(&parameter)
	result := local[1] + parameter[1] // LLDB_STOP: aggregate_updated
	return result
}
