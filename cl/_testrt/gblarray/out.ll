; ModuleID = 'github.com/goplus/llgo/cl/_testrt/gblarray'
source_filename = "github.com/goplus/llgo/cl/_testrt/gblarray"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/gblarray.basicTypes" = global [25 x ptr] zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testrt/gblarray.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/gblarray.sizeBasicTypes" = global [25 x i64] zeroinitializer, align 8
@0 = private unnamed_addr constant [20 x i8] c"Kind: %d, Size: %d\0A\00", align 1

define ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.Basic"(i64 %0) {
_llgo_0:
  %1 = icmp sge i64 %0, 25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %1)
  %2 = getelementptr inbounds ptr, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicTypes", i64 %0
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

define ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicType"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %1, i32 0, i32 0
  %3 = icmp sge i64 %0, 25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %3)
  %4 = getelementptr inbounds i64, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.sizeBasicTypes", i64 %0
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %1, i32 0, i32 2
  %7 = trunc i64 %0 to i32
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %1, i32 0, i32 6
  %9 = trunc i64 %0 to i8
  store i64 %5, ptr %2, align 4
  store i32 %7, ptr %6, align 4
  store i8 %9, ptr %8, align 1
  ret ptr %1
}

define void @"github.com/goplus/llgo/cl/_testrt/gblarray.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/abi.init"()
  store i64 16, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.sizeBasicTypes", i64 24), align 4
  %1 = call ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicType"(i64 24)
  store ptr %1, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicTypes", i64 24), align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/gblarray.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.Basic"(i64 24)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 6
  %2 = load i8, ptr %1, align 1
  %3 = sext i8 %2 to i64
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 0
  %5 = load i64, ptr %4, align 4
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i64 %3, ptr %6, align 4
  %7 = call i32 @printf(ptr @0, ptr %6, i64 %5)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/abi.init"()

declare i32 @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")
