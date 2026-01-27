package reflectcombo

import "reflect"

type T struct{}

func (T) Foo() {}

func A() {
	v := reflect.ValueOf(T{})
	_ = v.Method(0)
	name := string([]byte{'F', 'o', 'o'})
	_ = v.MethodByName(name)

	t := reflect.TypeOf(T{})
	_, _ = t.MethodByName("Foo")
	_ = t.Method(0)
}
