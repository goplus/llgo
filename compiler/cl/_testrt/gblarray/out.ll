; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@main.basicTypes = global [25 x ptr] zeroinitializer, align 8
@"main.init$guard" = global i1 false, align 1
@main.sizeBasicTypes = global [25 x i64] zeroinitializer, align 8
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [20 x i8] c"Kind: %d, Size: %d\0A\00", align 1

define ptr @main.Basic(i64 %0) {
_llgo_0:
  %1 = icmp sge i64 %0, 25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %1)
  %2 = getelementptr inbounds ptr, ptr @main.basicTypes, i64 %0
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

define ptr @main.basicType(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %1, i32 0, i32 0
  %3 = icmp sge i64 %0, 25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %3)
  %4 = getelementptr inbounds i64, ptr @main.sizeBasicTypes, i64 %0
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

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/abi.init"()
  store i64 16, ptr getelementptr inbounds (i64, ptr @main.sizeBasicTypes, i64 24), align 4
  %1 = call ptr @main.basicType(i64 24)
  store ptr %1, ptr getelementptr inbounds (ptr, ptr @main.basicTypes, i64 24), align 8
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
  %2 = call ptr @main.Basic(i64 24)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %2, i32 0, i32 6
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i64
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %2, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  %8 = call i32 (ptr, ...) @printf(ptr @0, i64 %5, i64 %7)
  ret i32 0
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/abi.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare i32 @printf(ptr, ...)
