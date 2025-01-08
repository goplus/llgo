; ModuleID = 'main'
source_filename = "main"

%main.Call = type { %main.Func, i64 }
%main.Func = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define i64 @"main.(*Call).add"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = add i64 %1, %2
  %4 = getelementptr inbounds %main.Call, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = add i64 %3, %5
  ret i64 %6
}

define i64 @main.add(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define %main.Func @main.demo1(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = getelementptr inbounds %main.Call, ptr %1, i32 0, i32 1
  store i64 %0, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %1, ptr %4, align 8
  %5 = insertvalue { ptr, ptr } { ptr @"main.add$bound", ptr undef }, ptr %3, 1
  %6 = getelementptr inbounds %main.Call, ptr %1, i32 0, i32 0
  %7 = alloca %main.Func, align 8
  store { ptr, ptr } %5, ptr %7, align 8
  %8 = load %main.Func, ptr %7, align 8
  store %main.Func %8, ptr %6, align 8
  %9 = getelementptr inbounds %main.Call, ptr %1, i32 0, i32 0
  %10 = load %main.Func, ptr %9, align 8
  ret %main.Func %10
}

define %main.Func @main.demo2() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"main.add$bound", ptr undef }, ptr %1, 1
  %4 = alloca %main.Func, align 8
  store { ptr, ptr } %3, ptr %4, align 8
  %5 = load %main.Func, ptr %4, align 8
  ret %main.Func %5
}

define %main.Func @main.demo3() {
_llgo_0:
  ret %main.Func { ptr @__llgo_stub.main.add, ptr null }
}

define %main.Func @main.demo4() {
_llgo_0:
  ret %main.Func { ptr @"__llgo_stub.main.demo4$1", ptr null }
}

define i64 @"main.demo4$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define %main.Func @main.demo5(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"main.demo5$1", ptr undef }, ptr %2, 1
  %5 = alloca %main.Func, align 8
  store { ptr, ptr } %4, ptr %5, align 8
  %6 = load %main.Func, ptr %5, align 8
  ret %main.Func %6
}

define i64 @"main.demo5$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = add i64 %1, %2
  %4 = load { ptr }, ptr %0, align 8
  %5 = extractvalue { ptr } %4, 0
  %6 = load i64, ptr %5, align 4
  %7 = add i64 %3, %6
  ret i64 %7
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call %main.Func @main.demo1(i64 1)
  %3 = extractvalue %main.Func %2, 1
  %4 = extractvalue %main.Func %2, 0
  %5 = call i64 %4(ptr %3, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call %main.Func @main.demo2()
  %7 = extractvalue %main.Func %6, 1
  %8 = extractvalue %main.Func %6, 0
  %9 = call i64 %8(ptr %7, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = call %main.Func @main.demo3()
  %11 = extractvalue %main.Func %10, 1
  %12 = extractvalue %main.Func %10, 0
  %13 = call i64 %12(ptr %11, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call %main.Func @main.demo4()
  %15 = extractvalue %main.Func %14, 1
  %16 = extractvalue %main.Func %14, 0
  %17 = call i64 %16(ptr %15, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call %main.Func @main.demo5(i64 1)
  %19 = extractvalue %main.Func %18, 1
  %20 = extractvalue %main.Func %18, 0
  %21 = call i64 %20(ptr %19, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %22 = call %main.Func @main.demo5(i64 1)
  %23 = alloca { ptr, ptr }, align 8
  store %main.Func %22, ptr %23, align 8
  %24 = load { ptr, ptr }, ptr %23, align 8
  %25 = extractvalue { ptr, ptr } %24, 1
  %26 = extractvalue { ptr, ptr } %24, 0
  %27 = call i64 %26(ptr %25, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %28 = call %main.Func @main.demo5(i64 1)
  %29 = extractvalue %main.Func %28, 1
  %30 = extractvalue %main.Func %28, 0
  %31 = call i64 %30(ptr %29, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define i64 @"main.add$bound"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = load { ptr }, ptr %0, align 8
  %4 = extractvalue { ptr } %3, 0
  %5 = call i64 @"main.(*Call).add"(ptr %4, i64 %1, i64 %2)
  ret i64 %5
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce i64 @__llgo_stub.main.add(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @main.add(i64 %1, i64 %2)
  ret i64 %3
}

define linkonce i64 @"__llgo_stub.main.demo4$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"main.demo4$1"(i64 %1, i64 %2)
  ret i64 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
