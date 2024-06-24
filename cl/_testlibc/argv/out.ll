; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

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
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = load ptr, ptr @__llgo_argv, align 8
  %3 = getelementptr ptr, ptr %2, i32 %7
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 (ptr, ...) @printf(ptr @0, ptr %4)
  %6 = add i32 %7, 1
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = phi i32 [ 0, %_llgo_0 ], [ %6, %_llgo_1 ]
  %8 = load i32, ptr @__llgo_argc, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %_llgo_1, label %_llgo_2
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare i32 @printf(ptr, ...)
