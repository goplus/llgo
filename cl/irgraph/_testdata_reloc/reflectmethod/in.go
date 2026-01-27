package reflectmethod

import "reflect"

type T struct{}

func (T) Foo() {}

func A() {
	_ = reflect.ValueOf(T{}).MethodByName("Foo")
}
