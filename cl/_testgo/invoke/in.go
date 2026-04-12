// LITTEST
package main

type T struct {
	s string
}

// CHECK-LABEL: define i64 @"{{.*}}invoke.T.Invoke"(%"{{.*}}invoke.T" %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = alloca %"{{.*}}invoke.T", align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
// CHECK-NEXT:   store %"{{.*}}invoke.T" %0, ptr %1, align 8
// CHECK-NEXT:   %2 = getelementptr inbounds %"{{.*}}invoke.T", ptr %1, i32 0, i32 0
// CHECK-NEXT:   %3 = load %"{{.*}}String", ptr %2, align 8
// CHECK-NEXT:   call void @"{{.*}}PrintString"(%"{{.*}}String" { ptr @{{[0-9]+}}, i64 6 })
// CHECK-NEXT:   call void @"{{.*}}PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}PrintString"(%"{{.*}}String" %3)
// CHECK-NEXT:   call void @"{{.*}}PrintByte"(i8 10)
// CHECK-NEXT:   ret i64 0
func (t T) Invoke() int {
	println("invoke", t.s)
	return 0
}

// CHECK-LABEL: define i64 @"{{.*}}invoke.(*T).Invoke"(ptr %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = load %"{{.*}}invoke.T", ptr %0, align 8
// CHECK-NEXT:   %2 = call i64 @"{{.*}}invoke.T.Invoke"(%"{{.*}}invoke.T" %1)
// CHECK-NEXT:   ret i64 %2

// CHECK-LABEL: define void @"{{.*}}invoke.(*T).Method"(ptr %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   ret void
func (t *T) Method() {}

type T1 int

// CHECK-LABEL: define i64 @"{{.*}}invoke.T1.Invoke"(i64 %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   call void @"{{.*}}PrintString"(%"{{.*}}String" { ptr @{{[0-9]+}}, i64 7 })
// CHECK-NEXT:   call void @"{{.*}}PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}PrintInt"(i64 %0)
// CHECK-NEXT:   call void @"{{.*}}PrintByte"(i8 10)
// CHECK-NEXT:   ret i64 1
func (t T1) Invoke() int {
	println("invoke1", t)
	return 1
}

type T2 float64

// CHECK-LABEL: define i64 @"{{.*}}invoke.T2.Invoke"(double %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   call void @"{{.*}}PrintString"(%"{{.*}}String" { ptr @{{[0-9]+}}, i64 7 })
// CHECK-NEXT:   call void @"{{.*}}PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}PrintFloat"(double %0)
// CHECK-NEXT:   call void @"{{.*}}PrintByte"(i8 10)
// CHECK-NEXT:   ret i64 2
func (t T2) Invoke() int {
	println("invoke2", t)
	return 2
}

type T3 int8

// CHECK-LABEL: define i64 @"{{.*}}invoke.(*T3).Invoke"(ptr %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = load i8, ptr %0, align 1
// CHECK-NEXT:   call void @"{{.*}}PrintString"(%"{{.*}}String" { ptr @{{[0-9]+}}, i64 7 })
// CHECK-NEXT:   call void @"{{.*}}PrintByte"(i8 32)
// CHECK-NEXT:   %2 = sext i8 %1 to i64
// CHECK-NEXT:   call void @"{{.*}}PrintInt"(i64 %2)
// CHECK-NEXT:   call void @"{{.*}}PrintByte"(i8 10)
// CHECK-NEXT:   ret i64 3
func (t *T3) Invoke() int {
	println("invoke3", *t)
	return 3
}

type T4 [1]int

// CHECK-LABEL: define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke"([1 x i64] %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = alloca [1 x i64], align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
// CHECK-NEXT:   store [1 x i64] %0, ptr %1, align 4
// CHECK-NEXT:   %2 = getelementptr inbounds i64, ptr %1, i64 0
// CHECK-NEXT:   %3 = load i64, ptr %2, align 4
// CHECK-NEXT:   call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
// CHECK-NEXT:   call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
// CHECK-NEXT:   call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   ret i64 4
// CHECK-NEXT: }
func (t T4) Invoke() int {
	println("invoke4", t[0])
	return 4
}

type T5 struct {
	n int
}

// CHECK-LABEL: define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T5" %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
// CHECK-NEXT:   store %"github.com/goplus/llgo/cl/_testgo/invoke.T5" %0, ptr %1, align 4
// CHECK-NEXT:   %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %1, i32 0, i32 0
// CHECK-NEXT:   %3 = load i64, ptr %2, align 4
// CHECK-NEXT:   call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 })
// CHECK-NEXT:   call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
// CHECK-NEXT:   call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   ret i64 5
// CHECK-NEXT: }
func (t T5) Invoke() int {
	println("invoke5", t.n)
	return 5
}

type T6 func() int

