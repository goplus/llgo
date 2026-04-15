; ModuleID = 'github.com/goplus/llgo/cl/_testlibc/atomic'
source_filename = "github.com/goplus/llgo/cl/_testlibc/atomic"

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
  %2 = call i32 (ptr, ...) @printf(ptr @0, i64 %1)
  %3 = atomicrmw add ptr %0, i64 1 seq_cst, align 8
  %4 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %0, align 4
  %6 = call i32 (ptr, ...) @printf(ptr @1, i64 %3, i64 %5)
  %7 = cmpxchg ptr %0, i64 100, i64 102 seq_cst seq_cst, align 8
  %8 = extractvalue { i64, i1 } %7, 0
  %9 = extractvalue { i64, i1 } %7, 1
  %10 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load i64, ptr %0, align 4
  %12 = call i32 (ptr, ...) @printf(ptr @2, i64 %8, i64 %11)
  %13 = cmpxchg ptr %0, i64 101, i64 102 seq_cst seq_cst, align 8
  %14 = extractvalue { i64, i1 } %13, 0
  %15 = extractvalue { i64, i1 } %13, 1
  %16 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load i64, ptr %0, align 4
  %18 = call i32 (ptr, ...) @printf(ptr @3, i64 %14, i64 %17)
  %19 = atomicrmw sub ptr %0, i64 1 seq_cst, align 8
  %20 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %0, align 4
  %22 = call i32 (ptr, ...) @printf(ptr @4, i64 %19, i64 %21)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i32 @printf(ptr, ...)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)
