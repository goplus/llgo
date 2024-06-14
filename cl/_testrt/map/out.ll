; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@"map[_llgo_int]_llgo_int" = linkonce global ptr null
@_llgo_int = linkonce global ptr null
@0 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeSmallMap"()
  %3 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %4 = alloca i8, i64 48, align 1
  store ptr %2, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %3, ptr %4, i64 23)
  store i64 100, ptr %5, align 4
  %6 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %7 = alloca i8, i64 48, align 1
  store ptr %2, ptr %7, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %6, ptr %7, i64 7)
  store i64 29, ptr %8, align 4
  %9 = call i32 (ptr, ...) @printf(ptr @0, <null operand!>)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.MakeSmallMap"()

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = load ptr, ptr @_llgo_int, align 8
  %5 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %3, ptr %4)
  store ptr %7, ptr @"map[_llgo_int]_llgo_int", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare i32 @printf(ptr, ...)
