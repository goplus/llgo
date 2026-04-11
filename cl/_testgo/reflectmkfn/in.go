// LITTEST
package main

import (
	"reflect"
	"strings"
)

// CHECK-LABEL: define {{.*}} @"{{.*}}/reflectmkfn.main"{{.*}}
// CHECK: MatchesClosure
// CHECK: StringEqual
func main() {
	typ := reflect.FuncOf([]reflect.Type{reflect.TypeOf(""), reflect.TypeOf(0)}, []reflect.Type{reflect.TypeOf("")}, false)
	// CHECK-LABEL: define {{.*}} @"{{.*}}/reflectmkfn.main$1"{{.*}}
	// CHECK: AssertIndexRange
	// CHECK: AllocZ
	fn := reflect.MakeFunc(typ, func(args []reflect.Value) []reflect.Value {
		r := strings.Repeat(args[0].String(), int(args[1].Int()))
		return []reflect.Value{reflect.ValueOf(r)}
	})
	r := fn.Interface().(func(string, int) string)("abc", 2)
	if r != "abcabc" {
		panic("error")
	}
}
