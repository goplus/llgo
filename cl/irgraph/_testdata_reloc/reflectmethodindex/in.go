package reflectmethodindex

import "reflect"

type T struct{}

func (T) Foo() {}

func A() {
	_ = reflect.ValueOf(T{}).Method(0)
}
