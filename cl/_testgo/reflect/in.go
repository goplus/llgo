// LITTEST
package main

import (
	"reflect"
	"unsafe"
)

// CHECK-LINE: @0 = private unnamed_addr constant [11 x i8] c"call.method", align 1
// CHECK-LINE: @7 = private unnamed_addr constant [7 x i8] c"closure", align 1
// CHECK-LINE: @8 = private unnamed_addr constant [5 x i8] c"error", align 1
// CHECK-LINE: @10 = private unnamed_addr constant [12 x i8] c"call.closure", align 1
// CHECK-LINE: @11 = private unnamed_addr constant [4 x i8] c"func", align 1
// CHECK-LINE: @12 = private unnamed_addr constant [9 x i8] c"call.func", align 1
// CHECK-LINE: @18 = private unnamed_addr constant [7 x i8] c"imethod", align 1
// CHECK-LINE: @19 = private unnamed_addr constant [6 x i8] c"method", align 1
// CHECK-LINE: @24 = private unnamed_addr constant [10 x i8] c"call.slice", align 1
// CHECK-LINE: @25 = private unnamed_addr constant [40 x i8] c"type assertion interface{} -> int failed", align 1
// CHECK-LINE: @39 = private unnamed_addr constant [5 x i8] c"hello", align 1
// CHECK-LINE: @40 = private unnamed_addr constant [5 x i8] c"world", align 1
// CHECK-LINE: @41 = private unnamed_addr constant [14 x i8] c"MapIndex error", align 1
// CHECK-LINE: @42 = private unnamed_addr constant [4 x i8] c"todo", align 1
// CHECK-LINE: @43 = private unnamed_addr constant [12 x i8] c"must invalid", align 1
// CHECK-LINE: @44 = private unnamed_addr constant [13 x i8] c"MapIter error", align 1

func main() {
	callSlice()
	callFunc()
	callClosure()
	callMethod()
	callIMethod()
	mapDemo1()
	mapDemo2()
}

func demo(n1, n2, n3, n4, n5, n6, n7, n8, n9 int, a ...interface{}) (int, int) {
	var sum int
	for _, v := range a {
		sum += v.(int)
	}
	return n1 + n2 + n3 + n4 + n5 + n6 + n7 + n8 + n9, sum
}

func callSlice() {
	v := reflect.ValueOf(demo)
	n := reflect.ValueOf(1)
	r := v.Call([]reflect.Value{n, n, n, n, n, n, n, n, n,
		reflect.ValueOf(1), reflect.ValueOf(2), reflect.ValueOf(3)})
	println("call.slice", r[0].Int(), r[1].Int())
	r = v.CallSlice([]reflect.Value{n, n, n, n, n, n, n, n, n,
		reflect.ValueOf([]interface{}{1, 2, 3})})
	println("call.slice", r[0].Int(), r[1].Int())
}

func callFunc() {
	var f any = func(n int) int {
		println("call.func")
		return n + 1
	}
	fn := reflect.ValueOf(f)
	println("func", fn.Kind(), fn.Type().String())
	r := fn.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r[0].Int())
	ifn, ok := fn.Interface().(func(int) int)
	if !ok {
		panic("error")
	}
	ifn(100)
}

func callClosure() {
	m := 100
	var f any = func(n int) int {
		println("call.closure")
		return m + n + 1
	}
	fn := reflect.ValueOf(f)
	println("closure", fn.Kind(), fn.Type().String())
	r := fn.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r[0].Int())
	ifn, ok := fn.Interface().(func(int) int)
	if !ok {
		panic("error")
	}
	ifn(100)
}

type T struct {
	n int
}

// CHECK-LABEL: define i64 @"{{.*}}/cl/_testgo/reflect.(*T).Add"(ptr %0, i64 %1) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @0, i64 11 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %2 = getelementptr inbounds %"{{.*}}/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
// CHECK-NEXT:   %3 = load i64, ptr %2, align 8
// CHECK-NEXT:   %4 = add i64 %3, %1
// CHECK-NEXT:   %5 = getelementptr inbounds %"{{.*}}/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
// CHECK-NEXT:   store i64 %4, ptr %5, align 8
// CHECK-NEXT:   %6 = getelementptr inbounds %"{{.*}}/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
// CHECK-NEXT:   %7 = load i64, ptr %6, align 8
// CHECK-NEXT:   ret i64 %7
// CHECK-NEXT: }

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/reflect.callClosure"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 8)
// CHECK-NEXT:   store i64 100, ptr %0, align 8
// CHECK-NEXT:   %1 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 8)
// CHECK-NEXT:   %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
// CHECK-NEXT:   store ptr %0, ptr %2, align 8
// CHECK-NEXT:   %3 = insertvalue { ptr, ptr } { ptr @"{{.*}}/cl/_testgo/reflect.callClosure$1", ptr undef }, ptr %1, 1
// CHECK-NEXT:   %4 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store { ptr, ptr } %3, ptr %4, align 8
// CHECK-NEXT:   %5 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr undef }, ptr %4, 1
// CHECK-NEXT:   %6 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" %5)
// CHECK-NEXT:   %7 = call i64 @reflect.Value.Kind(%reflect.Value %6)
// CHECK-NEXT:   %8 = call %"{{.*}}/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %6)
// CHECK-NEXT:   %9 = call ptr @"{{.*}}/runtime/internal/runtime.IfacePtrData"(%"{{.*}}/runtime/internal/runtime.iface" %8)
// CHECK-NEXT:   %10 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %8, 0
// CHECK-NEXT:   %11 = getelementptr ptr, ptr %10, i64 37
// CHECK-NEXT:   %12 = load ptr, ptr %11, align 8
// CHECK-NEXT:   %13 = insertvalue { ptr, ptr } undef, ptr %12, 0
// CHECK-NEXT:   %14 = insertvalue { ptr, ptr } %13, ptr %9, 1
// CHECK-NEXT:   %15 = extractvalue { ptr, ptr } %14, 1
// CHECK-NEXT:   %16 = extractvalue { ptr, ptr } %14, 0
// CHECK-NEXT:   %17 = call %"{{.*}}/runtime/internal/runtime.String" %16(ptr %15)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @7, i64 7 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %7)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %17)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %18 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 24)
// CHECK-NEXT:   %19 = getelementptr inbounds %reflect.Value, ptr %18, i64 0
// CHECK-NEXT:   %20 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) })
// CHECK-NEXT:   store %reflect.Value %20, ptr %19, align 8
// CHECK-NEXT:   %21 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %18, 0
// CHECK-NEXT:   %22 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %21, i64 1, 1
// CHECK-NEXT:   %23 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %22, i64 1, 2
// CHECK-NEXT:   %24 = call %"{{.*}}/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %6, %"{{.*}}/runtime/internal/runtime.Slice" %23)
// CHECK-NEXT:   %25 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %24, 0
// CHECK-NEXT:   %26 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %24, 1
// CHECK-NEXT:   %27 = icmp sge i64 0, %26
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %27)
// CHECK-NEXT:   %28 = getelementptr inbounds %reflect.Value, ptr %25, i64 0
// CHECK-NEXT:   %29 = load %reflect.Value, ptr %28, align 8
// CHECK-NEXT:   %30 = call i64 @reflect.Value.Int(%reflect.Value %29)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %30)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %31 = call %"{{.*}}/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %6)
// CHECK-NEXT:   %32 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %31, 0
// CHECK-NEXT:   %33 = call i1 @"{{.*}}/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr %32)
// CHECK-NEXT:   br i1 %33, label %_llgo_3, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %34 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %34, align 8
// CHECK-NEXT:   %35 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %34, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %35)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %36 = extractvalue { ptr, ptr } %44, 1
// CHECK-NEXT:   %37 = extractvalue { ptr, ptr } %44, 0
// CHECK-NEXT:   %38 = call i64 %37(ptr %36, i64 100)
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %39 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %31, 1
// CHECK-NEXT:   %40 = load { ptr, ptr }, ptr %39, align 8
// CHECK-NEXT:   %41 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %40, 0
// CHECK-NEXT:   %42 = insertvalue { { ptr, ptr }, i1 } %41, i1 true, 1
// CHECK-NEXT:   br label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_0
// CHECK-NEXT:   br label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
// CHECK-NEXT:   %43 = phi { { ptr, ptr }, i1 } [ %42, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
// CHECK-NEXT:   %44 = extractvalue { { ptr, ptr }, i1 } %43, 0
// CHECK-NEXT:   %45 = extractvalue { { ptr, ptr }, i1 } %43, 1
// CHECK-NEXT:   br i1 %45, label %_llgo_2, label %_llgo_1
// CHECK-NEXT: }

