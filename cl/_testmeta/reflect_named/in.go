package main

import "reflect"

type T struct{}

func (T) M() {}

func main() {
	_, _ = reflect.TypeOf(T{}).MethodByName("M")
}
