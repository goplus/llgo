package reflectcall

import "reflect"

func A() {
	v := reflect.ValueOf(1)
	_ = v.Kind()
}