// CHECK-LABEL: define i64 @"{{.*}}invoke.T6.Invoke"(%"{{.*}}invoke.T6" %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = extractvalue %"{{.*}}invoke.T6" %0, 1
// CHECK-NEXT:   %2 = extractvalue %"{{.*}}invoke.T6" %0, 0
// CHECK-NEXT:   %3 = call i64 %2(ptr %1)
// CHECK-NEXT:   call void @"{{.*}}PrintString"(%"{{.*}}String" { ptr @{{[0-9]+}}, i64 7 })
// CHECK-NEXT:   call void @"{{.*}}PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}PrintInt"(i64 %3)
// CHECK-NEXT:   call void @"{{.*}}PrintByte"(i8 10)
// CHECK-NEXT:   ret i64 6
func (t T6) Invoke() int {
	println("invoke6", t())
	return 6
}

type I interface {
	Invoke() int
}

func invoke(i I) {
	println(i.Invoke())
}

// CHECK-LABEL: define void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = call ptr @"{{.*}}IfacePtrData"(%"{{.*}}iface" %0)
// CHECK-NEXT:   %2 = extractvalue %"{{.*}}iface" %0, 0
// CHECK-NEXT:   %3 = getelementptr ptr, ptr %2, i64 3
// CHECK-NEXT:   %4 = load ptr, ptr %3, align 8
// CHECK-NEXT:   %5 = insertvalue { ptr, ptr } undef, ptr %4, 0
// CHECK-NEXT:   %6 = insertvalue { ptr, ptr } %5, ptr %1, 1
// CHECK-NEXT:   %7 = extractvalue { ptr, ptr } %6, 1
// CHECK-NEXT:   %8 = extractvalue { ptr, ptr } %6, 0
// CHECK-NEXT:   %9 = call i64 %8(ptr %7)
// CHECK-NEXT:   call void @"{{.*}}PrintInt"(i64 %9)
// CHECK-NEXT:   call void @"{{.*}}PrintByte"(i8 10)
// CHECK-NEXT:   ret void

// CHECK-LABEL: define void @"{{.*}}invoke.main"() {
func main() {
	var t = T{"hello"}
	var t1 = T1(100)
	var t2 = T2(100.1)
	var t3 = T3(127)
	var t4 = T4{200}
	var t5 = T5{300}
	var t6 = T6(func() int { return 400 })

	// CHECK: call ptr @"{{.*}}AllocU"(i64 16)
	// CHECK: store %"{{.*}}invoke.T" %{{[0-9]+}}, ptr %{{[0-9]+}}, align 8
	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"_llgo_{{.*}}invoke.T")
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(t)

	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"*_llgo_{{.*}}invoke.T")
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(&t)

	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"_llgo_{{.*}}invoke.T1")
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(t1)

	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"*_llgo_{{.*}}invoke.T1")
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(&t1)

	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"_llgo_{{.*}}invoke.T2")
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(t2)

	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"*_llgo_{{.*}}invoke.T2")
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(&t2)

	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"*_llgo_{{.*}}invoke.T3")
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(&t3)

	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"_llgo_{{.*}}invoke.T4")
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(t4)

	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"*_llgo_{{.*}}invoke.T4")
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(&t4)

	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"_llgo_{{.*}}invoke.T5")
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(t5)

	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"*_llgo_{{.*}}invoke.T5")
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(&t5)

	// CHECK: call ptr @"{{.*}}AllocU"(i64 16)
	// CHECK: store %"{{.*}}invoke.T6" %{{[0-9]+}}, ptr %{{[0-9]+}}, align 8
	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"_llgo_{{.*}}invoke.T6")
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(t6)

	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"*_llgo_{{.*}}invoke.T6")
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(&t6)

	var m M
	var i I = m

	// CHECK: call ptr @"{{.*}}IfaceType"(%"{{.*}}iface" zeroinitializer)
	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr %{{[0-9]+}})
	// CHECK: call void @"{{.*}}PrintIface"(%"{{.*}}iface" %{{[0-9]+}})
	// CHECK-NEXT: call void @"{{.*}}PrintByte"(i8 32)
	// CHECK-NEXT: call void @"{{.*}}PrintIface"(%"{{.*}}iface" zeroinitializer)
	// CHECK-NEXT: call void @"{{.*}}PrintByte"(i8 10)
	println(i, m)

	m = &t

	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr @"*_llgo_{{.*}}invoke.T")
	// CHECK: call ptr @"{{.*}}IfaceType"(%"{{.*}}iface" %{{[0-9]+}})
	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr %{{[0-9]+}})
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(m)

	var a any = T{"world"}

	// CHECK: call i1 @"{{.*}}Implements"(ptr @"_llgo_{{.*}}invoke.I", ptr %{{[0-9]+}})
	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr %{{[0-9]+}})
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	invoke(a.(I))

	// CHECK: call i1 @"{{.*}}Implements"(ptr @"{{.*}}iface{{.*}}", ptr %{{[0-9]+}})
	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}iface{{.*}}", ptr %{{[0-9]+}})
	// CHECK: call void @"{{.*}}invoke.invoke"(%"{{.*}}iface" %{{[0-9]+}})
	// CHECK: ret void
	invoke(a.(interface{}).(interface{ Invoke() int }))

	//panic
	//invoke(nil)
}

type M interface {
	Invoke() int
	Method()
}

// CHECK-LABEL: define i64 @"{{.*}}invoke.main$1"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   ret i64 400
