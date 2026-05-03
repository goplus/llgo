// LITTEST
package main

import _ "unsafe"

type T int

// CHECK-LABEL: define i64 @"{{.*}}.T.Add"(i64 %0, i64 %1){{.*}} {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %2 = add i64 %0, %1
// CHECK-NEXT:   ret i64 %2
// CHECK-NEXT: }
// CHECK-LABEL: define i64 @"{{.*}}.(*T).Add"(ptr %0, i64 %1){{.*}} {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %2 = load i64, ptr %0, align 8
// CHECK-NEXT:   %3 = call i64 @"{{.*}}.T.Add"(i64 %2, i64 %1)
// CHECK-NEXT:   ret i64 %3
// CHECK-NEXT: }
func (a T) Add(b T) T {
	return a + b
}

//go:linkname printf C.printf
func printf(format *int8, __llgo_va_list ...any)

var format = [...]int8{'H', 'e', 'l', 'l', 'o', ' ', '%', 'd', '\n', 0}

// CHECK-LABEL: define void @"{{.*}}.main"(){{.*}} {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call i64 @"{{.*}}.T.Add"(i64 1, i64 2)
// CHECK-NEXT:   call void (ptr, ...) @printf(ptr @"{{.*}}.format", i64 %0)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func main() {
	a := T(1)
	printf(&format[0], a.Add(2))
}
