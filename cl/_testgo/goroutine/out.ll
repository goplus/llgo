; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/c/pthread.RoutineFunc" = type { ptr, ptr }

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
  %10 = alloca %"github.com/goplus/llgo/c/pthread.RoutineFunc", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr %10, i32 0, i32 0
  store ptr @"__llgo_stub.main._llgo_routine$1", ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr %10, i32 0, i32 1
  store ptr null, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr %10, align 8
  %14 = call i32 @"github.com/goplus/llgo/internal/runtime.CreateThread"(ptr %9, ptr null, %"github.com/goplus/llgo/c/pthread.RoutineFunc" %13, ptr %7)
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %16 = getelementptr inbounds { ptr }, ptr %15, i32 0, i32 0
  store ptr %2, ptr %16, align 8
  %17 = alloca { ptr, ptr }, align 8
  %18 = getelementptr inbounds { ptr, ptr }, ptr %17, i32 0, i32 0
  store ptr @"main.main$1", ptr %18, align 8
  %19 = getelementptr inbounds { ptr, ptr }, ptr %17, i32 0, i32 1
  store ptr %15, ptr %19, align 8
  %20 = load { ptr, ptr }, ptr %17, align 8
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 0
  store ptr @1, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 1
  store i64 16, ptr %23, align 4
  %24 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %21, align 8
  %25 = call ptr @malloc(i64 32)
  %26 = getelementptr inbounds { { ptr, ptr }, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %25, i32 0, i32 0
  store { ptr, ptr } %20, ptr %26, align 8
  %27 = getelementptr inbounds { { ptr, ptr }, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %25, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.String" %24, ptr %27, align 8
  %28 = alloca i8, i64 8, align 1
  %29 = alloca %"github.com/goplus/llgo/c/pthread.RoutineFunc", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr %29, i32 0, i32 0
  store ptr @"__llgo_stub.main._llgo_routine$2", ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr %29, i32 0, i32 1
  store ptr null, ptr %31, align 8
  %32 = load %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr %29, align 8
  %33 = call i32 @"github.com/goplus/llgo/internal/runtime.CreateThread"(ptr %28, ptr null, %"github.com/goplus/llgo/c/pthread.RoutineFunc" %32, ptr %25)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr @2, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 1, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %37)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %38 = load i1, ptr %2, align 1
  br i1 %38, label %_llgo_2, label %_llgo_1
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

declare i32 @"github.com/goplus/llgo/internal/runtime.CreateThread"(ptr, ptr, %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr)

define linkonce ptr @"__llgo_stub.main._llgo_routine$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = tail call ptr @"main._llgo_routine$1"(ptr %1)
  ret ptr %2
}

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

define linkonce ptr @"__llgo_stub.main._llgo_routine$2"(ptr %0, ptr %1) {
_llgo_0:
  %2 = tail call ptr @"main._llgo_routine$2"(ptr %1)
  ret ptr %2
}
