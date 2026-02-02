; ModuleID = 'github.com/goplus/llgo/cl/_testgo/goroutine'
source_filename = "github.com/goplus/llgo/cl/_testgo/goroutine"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/goroutine.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@1 = private unnamed_addr constant [16 x i8] c"Hello, goroutine", align 1
@2 = private unnamed_addr constant [1 x i8] c".", align 1

define void @"github.com/goplus/llgo/cl/_testgo/goroutine.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/goroutine.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/goroutine.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/goroutine.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 1)
  store i1 false, ptr %0, align 1
  %1 = call ptr @malloc(i64 16)
  %2 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %2, align 8
  %3 = alloca i8, i64 8, align 1
  %4 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %3, ptr null, ptr @"github.com/goplus/llgo/cl/_testgo/goroutine._llgo_routine$1", ptr %1)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %6 = getelementptr inbounds { ptr, i64, ptr }, ptr %5, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/goroutine.main$1", ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64, ptr }, ptr %5, i32 0, i32 1
  store i64 1, ptr %7, align 4
  %8 = getelementptr inbounds { ptr, i64, ptr }, ptr %5, i32 0, i32 2
  store ptr %0, ptr %8, align 8
  %9 = call ptr @malloc(i64 24)
  %10 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %9, i32 0, i32 0
  store ptr %5, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %9, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 16 }, ptr %11, align 8
  %12 = alloca i8, i64 8, align 1
  %13 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %12, ptr null, ptr @"github.com/goplus/llgo/cl/_testgo/goroutine._llgo_routine$2", ptr %9)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 })
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load i1, ptr %0, align 1
  br i1 %14, label %_llgo_2, label %_llgo_1
}

define void @"github.com/goplus/llgo/cl/_testgo/goroutine.main$1"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %2 = load { ptr }, ptr %1, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = extractvalue { ptr } %2, 0
  store i1 true, ptr %3, align 1
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @malloc(i64)

define ptr @"github.com/goplus/llgo/cl/_testgo/goroutine._llgo_routine$1"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String" } %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @free(ptr %0)
  ret ptr null
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @free(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define ptr @"github.com/goplus/llgo/cl/_testgo/goroutine._llgo_routine$2"(ptr %0) {
_llgo_0:
  %1 = load { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %0, align 8
  %2 = extractvalue { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %1, 0
  %3 = extractvalue { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %1, 1
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr i8, ptr %2, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %5)
  call void %4(%"github.com/goplus/llgo/runtime/internal/runtime.String" %3)
  call void @free(ptr %0)
  ret ptr null
}
