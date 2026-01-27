package reflectmethod

import "reflect"

type T struct{}

func (T) Foo() {}

func A() {
	v := reflect.ValueOf(T{})
	_ = v.Method(0)
	_ = v.MethodByName("Foo")
	name := "Foo"
	_ = v.MethodByName(name)
}