// CHECK-LABEL: define i64 @"{{.*}}/cl/_testgo/reflect.callClosure$1"(ptr %0, i64 %1) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @10, i64 12 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %2 = load { ptr }, ptr %0, align 8
// CHECK-NEXT:   %3 = extractvalue { ptr } %2, 0
// CHECK-NEXT:   %4 = load i64, ptr %3, align 8
// CHECK-NEXT:   %5 = add i64 %4, %1
// CHECK-NEXT:   %6 = add i64 %5, 1
// CHECK-NEXT:   ret i64 %6
// CHECK-NEXT: }

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/reflect.callFunc"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store { ptr, ptr } { ptr @"__llgo_stub.{{.*}}/cl/_testgo/reflect.callFunc$1", ptr null }, ptr %0, align 8
// CHECK-NEXT:   %1 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr undef }, ptr %0, 1
// CHECK-NEXT:   %2 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" %1)
// CHECK-NEXT:   %3 = call i64 @reflect.Value.Kind(%reflect.Value %2)
// CHECK-NEXT:   %4 = call %"{{.*}}/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %2)
// CHECK-NEXT:   %5 = call ptr @"{{.*}}/runtime/internal/runtime.IfacePtrData"(%"{{.*}}/runtime/internal/runtime.iface" %4)
// CHECK-NEXT:   %6 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %4, 0
// CHECK-NEXT:   %7 = getelementptr ptr, ptr %6, i64 37
// CHECK-NEXT:   %8 = load ptr, ptr %7, align 8
// CHECK-NEXT:   %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
// CHECK-NEXT:   %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
// CHECK-NEXT:   %11 = extractvalue { ptr, ptr } %10, 1
// CHECK-NEXT:   %12 = extractvalue { ptr, ptr } %10, 0
// CHECK-NEXT:   %13 = call %"{{.*}}/runtime/internal/runtime.String" %12(ptr %11)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @11, i64 4 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %3)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %13)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %14 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 24)
// CHECK-NEXT:   %15 = getelementptr inbounds %reflect.Value, ptr %14, i64 0
// CHECK-NEXT:   %16 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) })
// CHECK-NEXT:   store %reflect.Value %16, ptr %15, align 8
// CHECK-NEXT:   %17 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %14, 0
// CHECK-NEXT:   %18 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %17, i64 1, 1
// CHECK-NEXT:   %19 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %18, i64 1, 2
// CHECK-NEXT:   %20 = call %"{{.*}}/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %2, %"{{.*}}/runtime/internal/runtime.Slice" %19)
// CHECK-NEXT:   %21 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %20, 0
// CHECK-NEXT:   %22 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %20, 1
// CHECK-NEXT:   %23 = icmp sge i64 0, %22
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %23)
// CHECK-NEXT:   %24 = getelementptr inbounds %reflect.Value, ptr %21, i64 0
// CHECK-NEXT:   %25 = load %reflect.Value, ptr %24, align 8
// CHECK-NEXT:   %26 = call i64 @reflect.Value.Int(%reflect.Value %25)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %26)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %27 = call %"{{.*}}/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %2)
// CHECK-NEXT:   %28 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %27, 0
// CHECK-NEXT:   %29 = call i1 @"{{.*}}/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr %28)
// CHECK-NEXT:   br i1 %29, label %_llgo_3, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %30 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %30, align 8
// CHECK-NEXT:   %31 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %30, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %31)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %32 = extractvalue { ptr, ptr } %40, 1
// CHECK-NEXT:   %33 = extractvalue { ptr, ptr } %40, 0
// CHECK-NEXT:   %34 = call i64 %33(ptr %32, i64 100)
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %35 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %27, 1
// CHECK-NEXT:   %36 = load { ptr, ptr }, ptr %35, align 8
// CHECK-NEXT:   %37 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %36, 0
// CHECK-NEXT:   %38 = insertvalue { { ptr, ptr }, i1 } %37, i1 true, 1
// CHECK-NEXT:   br label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_0
// CHECK-NEXT:   br label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
// CHECK-NEXT:   %39 = phi { { ptr, ptr }, i1 } [ %38, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
// CHECK-NEXT:   %40 = extractvalue { { ptr, ptr }, i1 } %39, 0
// CHECK-NEXT:   %41 = extractvalue { { ptr, ptr }, i1 } %39, 1
// CHECK-NEXT:   br i1 %41, label %_llgo_2, label %_llgo_1
// CHECK-NEXT: }

// CHECK-LABEL: define i64 @"{{.*}}/cl/_testgo/reflect.callFunc$1"(i64 %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @12, i64 9 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %1 = add i64 %0, 1
// CHECK-NEXT:   ret i64 %1
// CHECK-NEXT: }

func (t *T) Add(n int) int {
	println("call.method")
	t.n += n
	return t.n
}

type I interface {
	Add(n int) int
}

type abi struct {
	typ  unsafe.Pointer
	data unsafe.Pointer
}

