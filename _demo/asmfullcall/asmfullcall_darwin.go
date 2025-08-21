//go:build darwin

package main

import "unsafe"

func verify() {
	// 0 output & 0 input
	asmFull("nop", nil)

	// 0 output & 1 input with memory address
	addr := uintptr(unsafe.Pointer(&testVar))
	asmFull("str {value}, [{addr}]", map[string]any{
		"addr":  addr,
		"value": 43,
	})
	check(43, testVar)

	// 1 output & 1 input
	res1 := asmFull("mov {}, {value}", map[string]any{
		"value": 41,
	})
	check(41, int(res1))

	// 1 output & 2 inputs
	res2 := asmFull("add {}, {a}, {b}", map[string]any{
		"a": 25,
		"b": 17,
	})
	check(42, int(res2))
}
