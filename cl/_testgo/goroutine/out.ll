; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@1 = private unnamed_addr constant [16 x i8] c"Hello, goroutine", align 1
@2 = private unnamed_addr constant [1 x i8] c".", align 1

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
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 1)
  store i1 false, ptr %2, align 1
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 5, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = call ptr @malloc(i64 16)
  %8 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String" }, ptr %7, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %6, ptr %8, align 8
  %9 = alloca i8, i64 8, align 1
  %10 = call i32 @pthread_create(ptr %9, ptr null, ptr @"main._llgo_routine$1", ptr %7)
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %12 = getelementptr inbounds { ptr }, ptr %11, i32 0, i32 0
  store ptr %2, ptr %12, align 8
  %13 = alloca { ptr, ptr }, align 8
  %14 = getelementptr inbounds { ptr, ptr }, ptr %13, i32 0, i32 0
  store ptr @"main.main$1", ptr %14, align 8
  %15 = getelementptr inbounds { ptr, ptr }, ptr %13, i32 0, i32 1
  store ptr %11, ptr %15, align 8
  %16 = load { ptr, ptr }, ptr %13, align 8
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 0
  store ptr @1, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 1
  store i64 16, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %17, align 8
  %21 = call ptr @malloc(i64 32)
  %22 = getelementptr inbounds { { ptr, ptr }, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %21, i32 0, i32 0
  store { ptr, ptr } %16, ptr %22, align 8
  %23 = getelementptr inbounds { { ptr, ptr }, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %21, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.String" %20, ptr %23, align 8
  %24 = alloca i8, i64 8, align 1
  %25 = call i32 @pthread_create(ptr %24, ptr null, ptr @"main._llgo_routine$2", ptr %21)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 0
  store ptr @2, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 1
  store i64 1, ptr %28, align 4
  %29 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %26, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %29)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %30 = load i1, ptr %2, align 1
  br i1 %30, label %_llgo_2, label %_llgo_1
}

define void @"main.main$1"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  store i1 true, ptr %3, align 1
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare ptr @malloc(i64)

define ptr @"main._llgo_routine$1"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/internal/runtime.String" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String" } %1, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  call void @free(ptr %0)
  ret ptr null
}

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @free(ptr)

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

define ptr @"main._llgo_routine$2"(ptr %0) {
_llgo_0:
  %1 = load { { ptr, ptr }, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %0, align 8
  %2 = extractvalue { { ptr, ptr }, %"github.com/goplus/llgo/internal/runtime.String" } %1, 0
  %3 = extractvalue { { ptr, ptr }, %"github.com/goplus/llgo/internal/runtime.String" } %1, 1
  %4 = extractvalue { ptr, ptr } %2, 1
  %5 = extractvalue { ptr, ptr } %2, 0
  call void %5(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %3)
  call void @free(ptr %0)
  ret ptr null
}