func callMethod() {
	t := &T{1}
	v := reflect.ValueOf(t)
	fn := v.Method(0)
	println("method", fn.Kind(), fn.Type().String())
	r := fn.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r[0].Int())
	ifn, ok := fn.Interface().(func(int) int)
	if !ok {
		panic("error")
	}
	ifn(1)
	v2 := reflect.ValueOf(fn.Interface())
	r2 := v2.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r2[0].Int())
}

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/reflect.callIMethod"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 8)
// CHECK-NEXT:   %1 = getelementptr inbounds %"{{.*}}/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
// CHECK-NEXT:   store i64 1, ptr %1, align 8
// CHECK-NEXT:   %2 = call ptr @"{{.*}}/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", ptr @"*_llgo_{{.*}}/cl/_testgo/reflect.T")
// CHECK-NEXT:   %3 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" undef, ptr %2, 0
// CHECK-NEXT:   %4 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" %3, ptr %0, 1
// CHECK-NEXT:   %5 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" %4)
// CHECK-NEXT:   %6 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %4, 1
// CHECK-NEXT:   %7 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" undef, ptr %5, 0
// CHECK-NEXT:   %8 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" %7, ptr %6, 1
// CHECK-NEXT:   %9 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" %8)
// CHECK-NEXT:   %10 = call %reflect.Value @reflect.Value.Method(%reflect.Value %9, i64 0)
// CHECK-NEXT:   %11 = call i64 @reflect.Value.Kind(%reflect.Value %10)
// CHECK-NEXT:   %12 = call %"{{.*}}/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %10)
// CHECK-NEXT:   %13 = call ptr @"{{.*}}/runtime/internal/runtime.IfacePtrData"(%"{{.*}}/runtime/internal/runtime.iface" %12)
// CHECK-NEXT:   %14 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %12, 0
// CHECK-NEXT:   %15 = getelementptr ptr, ptr %14, i64 37
// CHECK-NEXT:   %16 = load ptr, ptr %15, align 8
// CHECK-NEXT:   %17 = insertvalue { ptr, ptr } undef, ptr %16, 0
// CHECK-NEXT:   %18 = insertvalue { ptr, ptr } %17, ptr %13, 1
// CHECK-NEXT:   %19 = extractvalue { ptr, ptr } %18, 1
// CHECK-NEXT:   %20 = extractvalue { ptr, ptr } %18, 0
// CHECK-NEXT:   %21 = call %"{{.*}}/runtime/internal/runtime.String" %20(ptr %19)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @18, i64 7 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %11)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %21)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %22 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 24)
// CHECK-NEXT:   %23 = getelementptr inbounds %reflect.Value, ptr %22, i64 0
// CHECK-NEXT:   %24 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) })
// CHECK-NEXT:   store %reflect.Value %24, ptr %23, align 8
// CHECK-NEXT:   %25 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %22, 0
// CHECK-NEXT:   %26 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %25, i64 1, 1
// CHECK-NEXT:   %27 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %26, i64 1, 2
// CHECK-NEXT:   %28 = call %"{{.*}}/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %10, %"{{.*}}/runtime/internal/runtime.Slice" %27)
// CHECK-NEXT:   %29 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %28, 0
// CHECK-NEXT:   %30 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %28, 1
// CHECK-NEXT:   %31 = icmp sge i64 0, %30
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %31)
// CHECK-NEXT:   %32 = getelementptr inbounds %reflect.Value, ptr %29, i64 0
// CHECK-NEXT:   %33 = load %reflect.Value, ptr %32, align 8
// CHECK-NEXT:   %34 = call i64 @reflect.Value.Int(%reflect.Value %33)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %34)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %35 = call %"{{.*}}/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %10)
// CHECK-NEXT:   %36 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %35, 0
// CHECK-NEXT:   %37 = call i1 @"{{.*}}/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr %36)
// CHECK-NEXT:   br i1 %37, label %_llgo_3, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %38 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %38, align 8
// CHECK-NEXT:   %39 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %38, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %39)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %40 = extractvalue { ptr, ptr } %63, 1
// CHECK-NEXT:   %41 = extractvalue { ptr, ptr } %63, 0
// CHECK-NEXT:   %42 = call i64 %41(ptr %40, i64 1)
// CHECK-NEXT:   %43 = call %"{{.*}}/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %10)
// CHECK-NEXT:   %44 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" %43)
// CHECK-NEXT:   %45 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 24)
// CHECK-NEXT:   %46 = getelementptr inbounds %reflect.Value, ptr %45, i64 0
// CHECK-NEXT:   %47 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) })
// CHECK-NEXT:   store %reflect.Value %47, ptr %46, align 8
// CHECK-NEXT:   %48 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %45, 0
// CHECK-NEXT:   %49 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %48, i64 1, 1
// CHECK-NEXT:   %50 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %49, i64 1, 2
// CHECK-NEXT:   %51 = call %"{{.*}}/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %44, %"{{.*}}/runtime/internal/runtime.Slice" %50)
// CHECK-NEXT:   %52 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %51, 0
// CHECK-NEXT:   %53 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %51, 1
// CHECK-NEXT:   %54 = icmp sge i64 0, %53
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %54)
// CHECK-NEXT:   %55 = getelementptr inbounds %reflect.Value, ptr %52, i64 0
// CHECK-NEXT:   %56 = load %reflect.Value, ptr %55, align 8
// CHECK-NEXT:   %57 = call i64 @reflect.Value.Int(%reflect.Value %56)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %57)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %58 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %35, 1
// CHECK-NEXT:   %59 = load { ptr, ptr }, ptr %58, align 8
// CHECK-NEXT:   %60 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %59, 0
// CHECK-NEXT:   %61 = insertvalue { { ptr, ptr }, i1 } %60, i1 true, 1
// CHECK-NEXT:   br label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_0
// CHECK-NEXT:   br label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
// CHECK-NEXT:   %62 = phi { { ptr, ptr }, i1 } [ %61, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
// CHECK-NEXT:   %63 = extractvalue { { ptr, ptr }, i1 } %62, 0
// CHECK-NEXT:   %64 = extractvalue { { ptr, ptr }, i1 } %62, 1
// CHECK-NEXT:   br i1 %64, label %_llgo_2, label %_llgo_1
// CHECK-NEXT: }

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/reflect.callMethod"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 8)
// CHECK-NEXT:   %1 = getelementptr inbounds %"{{.*}}/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
// CHECK-NEXT:   store i64 1, ptr %1, align 8
// CHECK-NEXT:   %2 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"*_llgo_{{.*}}/cl/_testgo/reflect.T", ptr undef }, ptr %0, 1
// CHECK-NEXT:   %3 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" %2)
// CHECK-NEXT:   %4 = call %reflect.Value @reflect.Value.Method(%reflect.Value %3, i64 0)
// CHECK-NEXT:   %5 = call i64 @reflect.Value.Kind(%reflect.Value %4)
// CHECK-NEXT:   %6 = call %"{{.*}}/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %4)
// CHECK-NEXT:   %7 = call ptr @"{{.*}}/runtime/internal/runtime.IfacePtrData"(%"{{.*}}/runtime/internal/runtime.iface" %6)
// CHECK-NEXT:   %8 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %6, 0
// CHECK-NEXT:   %9 = getelementptr ptr, ptr %8, i64 37
// CHECK-NEXT:   %10 = load ptr, ptr %9, align 8
// CHECK-NEXT:   %11 = insertvalue { ptr, ptr } undef, ptr %10, 0
// CHECK-NEXT:   %12 = insertvalue { ptr, ptr } %11, ptr %7, 1
// CHECK-NEXT:   %13 = extractvalue { ptr, ptr } %12, 1
// CHECK-NEXT:   %14 = extractvalue { ptr, ptr } %12, 0
// CHECK-NEXT:   %15 = call %"{{.*}}/runtime/internal/runtime.String" %14(ptr %13)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @19, i64 6 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %5)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %15)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %16 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 24)
// CHECK-NEXT:   %17 = getelementptr inbounds %reflect.Value, ptr %16, i64 0
// CHECK-NEXT:   %18 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) })
// CHECK-NEXT:   store %reflect.Value %18, ptr %17, align 8
// CHECK-NEXT:   %19 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %16, 0
// CHECK-NEXT:   %20 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %19, i64 1, 1
// CHECK-NEXT:   %21 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %20, i64 1, 2
// CHECK-NEXT:   %22 = call %"{{.*}}/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %4, %"{{.*}}/runtime/internal/runtime.Slice" %21)
// CHECK-NEXT:   %23 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %22, 0
// CHECK-NEXT:   %24 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %22, 1
// CHECK-NEXT:   %25 = icmp sge i64 0, %24
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %25)
// CHECK-NEXT:   %26 = getelementptr inbounds %reflect.Value, ptr %23, i64 0
// CHECK-NEXT:   %27 = load %reflect.Value, ptr %26, align 8
// CHECK-NEXT:   %28 = call i64 @reflect.Value.Int(%reflect.Value %27)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %28)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %29 = call %"{{.*}}/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %4)
// CHECK-NEXT:   %30 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %29, 0
// CHECK-NEXT:   %31 = call i1 @"{{.*}}/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", ptr %30)
// CHECK-NEXT:   br i1 %31, label %_llgo_3, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %32 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %32, align 8
// CHECK-NEXT:   %33 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %32, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %33)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %34 = extractvalue { ptr, ptr } %57, 1
// CHECK-NEXT:   %35 = extractvalue { ptr, ptr } %57, 0
// CHECK-NEXT:   %36 = call i64 %35(ptr %34, i64 1)
// CHECK-NEXT:   %37 = call %"{{.*}}/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %4)
// CHECK-NEXT:   %38 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" %37)
// CHECK-NEXT:   %39 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 24)
// CHECK-NEXT:   %40 = getelementptr inbounds %reflect.Value, ptr %39, i64 0
// CHECK-NEXT:   %41 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) })
// CHECK-NEXT:   store %reflect.Value %41, ptr %40, align 8
// CHECK-NEXT:   %42 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %39, 0
// CHECK-NEXT:   %43 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %42, i64 1, 1
// CHECK-NEXT:   %44 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %43, i64 1, 2
// CHECK-NEXT:   %45 = call %"{{.*}}/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %38, %"{{.*}}/runtime/internal/runtime.Slice" %44)
// CHECK-NEXT:   %46 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %45, 0
// CHECK-NEXT:   %47 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %45, 1
// CHECK-NEXT:   %48 = icmp sge i64 0, %47
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %48)
// CHECK-NEXT:   %49 = getelementptr inbounds %reflect.Value, ptr %46, i64 0
// CHECK-NEXT:   %50 = load %reflect.Value, ptr %49, align 8
// CHECK-NEXT:   %51 = call i64 @reflect.Value.Int(%reflect.Value %50)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %51)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %52 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %29, 1
// CHECK-NEXT:   %53 = load { ptr, ptr }, ptr %52, align 8
// CHECK-NEXT:   %54 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %53, 0
// CHECK-NEXT:   %55 = insertvalue { { ptr, ptr }, i1 } %54, i1 true, 1
// CHECK-NEXT:   br label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_0
// CHECK-NEXT:   br label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
// CHECK-NEXT:   %56 = phi { { ptr, ptr }, i1 } [ %55, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
// CHECK-NEXT:   %57 = extractvalue { { ptr, ptr }, i1 } %56, 0
// CHECK-NEXT:   %58 = extractvalue { { ptr, ptr }, i1 } %56, 1
// CHECK-NEXT:   br i1 %58, label %_llgo_2, label %_llgo_1
// CHECK-NEXT: }

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/reflect.callSlice"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store { ptr, ptr } { ptr @"__llgo_stub.{{.*}}/cl/_testgo/reflect.demo", ptr null }, ptr %0, align 8
// CHECK-NEXT:   %1 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"_llgo_closure$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk", ptr undef }, ptr %0, 1
// CHECK-NEXT:   %2 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" %1)
// CHECK-NEXT:   %3 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) })
// CHECK-NEXT:   %4 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 288)
// CHECK-NEXT:   %5 = getelementptr inbounds %reflect.Value, ptr %4, i64 0
// CHECK-NEXT:   store %reflect.Value %3, ptr %5, align 8
// CHECK-NEXT:   %6 = getelementptr inbounds %reflect.Value, ptr %4, i64 1
// CHECK-NEXT:   store %reflect.Value %3, ptr %6, align 8
// CHECK-NEXT:   %7 = getelementptr inbounds %reflect.Value, ptr %4, i64 2
// CHECK-NEXT:   store %reflect.Value %3, ptr %7, align 8
// CHECK-NEXT:   %8 = getelementptr inbounds %reflect.Value, ptr %4, i64 3
// CHECK-NEXT:   store %reflect.Value %3, ptr %8, align 8
// CHECK-NEXT:   %9 = getelementptr inbounds %reflect.Value, ptr %4, i64 4
// CHECK-NEXT:   store %reflect.Value %3, ptr %9, align 8
// CHECK-NEXT:   %10 = getelementptr inbounds %reflect.Value, ptr %4, i64 5
// CHECK-NEXT:   store %reflect.Value %3, ptr %10, align 8
// CHECK-NEXT:   %11 = getelementptr inbounds %reflect.Value, ptr %4, i64 6
// CHECK-NEXT:   store %reflect.Value %3, ptr %11, align 8
// CHECK-NEXT:   %12 = getelementptr inbounds %reflect.Value, ptr %4, i64 7
// CHECK-NEXT:   store %reflect.Value %3, ptr %12, align 8
// CHECK-NEXT:   %13 = getelementptr inbounds %reflect.Value, ptr %4, i64 8
// CHECK-NEXT:   store %reflect.Value %3, ptr %13, align 8
// CHECK-NEXT:   %14 = getelementptr inbounds %reflect.Value, ptr %4, i64 9
// CHECK-NEXT:   %15 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) })
// CHECK-NEXT:   store %reflect.Value %15, ptr %14, align 8
// CHECK-NEXT:   %16 = getelementptr inbounds %reflect.Value, ptr %4, i64 10
// CHECK-NEXT:   %17 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
// CHECK-NEXT:   store %reflect.Value %17, ptr %16, align 8
// CHECK-NEXT:   %18 = getelementptr inbounds %reflect.Value, ptr %4, i64 11
// CHECK-NEXT:   %19 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 3 to ptr) })
// CHECK-NEXT:   store %reflect.Value %19, ptr %18, align 8
// CHECK-NEXT:   %20 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %4, 0
// CHECK-NEXT:   %21 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %20, i64 12, 1
// CHECK-NEXT:   %22 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %21, i64 12, 2
// CHECK-NEXT:   %23 = call %"{{.*}}/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %2, %"{{.*}}/runtime/internal/runtime.Slice" %22)
// CHECK-NEXT:   %24 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %23, 0
// CHECK-NEXT:   %25 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %23, 1
// CHECK-NEXT:   %26 = icmp sge i64 0, %25
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %26)
// CHECK-NEXT:   %27 = getelementptr inbounds %reflect.Value, ptr %24, i64 0
// CHECK-NEXT:   %28 = load %reflect.Value, ptr %27, align 8
// CHECK-NEXT:   %29 = call i64 @reflect.Value.Int(%reflect.Value %28)
// CHECK-NEXT:   %30 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %23, 0
// CHECK-NEXT:   %31 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %23, 1
// CHECK-NEXT:   %32 = icmp sge i64 1, %31
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %32)
// CHECK-NEXT:   %33 = getelementptr inbounds %reflect.Value, ptr %30, i64 1
// CHECK-NEXT:   %34 = load %reflect.Value, ptr %33, align 8
// CHECK-NEXT:   %35 = call i64 @reflect.Value.Int(%reflect.Value %34)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @24, i64 10 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %29)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %35)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %36 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 240)
// CHECK-NEXT:   %37 = getelementptr inbounds %reflect.Value, ptr %36, i64 0
// CHECK-NEXT:   store %reflect.Value %3, ptr %37, align 8
// CHECK-NEXT:   %38 = getelementptr inbounds %reflect.Value, ptr %36, i64 1
// CHECK-NEXT:   store %reflect.Value %3, ptr %38, align 8
// CHECK-NEXT:   %39 = getelementptr inbounds %reflect.Value, ptr %36, i64 2
// CHECK-NEXT:   store %reflect.Value %3, ptr %39, align 8
// CHECK-NEXT:   %40 = getelementptr inbounds %reflect.Value, ptr %36, i64 3
// CHECK-NEXT:   store %reflect.Value %3, ptr %40, align 8
// CHECK-NEXT:   %41 = getelementptr inbounds %reflect.Value, ptr %36, i64 4
// CHECK-NEXT:   store %reflect.Value %3, ptr %41, align 8
// CHECK-NEXT:   %42 = getelementptr inbounds %reflect.Value, ptr %36, i64 5
// CHECK-NEXT:   store %reflect.Value %3, ptr %42, align 8
// CHECK-NEXT:   %43 = getelementptr inbounds %reflect.Value, ptr %36, i64 6
// CHECK-NEXT:   store %reflect.Value %3, ptr %43, align 8
// CHECK-NEXT:   %44 = getelementptr inbounds %reflect.Value, ptr %36, i64 7
// CHECK-NEXT:   store %reflect.Value %3, ptr %44, align 8
// CHECK-NEXT:   %45 = getelementptr inbounds %reflect.Value, ptr %36, i64 8
// CHECK-NEXT:   store %reflect.Value %3, ptr %45, align 8
// CHECK-NEXT:   %46 = getelementptr inbounds %reflect.Value, ptr %36, i64 9
// CHECK-NEXT:   %47 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 48)
// CHECK-NEXT:   %48 = getelementptr inbounds %"{{.*}}/runtime/internal/runtime.eface", ptr %47, i64 0
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) }, ptr %48, align 8
// CHECK-NEXT:   %49 = getelementptr inbounds %"{{.*}}/runtime/internal/runtime.eface", ptr %47, i64 1
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) }, ptr %49, align 8
// CHECK-NEXT:   %50 = getelementptr inbounds %"{{.*}}/runtime/internal/runtime.eface", ptr %47, i64 2
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 3 to ptr) }, ptr %50, align 8
// CHECK-NEXT:   %51 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %47, 0
// CHECK-NEXT:   %52 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %51, i64 3, 1
// CHECK-NEXT:   %53 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %52, i64 3, 2
// CHECK-NEXT:   %54 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 24)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.Slice" %53, ptr %54, align 8
// CHECK-NEXT:   %55 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"[]_llgo_any", ptr undef }, ptr %54, 1
// CHECK-NEXT:   %56 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" %55)
// CHECK-NEXT:   store %reflect.Value %56, ptr %46, align 8
// CHECK-NEXT:   %57 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %36, 0
// CHECK-NEXT:   %58 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %57, i64 10, 1
// CHECK-NEXT:   %59 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %58, i64 10, 2
// CHECK-NEXT:   %60 = call %"{{.*}}/runtime/internal/runtime.Slice" @reflect.Value.CallSlice(%reflect.Value %2, %"{{.*}}/runtime/internal/runtime.Slice" %59)
// CHECK-NEXT:   %61 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %60, 0
// CHECK-NEXT:   %62 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %60, 1
// CHECK-NEXT:   %63 = icmp sge i64 0, %62
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %63)
// CHECK-NEXT:   %64 = getelementptr inbounds %reflect.Value, ptr %61, i64 0
// CHECK-NEXT:   %65 = load %reflect.Value, ptr %64, align 8
// CHECK-NEXT:   %66 = call i64 @reflect.Value.Int(%reflect.Value %65)
// CHECK-NEXT:   %67 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %60, 0
// CHECK-NEXT:   %68 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %60, 1
// CHECK-NEXT:   %69 = icmp sge i64 1, %68
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %69)
// CHECK-NEXT:   %70 = getelementptr inbounds %reflect.Value, ptr %67, i64 1
// CHECK-NEXT:   %71 = load %reflect.Value, ptr %70, align 8
// CHECK-NEXT:   %72 = call i64 @reflect.Value.Int(%reflect.Value %71)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @24, i64 10 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %66)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %72)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

