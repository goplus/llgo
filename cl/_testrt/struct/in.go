// LITTEST
package main

import "C"
import _ "unsafe"

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/struct.Foo.Print"(%"{{.*}}/cl/_testrt/struct.Foo" %0){{.*}} {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = alloca %"{{.*}}/cl/_testrt/struct.Foo", align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
// CHECK-NEXT:   store %"{{.*}}/cl/_testrt/struct.Foo" %0, ptr %1, align 4
// CHECK-NEXT:   %2 = getelementptr inbounds %"{{.*}}/cl/_testrt/struct.Foo", ptr %1, i32 0, i32 1
// CHECK-NEXT:   %3 = load i1, ptr %2, align 1
// CHECK-NEXT:   br i1 %3, label %_llgo_1, label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %4 = getelementptr inbounds %"{{.*}}/cl/_testrt/struct.Foo", ptr %1, i32 0, i32 0
// CHECK-NEXT:   %5 = load i32, ptr %4, align 4
// CHECK-NEXT:   call void (ptr, ...) @printf(ptr @"{{.*}}/cl/_testrt/struct.format", i32 %5)
// CHECK-NEXT:   br label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/struct.(*Foo).Print"(ptr %0){{.*}} {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = load %"{{.*}}/cl/_testrt/struct.Foo", ptr %0, align 4
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/struct.Foo.Print"(%"{{.*}}/cl/_testrt/struct.Foo" %1)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func (p Foo) Print() {
	if p.ok {
		printf(&format[0], p.A)
	}
}

//go:linkname printf C.printf
func printf(format *int8, __llgo_va_list ...any)

// CHECK-LABEL: define ptr @"{{.*}}/cl/_testrt/struct._Cgo_ptr"(ptr %0){{.*}} {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   ret ptr %0
// CHECK-NEXT: }
type Foo struct {
	A  C.int
	ok bool
}

var format = [...]int8{'H', 'e', 'l', 'l', 'o', ' ', '%', 'd', '\n', 0}

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/struct.main"(){{.*}} {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = alloca %"{{.*}}/cl/_testrt/struct.Foo", align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
// CHECK-NEXT:   %1 = getelementptr inbounds %"{{.*}}/cl/_testrt/struct.Foo", ptr %0, i32 0, i32 0
// CHECK-NEXT:   %2 = getelementptr inbounds %"{{.*}}/cl/_testrt/struct.Foo", ptr %0, i32 0, i32 1
// CHECK-NEXT:   store i32 100, ptr %1, align 4
// CHECK-NEXT:   store i1 true, ptr %2, align 1
// CHECK-NEXT:   %3 = load %"{{.*}}/cl/_testrt/struct.Foo", ptr %0, align 4
// CHECK-NEXT:   call void @"{{.*}}/cl/_testrt/struct.Foo.Print"(%"{{.*}}/cl/_testrt/struct.Foo" %3)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func main() {
	foo := Foo{100, true}
	foo.Print()
}
