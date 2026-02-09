package reflectmethodvar

import "reflect"

type T struct{}

func (T) Foo() {}

func A() {
	name := string([]byte{'F', 'o', 'o'})
	_ = reflect.ValueOf(T{}).MethodByName(name)
}