// CHECK-LABEL: define { i64, i64 } @"{{.*}}/cl/_testgo/reflect.demo"(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, %"{{.*}}/runtime/internal/runtime.Slice" %9) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %10 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %9, 1
// CHECK-NEXT:   br label %_llgo_1
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_4, %_llgo_0
// CHECK-NEXT:   %11 = phi i64 [ 0, %_llgo_0 ], [ %36, %_llgo_4 ]
// CHECK-NEXT:   %12 = phi i64 [ -1, %_llgo_0 ], [ %13, %_llgo_4 ]
// CHECK-NEXT:   %13 = add i64 %12, 1
// CHECK-NEXT:   %14 = icmp slt i64 %13, %10
// CHECK-NEXT:   br i1 %14, label %_llgo_2, label %_llgo_3
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_1
// CHECK-NEXT:   %15 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %9, 0
// CHECK-NEXT:   %16 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %9, 1
// CHECK-NEXT:   %17 = icmp slt i64 %13, 0
// CHECK-NEXT:   %18 = icmp sge i64 %13, %16
// CHECK-NEXT:   %19 = or i1 %18, %17
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %19)
// CHECK-NEXT:   %20 = getelementptr inbounds %"{{.*}}/runtime/internal/runtime.eface", ptr %15, i64 %13
// CHECK-NEXT:   %21 = load %"{{.*}}/runtime/internal/runtime.eface", ptr %20, align 8
// CHECK-NEXT:   %22 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %21, 0
// CHECK-NEXT:   %23 = icmp eq ptr %22, @_llgo_int
// CHECK-NEXT:   br i1 %23, label %_llgo_4, label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_1
// CHECK-NEXT:   %24 = add i64 %0, %1
// CHECK-NEXT:   %25 = add i64 %24, %2
// CHECK-NEXT:   %26 = add i64 %25, %3
// CHECK-NEXT:   %27 = add i64 %26, %4
// CHECK-NEXT:   %28 = add i64 %27, %5
// CHECK-NEXT:   %29 = add i64 %28, %6
// CHECK-NEXT:   %30 = add i64 %29, %7
// CHECK-NEXT:   %31 = add i64 %30, %8
// CHECK-NEXT:   %32 = insertvalue { i64, i64 } undef, i64 %31, 0
// CHECK-NEXT:   %33 = insertvalue { i64, i64 } %32, i64 %11, 1
// CHECK-NEXT:   ret { i64, i64 } %33
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_2
// CHECK-NEXT:   %34 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %21, 1
// CHECK-NEXT:   %35 = ptrtoint ptr %34 to i64
// CHECK-NEXT:   %36 = add i64 %11, %35
// CHECK-NEXT:   br label %_llgo_1
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_2
// CHECK-NEXT:   %37 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @25, i64 40 }, ptr %37, align 8
// CHECK-NEXT:   %38 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %37, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %38)
// CHECK-NEXT:   unreachable
// CHECK-NEXT: }

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/reflect.init"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = load i1, ptr @"{{.*}}/cl/_testgo/reflect.init$guard", align 1
// CHECK-NEXT:   br i1 %0, label %_llgo_2, label %_llgo_1
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_0
// CHECK-NEXT:   store i1 true, ptr @"{{.*}}/cl/_testgo/reflect.init$guard", align 1
// CHECK-NEXT:   call void @reflect.init()
// CHECK-NEXT:   br label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/reflect.main"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   call void @"{{.*}}/cl/_testgo/reflect.callSlice"()
// CHECK-NEXT:   call void @"{{.*}}/cl/_testgo/reflect.callFunc"()
// CHECK-NEXT:   call void @"{{.*}}/cl/_testgo/reflect.callClosure"()
// CHECK-NEXT:   call void @"{{.*}}/cl/_testgo/reflect.callMethod"()
// CHECK-NEXT:   call void @"{{.*}}/cl/_testgo/reflect.callIMethod"()
// CHECK-NEXT:   call void @"{{.*}}/cl/_testgo/reflect.mapDemo1"()
// CHECK-NEXT:   call void @"{{.*}}/cl/_testgo/reflect.mapDemo2"()
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

