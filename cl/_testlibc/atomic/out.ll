; ModuleID = 'github.com/goplus/llgo/cl/_testlibc/atomic'
source_filename = "github.com/goplus/llgo/cl/_testlibc/atomic"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testlibc/atomic.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [12 x i8] c"store: %ld\0A\00", align 1
@1 = private unnamed_addr constant [18 x i8] c"ret: %ld, v: %ld\0A\00", align 1
@2 = private unnamed_addr constant [25 x i8] c"ret: %ld vs 100, v: %ld\0A\00", align 1
@3 = private unnamed_addr constant [25 x i8] c"ret: %ld vs 101, v: %ld\0A\00", align 1
@4 = private unnamed_addr constant [18 x i8] c"ret: %ld, v: %ld\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testlibc/atomic.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibc/atomic.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibc/atomic.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibc/atomic.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store atomic i64 100, ptr %0 seq_cst, align 4
  %1 = load atomic i64, ptr %0 seq_cst, align 4
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i64 %1, ptr %2, align 4
  %3 = call i32 @printf(ptr @0, ptr %2)
  %4 = atomicrmw add ptr %0, i64 1 seq_cst, align 8
  %5 = load i64, ptr %0, align 4
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i64 %4, ptr %6, align 4
  %7 = call i32 @printf(ptr @1, ptr %6, i64 %5)
  %8 = cmpxchg ptr %0, i64 100, i64 102 seq_cst seq_cst, align 8
  %9 = extractvalue { i64, i1 } %8, 0
  %10 = extractvalue { i64, i1 } %8, 1
  %11 = load i64, ptr %0, align 4
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i64 %9, ptr %12, align 4
  %13 = call i32 @printf(ptr @2, ptr %12, i64 %11)
  %14 = cmpxchg ptr %0, i64 101, i64 102 seq_cst seq_cst, align 8
  %15 = extractvalue { i64, i1 } %14, 0
  %16 = extractvalue { i64, i1 } %14, 1
  %17 = load i64, ptr %0, align 4
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i64 %15, ptr %18, align 4
  %19 = call i32 @printf(ptr @3, ptr %18, i64 %17)
  %20 = atomicrmw sub ptr %0, i64 1 seq_cst, align 8
  %21 = load i64, ptr %0, align 4
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i64 %20, ptr %22, align 4
  %23 = call i32 @printf(ptr @4, ptr %22, i64 %21)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i32 @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")
