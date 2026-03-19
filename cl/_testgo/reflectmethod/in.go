package main

import "reflect"

type T struct{}

func (T) M() {}

func typeByNameConst() {
	_, _ = reflect.TypeOf(T{}).MethodByName("M")
}

func typeByNameDynamic(name string) {
	_, _ = reflect.TypeOf(T{}).MethodByName(name)
}

func typeByIndex() {
	_ = reflect.TypeOf(T{}).Method(0)
}

func valueByNameConst(v any) {
	_ = reflect.ValueOf(v).MethodByName("M")
}

func valueByNameDynamic(v any, name string) {
	_ = reflect.ValueOf(v).MethodByName(name)
}

func valueByIndex(v any) {
	_ = reflect.ValueOf(v).Method(0)
}

func main() {
	typeByNameConst()
	typeByNameDynamic("M")
	typeByIndex()
	valueByNameConst(T{})
	valueByNameDynamic(T{}, "M")
	valueByIndex(T{})
}