func callIMethod() {
	var i I = &T{1}
	v := reflect.ValueOf(i)
	fn := v.Method(0)
	println("imethod", fn.Kind(), fn.Type().String())
	r := fn.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r[0].Int())
	ifn, ok := fn.Interface().(func(int) int)
	if !ok {
		panic("error")
	}
	ifn(1)
	v2 := reflect.ValueOf(fn.Interface())
	r2 := v2.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r2[0].Int())
}

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/reflect.mapDemo1"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_string", i64 2)
// CHECK-NEXT:   %1 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 8)
// CHECK-NEXT:   store i64 1, ptr %1, align 8
// CHECK-NEXT:   %2 = call ptr @"{{.*}}/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %0, ptr %1)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @39, i64 5 }, ptr %2, align 8
// CHECK-NEXT:   %3 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 8)
// CHECK-NEXT:   store i64 2, ptr %3, align 8
// CHECK-NEXT:   %4 = call ptr @"{{.*}}/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_string", ptr %0, ptr %3)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @40, i64 5 }, ptr %4, align 8
// CHECK-NEXT:   %5 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"map[_llgo_int]_llgo_string", ptr undef }, ptr %0, 1
// CHECK-NEXT:   %6 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" %5)
// CHECK-NEXT:   %7 = call i64 @reflect.Value.Len(%reflect.Value %6)
// CHECK-NEXT:   %8 = icmp ne i64 %7, 2
// CHECK-NEXT:   br i1 %8, label %_llgo_1, label %_llgo_3
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
// CHECK-NEXT:   %9 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %9, align 8
// CHECK-NEXT:   %10 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %9, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %10)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_3
// CHECK-NEXT:   %11 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
// CHECK-NEXT:   %12 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %6, %reflect.Value %11)
// CHECK-NEXT:   %13 = call %"{{.*}}/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %12)
// CHECK-NEXT:   %14 = call i1 @"{{.*}}/runtime/internal/runtime.StringEqual"(%"{{.*}}/runtime/internal/runtime.String" %13, %"{{.*}}/runtime/internal/runtime.String" { ptr @40, i64 5 })
// CHECK-NEXT:   %15 = xor i1 %14, true
// CHECK-NEXT:   br i1 %15, label %_llgo_4, label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %16 = call %"{{.*}}/runtime/internal/runtime.Slice" @reflect.Value.MapKeys(%reflect.Value %6)
// CHECK-NEXT:   %17 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %16, 1
// CHECK-NEXT:   %18 = icmp ne i64 %17, 2
// CHECK-NEXT:   br i1 %18, label %_llgo_1, label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_2
// CHECK-NEXT:   %19 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @41, i64 14 }, ptr %19, align 8
// CHECK-NEXT:   %20 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %19, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %20)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_2
// CHECK-NEXT:   %21 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
// CHECK-NEXT:   %22 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr %22, align 8
// CHECK-NEXT:   %23 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %22, 1
// CHECK-NEXT:   %24 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" %23)
// CHECK-NEXT:   call void @reflect.Value.SetMapIndex(%reflect.Value %6, %reflect.Value %21, %reflect.Value %24)
// CHECK-NEXT:   %25 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
// CHECK-NEXT:   %26 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %6, %reflect.Value %25)
// CHECK-NEXT:   %27 = call %"{{.*}}/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %26)
// CHECK-NEXT:   %28 = call i1 @"{{.*}}/runtime/internal/runtime.StringEqual"(%"{{.*}}/runtime/internal/runtime.String" %27, %"{{.*}}/runtime/internal/runtime.String" { ptr @42, i64 4 })
// CHECK-NEXT:   %29 = xor i1 %28, true
// CHECK-NEXT:   br i1 %29, label %_llgo_6, label %_llgo_7
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_6:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %30 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @41, i64 14 }, ptr %30, align 8
// CHECK-NEXT:   %31 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %30, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %31)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_7:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %32 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null })
// CHECK-NEXT:   %33 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %6, %reflect.Value %32)
// CHECK-NEXT:   %34 = call i1 @reflect.Value.IsValid(%reflect.Value %33)
// CHECK-NEXT:   br i1 %34, label %_llgo_8, label %_llgo_9
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_8:                                          ; preds = %_llgo_7
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @43, i64 12 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   br label %_llgo_9
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
// CHECK-NEXT:   %35 = call %"{{.*}}/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %6)
// CHECK-NEXT:   %36 = call ptr @"{{.*}}/runtime/internal/runtime.IfacePtrData"(%"{{.*}}/runtime/internal/runtime.iface" %35)
// CHECK-NEXT:   %37 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %35, 0
// CHECK-NEXT:   %38 = getelementptr ptr, ptr %37, i64 20
// CHECK-NEXT:   %39 = load ptr, ptr %38, align 8
// CHECK-NEXT:   %40 = insertvalue { ptr, ptr } undef, ptr %39, 0
// CHECK-NEXT:   %41 = insertvalue { ptr, ptr } %40, ptr %36, 1
// CHECK-NEXT:   %42 = extractvalue { ptr, ptr } %41, 1
// CHECK-NEXT:   %43 = extractvalue { ptr, ptr } %41, 0
// CHECK-NEXT:   %44 = call %"{{.*}}/runtime/internal/runtime.iface" %43(ptr %42)
// CHECK-NEXT:   %45 = call %reflect.Value @reflect.New(%"{{.*}}/runtime/internal/runtime.iface" %44)
// CHECK-NEXT:   %46 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %45)
// CHECK-NEXT:   %47 = call %"{{.*}}/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %6)
// CHECK-NEXT:   %48 = call ptr @"{{.*}}/runtime/internal/runtime.IfacePtrData"(%"{{.*}}/runtime/internal/runtime.iface" %47)
// CHECK-NEXT:   %49 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %47, 0
// CHECK-NEXT:   %50 = getelementptr ptr, ptr %49, i64 11
// CHECK-NEXT:   %51 = load ptr, ptr %50, align 8
// CHECK-NEXT:   %52 = insertvalue { ptr, ptr } undef, ptr %51, 0
// CHECK-NEXT:   %53 = insertvalue { ptr, ptr } %52, ptr %48, 1
// CHECK-NEXT:   %54 = extractvalue { ptr, ptr } %53, 1
// CHECK-NEXT:   %55 = extractvalue { ptr, ptr } %53, 0
// CHECK-NEXT:   %56 = call %"{{.*}}/runtime/internal/runtime.iface" %55(ptr %54)
// CHECK-NEXT:   %57 = call %reflect.Value @reflect.New(%"{{.*}}/runtime/internal/runtime.iface" %56)
// CHECK-NEXT:   %58 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %57)
// CHECK-NEXT:   %59 = call ptr @reflect.Value.MapRange(%reflect.Value %6)
// CHECK-NEXT:   br label %_llgo_12
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_10:                                         ; preds = %_llgo_12
// CHECK-NEXT:   call void @reflect.Value.SetIterKey(%reflect.Value %46, ptr %59)
// CHECK-NEXT:   call void @reflect.Value.SetIterValue(%reflect.Value %58, ptr %59)
// CHECK-NEXT:   %60 = call i64 @reflect.Value.Int(%reflect.Value %46)
// CHECK-NEXT:   %61 = call %reflect.Value @"reflect.(*MapIter).Key"(ptr %59)
// CHECK-NEXT:   %62 = call i64 @reflect.Value.Int(%reflect.Value %61)
// CHECK-NEXT:   %63 = icmp ne i64 %60, %62
// CHECK-NEXT:   br i1 %63, label %_llgo_13, label %_llgo_14
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_11:                                         ; preds = %_llgo_12
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_12:                                         ; preds = %_llgo_14, %_llgo_9
// CHECK-NEXT:   %64 = call i1 @"reflect.(*MapIter).Next"(ptr %59)
// CHECK-NEXT:   br i1 %64, label %_llgo_10, label %_llgo_11
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_13:                                         ; preds = %_llgo_14, %_llgo_10
// CHECK-NEXT:   %65 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @44, i64 13 }, ptr %65, align 8
// CHECK-NEXT:   %66 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %65, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %66)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_14:                                         ; preds = %_llgo_10
// CHECK-NEXT:   %67 = call %"{{.*}}/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %58)
// CHECK-NEXT:   %68 = call %reflect.Value @"reflect.(*MapIter).Value"(ptr %59)
// CHECK-NEXT:   %69 = call %"{{.*}}/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %68)
// CHECK-NEXT:   %70 = call i1 @"{{.*}}/runtime/internal/runtime.StringEqual"(%"{{.*}}/runtime/internal/runtime.String" %67, %"{{.*}}/runtime/internal/runtime.String" %69)
// CHECK-NEXT:   %71 = xor i1 %70, true
// CHECK-NEXT:   br i1 %71, label %_llgo_13, label %_llgo_12
// CHECK-NEXT: }

