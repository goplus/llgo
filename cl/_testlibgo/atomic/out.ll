; ModuleID = 'github.com/goplus/llgo/cl/_testlibgo/atomic'
source_filename = "github.com/goplus/llgo/cl/_testlibgo/atomic"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testlibgo/atomic.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"store:", align 1
@1 = private unnamed_addr constant [4 x i8] c"ret:", align 1
@2 = private unnamed_addr constant [2 x i8] c"v:", align 1
@3 = private unnamed_addr constant [4 x i8] c"swp:", align 1

define void @"github.com/goplus/llgo/cl/_testlibgo/atomic.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibgo/atomic.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibgo/atomic.init$guard", align 1
  call void @"sync/atomic.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibgo/atomic.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store atomic i64 100, ptr %0 seq_cst, align 4
  %1 = load atomic i64, ptr %0 seq_cst, align 4
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr %2, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call i64 @"sync/atomic.AddInt64"(ptr %0, i64 1)
  %4 = load i64, ptr %0, align 4
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %6, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call i1 @"sync/atomic.CompareAndSwapInt64"(ptr %0, i64 100, i64 102)
  %8 = load i64, ptr %0, align 4
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %9, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %10, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %11 = call i1 @"sync/atomic.CompareAndSwapInt64"(ptr %0, i64 101, i64 102)
  %12 = load i64, ptr %0, align 4
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %13, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %14, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = call i64 @"sync/atomic.AddInt64"(ptr %0, i64 -1)
  %16 = load i64, ptr %0, align 4
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %17, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %18, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"sync/atomic.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare i64 @"sync/atomic.AddInt64"(ptr, i64)

declare i1 @"sync/atomic.CompareAndSwapInt64"(ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)
