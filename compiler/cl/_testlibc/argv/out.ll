; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testlibc/argv'
source_filename = "github.com/goplus/llgo/compiler/cl/_testlibc/argv"

@"github.com/goplus/llgo/compiler/cl/_testlibc/argv.init$guard" = global i1 false, align 1
@__llgo_argc = external global i32, align 4
@0 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__llgo_argv = external global ptr, align 8

define void @"github.com/goplus/llgo/compiler/cl/_testlibc/argv.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testlibc/argv.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testlibc/argv.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testlibc/argv.main"() {
_llgo_0:
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %0 = phi i32 [ 0, %_llgo_0 ], [ %7, %_llgo_2 ]
  %1 = load i32, ptr @__llgo_argc, align 4
  %2 = icmp slt i32 %0, %1
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %3 = load ptr, ptr @__llgo_argv, align 8
  %4 = getelementptr ptr, ptr %3, i32 %0
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 (ptr, ...) @printf(ptr @0, ptr %5)
  %7 = add i32 %0, 1
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

declare i32 @printf(ptr, ...)