func mapDemo1() {
	m := map[int]string{
		1: "hello",
		2: "world",
	}
	v := reflect.ValueOf(m)
	if v.Len() != 2 || len(v.MapKeys()) != 2 {
		panic("error")
	}
	if v.MapIndex(reflect.ValueOf(2)).String() != "world" {
		panic("MapIndex error")
	}
	v.SetMapIndex(reflect.ValueOf(2), reflect.ValueOf("todo"))
	if v.MapIndex(reflect.ValueOf(2)).String() != "todo" {
		panic("MapIndex error")
	}
	if v.MapIndex(reflect.ValueOf(0)).IsValid() {
		println("must invalid")
	}
	key := reflect.New(v.Type().Key()).Elem()
	value := reflect.New(v.Type().Elem()).Elem()
	iter := v.MapRange()
	for iter.Next() {
		key.SetIterKey(iter)
		value.SetIterValue(iter)
		if key.Int() != iter.Key().Int() || value.String() != iter.Value().String() {
			panic("MapIter error")
		}
	}
}

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/reflect.mapDemo2"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call %"{{.*}}/runtime/internal/runtime.iface" @reflect.TypeOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null })
// CHECK-NEXT:   %1 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" zeroinitializer, ptr %1, align 8
// CHECK-NEXT:   %2 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %1, 1
// CHECK-NEXT:   %3 = call %"{{.*}}/runtime/internal/runtime.iface" @reflect.TypeOf(%"{{.*}}/runtime/internal/runtime.eface" %2)
// CHECK-NEXT:   %4 = call %"{{.*}}/runtime/internal/runtime.iface" @reflect.MapOf(%"{{.*}}/runtime/internal/runtime.iface" %0, %"{{.*}}/runtime/internal/runtime.iface" %3)
// CHECK-NEXT:   %5 = call %reflect.Value @reflect.MakeMap(%"{{.*}}/runtime/internal/runtime.iface" %4)
// CHECK-NEXT:   %6 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 1 to ptr) })
// CHECK-NEXT:   %7 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @39, i64 5 }, ptr %7, align 8
// CHECK-NEXT:   %8 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %7, 1
// CHECK-NEXT:   %9 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" %8)
// CHECK-NEXT:   call void @reflect.Value.SetMapIndex(%reflect.Value %5, %reflect.Value %6, %reflect.Value %9)
// CHECK-NEXT:   %10 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
// CHECK-NEXT:   %11 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @40, i64 5 }, ptr %11, align 8
// CHECK-NEXT:   %12 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %11, 1
// CHECK-NEXT:   %13 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" %12)
// CHECK-NEXT:   call void @reflect.Value.SetMapIndex(%reflect.Value %5, %reflect.Value %10, %reflect.Value %13)
// CHECK-NEXT:   %14 = call i64 @reflect.Value.Len(%reflect.Value %5)
// CHECK-NEXT:   %15 = icmp ne i64 %14, 2
// CHECK-NEXT:   br i1 %15, label %_llgo_1, label %_llgo_3
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
// CHECK-NEXT:   %16 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %16, align 8
// CHECK-NEXT:   %17 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %16, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %17)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_3
// CHECK-NEXT:   %18 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
// CHECK-NEXT:   %19 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %5, %reflect.Value %18)
// CHECK-NEXT:   %20 = call %"{{.*}}/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %19)
// CHECK-NEXT:   %21 = call i1 @"{{.*}}/runtime/internal/runtime.StringEqual"(%"{{.*}}/runtime/internal/runtime.String" %20, %"{{.*}}/runtime/internal/runtime.String" { ptr @40, i64 5 })
// CHECK-NEXT:   %22 = xor i1 %21, true
// CHECK-NEXT:   br i1 %22, label %_llgo_4, label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %23 = call %"{{.*}}/runtime/internal/runtime.Slice" @reflect.Value.MapKeys(%reflect.Value %5)
// CHECK-NEXT:   %24 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %23, 1
// CHECK-NEXT:   %25 = icmp ne i64 %24, 2
// CHECK-NEXT:   br i1 %25, label %_llgo_1, label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_2
// CHECK-NEXT:   %26 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @41, i64 14 }, ptr %26, align 8
// CHECK-NEXT:   %27 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %26, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %27)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_2
// CHECK-NEXT:   %28 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
// CHECK-NEXT:   %29 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @42, i64 4 }, ptr %29, align 8
// CHECK-NEXT:   %30 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %29, 1
// CHECK-NEXT:   %31 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" %30)
// CHECK-NEXT:   call void @reflect.Value.SetMapIndex(%reflect.Value %5, %reflect.Value %28, %reflect.Value %31)
// CHECK-NEXT:   %32 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 2 to ptr) })
// CHECK-NEXT:   %33 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %5, %reflect.Value %32)
// CHECK-NEXT:   %34 = call %"{{.*}}/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %33)
// CHECK-NEXT:   %35 = call i1 @"{{.*}}/runtime/internal/runtime.StringEqual"(%"{{.*}}/runtime/internal/runtime.String" %34, %"{{.*}}/runtime/internal/runtime.String" { ptr @42, i64 4 })
// CHECK-NEXT:   %36 = xor i1 %35, true
// CHECK-NEXT:   br i1 %36, label %_llgo_6, label %_llgo_7
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_6:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %37 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @41, i64 14 }, ptr %37, align 8
// CHECK-NEXT:   %38 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %37, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %38)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_7:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %39 = call %reflect.Value @reflect.ValueOf(%"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null })
// CHECK-NEXT:   %40 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %5, %reflect.Value %39)
// CHECK-NEXT:   %41 = call i1 @reflect.Value.IsValid(%reflect.Value %40)
// CHECK-NEXT:   br i1 %41, label %_llgo_8, label %_llgo_9
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_8:                                          ; preds = %_llgo_7
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @43, i64 12 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   br label %_llgo_9
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
// CHECK-NEXT:   %42 = call %"{{.*}}/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %5)
// CHECK-NEXT:   %43 = call ptr @"{{.*}}/runtime/internal/runtime.IfacePtrData"(%"{{.*}}/runtime/internal/runtime.iface" %42)
// CHECK-NEXT:   %44 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %42, 0
// CHECK-NEXT:   %45 = getelementptr ptr, ptr %44, i64 20
// CHECK-NEXT:   %46 = load ptr, ptr %45, align 8
// CHECK-NEXT:   %47 = insertvalue { ptr, ptr } undef, ptr %46, 0
// CHECK-NEXT:   %48 = insertvalue { ptr, ptr } %47, ptr %43, 1
// CHECK-NEXT:   %49 = extractvalue { ptr, ptr } %48, 1
// CHECK-NEXT:   %50 = extractvalue { ptr, ptr } %48, 0
// CHECK-NEXT:   %51 = call %"{{.*}}/runtime/internal/runtime.iface" %50(ptr %49)
// CHECK-NEXT:   %52 = call %reflect.Value @reflect.New(%"{{.*}}/runtime/internal/runtime.iface" %51)
// CHECK-NEXT:   %53 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %52)
// CHECK-NEXT:   %54 = call %"{{.*}}/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %5)
// CHECK-NEXT:   %55 = call ptr @"{{.*}}/runtime/internal/runtime.IfacePtrData"(%"{{.*}}/runtime/internal/runtime.iface" %54)
// CHECK-NEXT:   %56 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %54, 0
// CHECK-NEXT:   %57 = getelementptr ptr, ptr %56, i64 11
// CHECK-NEXT:   %58 = load ptr, ptr %57, align 8
// CHECK-NEXT:   %59 = insertvalue { ptr, ptr } undef, ptr %58, 0
// CHECK-NEXT:   %60 = insertvalue { ptr, ptr } %59, ptr %55, 1
// CHECK-NEXT:   %61 = extractvalue { ptr, ptr } %60, 1
// CHECK-NEXT:   %62 = extractvalue { ptr, ptr } %60, 0
// CHECK-NEXT:   %63 = call %"{{.*}}/runtime/internal/runtime.iface" %62(ptr %61)
// CHECK-NEXT:   %64 = call %reflect.Value @reflect.New(%"{{.*}}/runtime/internal/runtime.iface" %63)
// CHECK-NEXT:   %65 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %64)
// CHECK-NEXT:   %66 = call ptr @reflect.Value.MapRange(%reflect.Value %5)
// CHECK-NEXT:   br label %_llgo_12
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_10:                                         ; preds = %_llgo_12
// CHECK-NEXT:   call void @reflect.Value.SetIterKey(%reflect.Value %53, ptr %66)
// CHECK-NEXT:   call void @reflect.Value.SetIterValue(%reflect.Value %65, ptr %66)
// CHECK-NEXT:   %67 = call i64 @reflect.Value.Int(%reflect.Value %53)
// CHECK-NEXT:   %68 = call %reflect.Value @"reflect.(*MapIter).Key"(ptr %66)
// CHECK-NEXT:   %69 = call i64 @reflect.Value.Int(%reflect.Value %68)
// CHECK-NEXT:   %70 = icmp ne i64 %67, %69
// CHECK-NEXT:   br i1 %70, label %_llgo_13, label %_llgo_14
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_11:                                         ; preds = %_llgo_12
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_12:                                         ; preds = %_llgo_14, %_llgo_9
// CHECK-NEXT:   %71 = call i1 @"reflect.(*MapIter).Next"(ptr %66)
// CHECK-NEXT:   br i1 %71, label %_llgo_10, label %_llgo_11
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_13:                                         ; preds = %_llgo_14, %_llgo_10
// CHECK-NEXT:   %72 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @44, i64 13 }, ptr %72, align 8
// CHECK-NEXT:   %73 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %72, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %73)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_14:                                         ; preds = %_llgo_10
// CHECK-NEXT:   %74 = call %"{{.*}}/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %65)
// CHECK-NEXT:   %75 = call %reflect.Value @"reflect.(*MapIter).Value"(ptr %66)
// CHECK-NEXT:   %76 = call %"{{.*}}/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %75)
// CHECK-NEXT:   %77 = call i1 @"{{.*}}/runtime/internal/runtime.StringEqual"(%"{{.*}}/runtime/internal/runtime.String" %74, %"{{.*}}/runtime/internal/runtime.String" %76)
// CHECK-NEXT:   %78 = xor i1 %77, true
// CHECK-NEXT:   br i1 %78, label %_llgo_13, label %_llgo_12
// CHECK-NEXT: }

