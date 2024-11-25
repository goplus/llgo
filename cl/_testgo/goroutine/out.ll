; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/c/pthread.RoutineFunc" = type { ptr, ptr }

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
  %5 = insertvalue { ptr, ptr } { ptr @"main.main$1", ptr undef }, ptr %3, 1
  %6 = call ptr @malloc(i64 32)
  %7 = getelementptr inbounds { { ptr, ptr }, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %6, i32 0, i32 0
  store { ptr, ptr } %5, ptr %7, align 8
  %8 = getelementptr inbounds { { ptr, ptr }, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %6, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 16 }, ptr %8, align 8
  %9 = alloca i8, i64 8, align 1
  %10 = call i32 @"github.com/goplus/llgo/internal/runtime.CreateThread"(ptr %9, ptr null, %"github.com/goplus/llgo/c/pthread.RoutineFunc" { ptr @"__llgo_stub.main._llgo_routine$1", ptr null }, ptr %6)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 1 })
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %11 = load i1, ptr %2, align 1
  br i1 %11, label %_llgo_2, label %_llgo_1
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

declare i32 @"github.com/goplus/llgo/internal/runtime.CreateThread"(ptr, ptr, %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr)

define linkonce ptr @"__llgo_stub.main._llgo_routine$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = tail call ptr @"main._llgo_routine$1"(ptr %1)
  ret ptr %2
}

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)
