; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"Hi\0A\00", align 1
@1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

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
  %2 = alloca i8, i64 4, align 1
  %3 = call ptr @memcpy(ptr %2, ptr @0, i64 4)
  %4 = call i32 (ptr, ...) @printf(ptr @1, ptr %2)
  ret i32 0
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @memcpy(ptr, ptr, i64)

declare i32 @printf(ptr, ...)