func mapDemo2() {
	v := reflect.MakeMap(reflect.MapOf(reflect.TypeOf(0), reflect.TypeOf("")))
	v.SetMapIndex(reflect.ValueOf(1), reflect.ValueOf("hello"))
	v.SetMapIndex(reflect.ValueOf(2), reflect.ValueOf("world"))
	if v.Len() != 2 || len(v.MapKeys()) != 2 {
		panic("error")
	}
	if v.MapIndex(reflect.ValueOf(2)).String() != "world" {
		panic("MapIndex error")
	}
	v.SetMapIndex(reflect.ValueOf(2), reflect.ValueOf("todo"))
	if v.MapIndex(reflect.ValueOf(2)).String() != "todo" {
		panic("MapIndex error")
	}
	if v.MapIndex(reflect.ValueOf(0)).IsValid() {
		println("must invalid")
	}
	key := reflect.New(v.Type().Key()).Elem()
	value := reflect.New(v.Type().Elem()).Elem()
	iter := v.MapRange()
	for iter.Next() {
		key.SetIterKey(iter)
		value.SetIterValue(iter)
		if key.Int() != iter.Key().Int() || value.String() != iter.Value().String() {
			panic("MapIter error")
		}
	}
}

// CHECK-LABEL: define linkonce i1 @"__llgo_stub.{{.*}}/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %3 = tail call i1 @"{{.*}}/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
// CHECK-NEXT:   ret i1 %3
// CHECK-NEXT: }

