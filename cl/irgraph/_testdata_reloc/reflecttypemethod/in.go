package reflecttypemethod

import "reflect"

type T struct{}

func (T) Foo() {}

func A() {
	_, _ = reflect.TypeOf(T{}).MethodByName("Foo")
}
