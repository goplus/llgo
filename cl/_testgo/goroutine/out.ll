; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [16 x i8] c"Hello, goroutine", align 1
@1 = private unnamed_addr constant [1 x i8] c".", align 1

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
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = alloca { ptr, ptr }, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 0
  store ptr @"main.main$1", ptr %6, align 8
  %7 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 1
  store ptr %3, ptr %7, align 8
  %8 = load { ptr, ptr }, ptr %5, align 8
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 0
  store ptr @0, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 1
  store i64 16, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  %13 = call ptr @malloc(i64 32)
  %14 = getelementptr inbounds { { ptr, ptr }, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %13, i32 0, i32 0
  store { ptr, ptr } %8, ptr %14, align 8
  %15 = getelementptr inbounds { { ptr, ptr }, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %13, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.String" %12, ptr %15, align 8
  %16 = alloca i8, i64 8, align 1
  %17 = call i32 @llgoPthreadCreate(ptr %16, ptr null, ptr @"main._llgo_routine$1", ptr %13)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 0
  store ptr @1, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 1
  store i64 1, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %18, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %21)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %22 = load i1, ptr %2, align 1
  br i1 %22, label %_llgo_2, label %_llgo_1
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

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @malloc(i64)

define ptr @"main._llgo_routine$1"(ptr %0) {
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

declare void @free(ptr)

declare i32 @llgoPthreadCreate(ptr, ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)
