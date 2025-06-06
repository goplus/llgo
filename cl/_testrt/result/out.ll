; ModuleID = 'github.com/goplus/llgo/cl/_testrt/result'
source_filename = "github.com/goplus/llgo/cl/_testrt/result"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/result.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/result.add"(ptr %0) {
_llgo_0:
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add$1", ptr null }, ptr %0, align 8
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.add$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testrt/result.add2"(ptr %0) {
_llgo_0:
  store { { ptr, ptr }, i64 } { { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add2$1", ptr null }, i64 1 }, ptr %0, align 8
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.add2$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testrt/result.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/result.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/result.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/result.main"() {
_llgo_0:
  %0 = alloca { ptr, ptr }, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/result.main$1"(ptr %0)
  %1 = load { ptr, ptr }, ptr %0, align 8
  %2 = extractvalue { ptr, ptr } %1, 1
  %3 = extractvalue { ptr, ptr } %1, 0
  %4 = call i64 %3(ptr %2, i64 100, i64 200)
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i64 %4, ptr %5, align 4
  %6 = call i32 @printf(ptr @0, ptr %5)
  %7 = alloca { ptr, ptr }, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/result.add"(ptr %7)
  %8 = load { ptr, ptr }, ptr %7, align 8
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call i64 %10(ptr %9, i64 100, i64 200)
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i64 %11, ptr %12, align 4
  %13 = call i32 @printf(ptr @1, ptr %12)
  %14 = alloca { { ptr, ptr }, i64 }, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/result.add2"(ptr %14)
  %15 = load { { ptr, ptr }, i64 }, ptr %14, align 8
  %16 = extractvalue { { ptr, ptr }, i64 } %15, 0
  %17 = extractvalue { { ptr, ptr }, i64 } %15, 1
  %18 = alloca { ptr, ptr }, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/result.add"(ptr %18)
  %19 = load { ptr, ptr }, ptr %18, align 8
  %20 = extractvalue { ptr, ptr } %19, 1
  %21 = extractvalue { ptr, ptr } %19, 0
  %22 = call i64 %21(ptr %20, i64 100, i64 200)
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i64 %22, ptr %23, align 4
  %24 = call i32 @printf(ptr @2, ptr %23, i64 %17)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/result.main$1"(ptr %0) {
_llgo_0:
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.main$1$1", ptr null }, ptr %0, align 8
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.main$1$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/result.add$1"(i64 %1, i64 %2)
  ret i64 %3
}

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add2$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/result.add2$1"(i64 %1, i64 %2)
  ret i64 %3
}

declare i32 @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.main$1$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/result.main$1$1"(i64 %1, i64 %2)
  ret i64 %3
}
