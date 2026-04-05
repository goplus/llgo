; ModuleID = 'github.com/goplus/llgo/cl/_testrt/gblarray'
source_filename = "github.com/goplus/llgo/cl/_testrt/gblarray"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/gblarray.basicTypes" = global [25 x ptr] zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testrt/gblarray.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/gblarray.sizeBasicTypes" = global [25 x i64] zeroinitializer, align 8
@0 = private unnamed_addr constant [20 x i8] c"Kind: %d, Size: %d\0A\00", align 1

define ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.Basic"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %1 = icmp sge i64 %0, 25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %1)
  %2 = getelementptr inbounds ptr, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicTypes", i64 %0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

define ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicType"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %4 = icmp sge i64 %0, 25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %4)
  %5 = getelementptr inbounds i64, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.sizeBasicTypes", i64 %0
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load i64, ptr %5, align 4
  %8 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %1, i32 0, i32 2
  %10 = trunc i64 %0 to i32
  %11 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %1, i32 0, i32 6
  %13 = trunc i64 %0 to i8
  store i64 %7, ptr %3, align 4
  store i32 %10, ptr %9, align 4
  store i8 %13, ptr %12, align 1
  ret ptr %1
}

define void @"github.com/goplus/llgo/cl/_testrt/gblarray.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/abi.init"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  store i64 16, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.sizeBasicTypes", i64 24), align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %1 = call ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicType"(i64 24)
  store ptr %1, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicTypes", i64 24), align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/gblarray.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.Basic"(i64 24)
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 6
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i64
  %6 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 0
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load i64, ptr %7, align 4
  %10 = call i32 (ptr, ...) @printf(ptr @0, i64 %5, i64 %9)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/abi.init"()

declare i32 @printf(ptr, ...)
