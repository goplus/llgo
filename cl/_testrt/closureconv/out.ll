; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closureconv'
source_filename = "github.com/goplus/llgo/cl/_testrt/closureconv"

%"github.com/goplus/llgo/cl/_testrt/closureconv.Call" = type { %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", i64 }
%"github.com/goplus/llgo/cl/_testrt/closureconv.Func" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard" = global i1 false, align 1

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = add i64 %1, %2
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %0, i32 0, i32 1
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load i64, ptr %4, align 4
  %7 = add i64 %3, %6
  ret i64 %7
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.add"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 1
  store i64 %0, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %1, ptr %4, align 8
  %5 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr undef }, ptr %3, 1
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 0
  %7 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %5, ptr %7, align 8
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %7, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %9, ptr %6, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 0
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %10, align 8
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %12
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr undef }, ptr %1, 1
  %4 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %3, ptr %4, align 8
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %4, align 8
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %6
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"() {
_llgo_0:
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.add", ptr null }
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"() {
_llgo_0:
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1", ptr null }
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1", ptr undef }, ptr %2, 1
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %4, ptr %5, align 8
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %5, align 8
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %7
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = add i64 %1, %2
  %4 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load { ptr }, ptr %0, align 8
  %6 = extractvalue { ptr } %5, 0
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load i64, ptr %6, align 4
  %9 = add i64 %3, %8
  ret i64 %9
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 1)
  %1 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %0, 1
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %0, 0
  %3 = call i64 %2(ptr %1, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"()
  %5 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %4, 1
  %6 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %4, 0
  %7 = call i64 %6(ptr %5, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %8 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"()
  %9 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %8, 1
  %10 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %8, 0
  %11 = call i64 %10(ptr %9, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"()
  %13 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %12, 1
  %14 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %12, 0
  %15 = call i64 %14(ptr %13, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %17 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %16, 1
  %18 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %16, 0
  %19 = call i64 %18(ptr %17, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %21 = alloca { ptr, ptr }, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %20, ptr %21, align 8
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load { ptr, ptr }, ptr %21, align 8
  %24 = extractvalue { ptr, ptr } %23, 1
  %25 = extractvalue { ptr, ptr } %23, 0
  %26 = call i64 %25(ptr %24, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %27 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %28 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %27, 1
  %29 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %27, 0
  %30 = call i64 %29(ptr %28, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load { ptr }, ptr %0, align 8
  %5 = extractvalue { ptr } %4, 0
  %6 = call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %5, i64 %1, i64 %2)
  ret i64 %6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.add"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.add"(i64 %1, i64 %2)
  ret i64 %3
}

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1"(i64 %1, i64 %2)
  ret i64 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
