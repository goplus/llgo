// LITTEST
package main

import (
	"fmt"
	"reflect"
)

// CHECK-LABEL: define {{.*}} @"{{.*}}/reflectfn.demo"{{.*}}
// CHECK: PrintString
// CHECK: ret void
func demo() {
	println("demo")
}

// CHECK-LABEL: define {{.*}} @"{{.*}}/reflectfn.main"{{.*}}
// CHECK: fmt.Println
// CHECK: reflect.ValueOf
// CHECK: UnsafePointer
// CHECK: ret void
func main() {
	v := 100
	// CHECK-LABEL: define {{.*}} @"{{.*}}/reflectfn.main$1"{{.*}}
	// CHECK: PrintInt
	// CHECK: ret void
	fn := func() {
		println(v)
	}
	fdemo := demo
	fmt.Println(fn)
	fmt.Println(demo)
	fmt.Println(fdemo)
	fmt.Println(reflect.ValueOf(fn).UnsafePointer())
	fmt.Println(reflect.ValueOf(demo).UnsafePointer())
	fmt.Println(reflect.ValueOf(fdemo).UnsafePointer())
}
