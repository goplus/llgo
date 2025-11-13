; ModuleID = 'main'
source_filename = "main"

%main.Call = type { %main.Func, i64 }
%main.Func = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1

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
  %5 = insertvalue { ptr, ptr } { ptr @"main.(*Call).add$bound", ptr undef }, ptr %3, 1
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
  %3 = insertvalue { ptr, ptr } { ptr @"main.(*Call).add$bound", ptr undef }, ptr %1, 1
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

define void @main.main() {
_llgo_0:
  %0 = call %main.Func @main.demo1(i64 1)
  %1 = extractvalue %main.Func %0, 1
  %2 = extractvalue %main.Func %0, 0
  %3 = call i64 %2(ptr %1, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call %main.Func @main.demo2()
  %5 = extractvalue %main.Func %4, 1
  %6 = extractvalue %main.Func %4, 0
  %7 = call i64 %6(ptr %5, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %8 = call %main.Func @main.demo3()
  %9 = extractvalue %main.Func %8, 1
  %10 = extractvalue %main.Func %8, 0
  %11 = call i64 %10(ptr %9, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = call %main.Func @main.demo4()
  %13 = extractvalue %main.Func %12, 1
  %14 = extractvalue %main.Func %12, 0
  %15 = call i64 %14(ptr %13, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call %main.Func @main.demo5(i64 1)
  %17 = extractvalue %main.Func %16, 1
  %18 = extractvalue %main.Func %16, 0
  %19 = call i64 %18(ptr %17, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = call %main.Func @main.demo5(i64 1)
  %21 = alloca { ptr, ptr }, align 8
  store %main.Func %20, ptr %21, align 8
  %22 = load { ptr, ptr }, ptr %21, align 8
  %23 = extractvalue { ptr, ptr } %22, 1
  %24 = extractvalue { ptr, ptr } %22, 0
  %25 = call i64 %24(ptr %23, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %26 = call %main.Func @main.demo5(i64 1)
  %27 = extractvalue %main.Func %26, 1
  %28 = extractvalue %main.Func %26, 0
  %29 = call i64 %28(ptr %27, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define i64 @"main.(*Call).add$bound"(ptr %0, i64 %1, i64 %2) {
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
