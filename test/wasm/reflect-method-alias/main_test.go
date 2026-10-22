package main

import "testing"

// Run the standalone fixture with Go and native LLGo as result oracles.
// Its main checks both alias-returning lookups without reflect.Call/MakeFunc,
// which could otherwise enable bridges and mask the Wasm regression.
func TestMethodAliasFixture(t *testing.T) {
	main()
}
