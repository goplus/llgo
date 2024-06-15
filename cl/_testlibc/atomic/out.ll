; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@1 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@2 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %2, align 4
  %3 = atomicrmw add ptr %2, i64 1 seq_cst, align 8
  %4 = load i64, ptr %2, align 4
  %5 = call i32 (ptr, ...) @printf(ptr @0, i64 %4)
  %6 = cmpxchg ptr %2, i64 100, i64 102 seq_cst seq_cst, align 8
  %7 = load i64, ptr %2, align 4
  %8 = call i32 (ptr, ...) @printf(ptr @1, i64 %7)
  %9 = cmpxchg ptr %2, i64 101, i64 102 seq_cst seq_cst, align 8
  %10 = load i64, ptr %2, align 4
  %11 = call i32 (ptr, ...) @printf(ptr @2, i64 %10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare i32 @printf(ptr, ...)