// CHECK-LABEL: define linkonce i64 @"__llgo_stub.{{.*}}/cl/_testgo/reflect.callFunc$1"(ptr %0, i64 %1) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %2 = tail call i64 @"{{.*}}/cl/_testgo/reflect.callFunc$1"(i64 %1)
// CHECK-NEXT:   ret i64 %2
// CHECK-NEXT: }

// CHECK-LABEL: define linkonce i1 @"__llgo_stub.{{.*}}/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %3 = tail call i1 @"{{.*}}/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
// CHECK-NEXT:   ret i1 %3
// CHECK-NEXT: }

// CHECK-LABEL: define linkonce { i64, i64 } @"__llgo_stub.{{.*}}/cl/_testgo/reflect.demo"(ptr %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, %"{{.*}}/runtime/internal/runtime.Slice" %10) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %11 = tail call { i64, i64 } @"{{.*}}/cl/_testgo/reflect.demo"(i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, %"{{.*}}/runtime/internal/runtime.Slice" %10)
// CHECK-NEXT:   ret { i64, i64 } %11
// CHECK-NEXT: }

// CHECK-LABEL: define linkonce i1 @"__llgo_stub.{{.*}}/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %3 = tail call i1 @"{{.*}}/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
// CHECK-NEXT:   ret i1 %3
// CHECK-NEXT: }

// CHECK-LABEL: define linkonce i1 @"__llgo_stub.{{.*}}/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %3 = tail call i1 @"{{.*}}/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
// CHECK-NEXT:   ret i1 %3
// CHECK-NEXT: }
