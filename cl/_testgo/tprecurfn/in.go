// LITTEST
package main

type My[T any] struct {
	fn   func(n T)
	next *My[T]
}

// CHECK-LABEL: define void @"{{.*}}tprecurfn.main"() {
func main() {
	// CHECK: call ptr @"{{.*}}AllocZ"(i64 24)
	// CHECK: call ptr @"{{.*}}AllocZ"(i64 24)
	// CHECK: store { ptr, ptr } { ptr @"__llgo_stub.{{.*}}tprecurfn.main$1", ptr null }, ptr %3, align 8
	// CHECK: call void %9(ptr %8, i64 100)
	// CHECK: ret void
	m := &My[int]{next: &My[int]{fn: func(n int) { println(n) }}}
	m.next.fn(100)
}

// CHECK-LABEL: define void @"{{.*}}tprecurfn.main$1"(i64 %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   call void @"{{.*}}PrintInt"(i64 %0)
// CHECK-NEXT:   call void @"{{.*}}PrintByte"(i8 10)
// CHECK-NEXT:   ret void
