package gotest

import "testing"

type returnOrderState struct {
	value int
}

func (s *returnOrderState) mutateAndRead(next int) int {
	s.value = next
	return s.value
}

func returnStateAndMutationResult() (returnOrderState, int) {
	state := returnOrderState{value: 1}
	return state, state.mutateAndRead(2)
}

// This test captures gc-compatible behavior used by stdlib code paths:
// in `return x, x.mutate()`, the returned `x` reflects the mutation.
func TestReturnOrder_ValueAndMethodMutation(t *testing.T) {
	gotState, gotMut := returnStateAndMutationResult()
	if gotState.value != 2 || gotMut != 2 {
		t.Fatalf("got (state=%d, mut=%d), want (2,2)", gotState.value, gotMut)
	}
}
