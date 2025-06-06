; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closureconv'
source_filename = "github.com/goplus/llgo/cl/_testrt/closureconv"

%"github.com/goplus/llgo/cl/_testrt/closureconv.Call" = type { %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", i64 }
%"github.com/goplus/llgo/cl/_testrt/closureconv.Func" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard" = global i1 false, align 1

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = add i64 %1, %2
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = add i64 %3, %5
  ret i64 %6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.add"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %2, i32 0, i32 1
  store i64 %1, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %5 = getelementptr inbounds { ptr }, ptr %4, i32 0, i32 0
  store ptr %2, ptr %5, align 8
  %6 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr undef }, ptr %4, 1
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %2, i32 0, i32 0
  %8 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %6, ptr %8, align 8
  %9 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %8, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %9, ptr %7, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %2, i32 0, i32 0
  %11 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %10, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %11, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr undef }, ptr %2, 1
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %4, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %5, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %6, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"(ptr %0) {
_llgo_0:
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.add", ptr null }, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"(ptr %0) {
_llgo_0:
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1", ptr null }, ptr %0, align 8
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(ptr %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %1, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1", ptr undef }, ptr %3, 1
  %6 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %5, ptr %6, align 8
  %7 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %6, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %7, ptr %0, align 8
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = add i64 %1, %2
  %4 = load { ptr }, ptr %0, align 8
  %5 = extractvalue { ptr } %4, 0
  %6 = load i64, ptr %5, align 4
  %7 = add i64 %3, %6
  ret i64 %7
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.init"() {
_llgo_0:
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
  %0 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  call void @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(ptr %0, i64 1)
  %1 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %0, align 8
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %1, 1
  %3 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %1, 0
  %4 = call i64 %3(ptr %2, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  call void @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"(ptr %5)
  %6 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %5, align 8
  %7 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %6, 1
  %8 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %6, 0
  %9 = call i64 %8(ptr %7, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  call void @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"(ptr %10)
  %11 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %10, align 8
  %12 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %11, 1
  %13 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %11, 0
  %14 = call i64 %13(ptr %12, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  call void @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"(ptr %15)
  %16 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %15, align 8
  %17 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %16, 1
  %18 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %16, 0
  %19 = call i64 %18(ptr %17, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  call void @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(ptr %20, i64 1)
  %21 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %20, align 8
  %22 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %21, 1
  %23 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %21, 0
  %24 = call i64 %23(ptr %22, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %25 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  call void @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(ptr %25, i64 1)
  %26 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %25, align 8
  %27 = alloca { ptr, ptr }, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %26, ptr %27, align 8
  %28 = load { ptr, ptr }, ptr %27, align 8
  %29 = extractvalue { ptr, ptr } %28, 1
  %30 = extractvalue { ptr, ptr } %28, 0
  %31 = call i64 %30(ptr %29, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %32 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  call void @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(ptr %32, i64 1)
  %33 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %32, align 8
  %34 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %33, 1
  %35 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %33, 0
  %36 = call i64 %35(ptr %34, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = load { ptr }, ptr %0, align 8
  %4 = extractvalue { ptr } %3, 0
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %4, i64 %1, i64 %2)
  ret i64 %5
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
