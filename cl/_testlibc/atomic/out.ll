; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [12 x i8] c"store: %ld\0A\00", align 1
@1 = private unnamed_addr constant [18 x i8] c"ret: %ld, v: %ld\0A\00", align 1
@2 = private unnamed_addr constant [25 x i8] c"ret: %ld vs 100, v: %ld\0A\00", align 1
@3 = private unnamed_addr constant [25 x i8] c"ret: %ld vs 101, v: %ld\0A\00", align 1
@4 = private unnamed_addr constant [18 x i8] c"ret: %ld, v: %ld\0A\00", align 1

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

define void @main.main() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store atomic i64 100, ptr %0 seq_cst, align 4
  %1 = load atomic i64, ptr %0 seq_cst, align 4
  %2 = call i32 (ptr, ...) @printf(ptr @0, i64 %1)
  %3 = atomicrmw add ptr %0, i64 1 seq_cst, align 8
  %4 = load i64, ptr %0, align 4
  %5 = call i32 (ptr, ...) @printf(ptr @1, i64 %3, i64 %4)
  %6 = cmpxchg ptr %0, i64 100, i64 102 seq_cst seq_cst, align 8
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  %9 = load i64, ptr %0, align 4
  %10 = call i32 (ptr, ...) @printf(ptr @2, i64 %7, i64 %9)
  %11 = cmpxchg ptr %0, i64 101, i64 102 seq_cst seq_cst, align 8
  %12 = extractvalue { i64, i1 } %11, 0
  %13 = extractvalue { i64, i1 } %11, 1
  %14 = load i64, ptr %0, align 4
  %15 = call i32 (ptr, ...) @printf(ptr @3, i64 %12, i64 %14)
  %16 = atomicrmw sub ptr %0, i64 1 seq_cst, align 8
  %17 = load i64, ptr %0, align 4
  %18 = call i32 (ptr, ...) @printf(ptr @4, i64 %16, i64 %17)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i32 @printf(ptr, ...)
