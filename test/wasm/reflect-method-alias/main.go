package main

import "reflect"

type V = reflect.Value

type lookup interface {
	Method(int) V
	MethodByName(string) V
}

type value int

func (v value) Add(x int) int { return int(v) + x }

func main() {
	// Only interface lookups returning the alias may enable typed bridges.
	// Direct reflect.Value.Method calls would mask the regression.
	var v lookup = reflect.ValueOf(value(40))
	indexed := v.Method(0).Interface().(func(int) int)(2)
	named := v.MethodByName("Add").Interface().(func(int) int)(2)
	if indexed != 42 || named != 42 {
		panic("aliased reflect method value result")
	}
	println("wasm reflect method aliases:", indexed, named)
}
