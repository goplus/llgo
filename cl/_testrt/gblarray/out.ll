; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, i32, i32 }

@main.basicTypes = global [25 x ptr] undef
@"main.init$guard" = global ptr null
@main.sizeBasicTypes = global [25 x i64] undef
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [20 x i8] c"Kind: %d, Size: %d\0A\00", align 1

define ptr @main.Basic(i64 %0) {
_llgo_0:
  %1 = getelementptr inbounds ptr, ptr @main.basicTypes, i64 %0
  %2 = load ptr, ptr %1, align 8
  ret ptr %2
}

define ptr @main.basicType(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 56)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds i64, ptr @main.sizeBasicTypes, i64 %0
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %1, i32 0, i32 2
  %6 = trunc i64 %0 to i32
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %1, i32 0, i32 6
  %8 = trunc i64 %0 to i8
  store i64 %4, ptr %2, align 4
  store i32 %6, ptr %5, align 4
  store i8 %8, ptr %7, align 1
  ret ptr %1
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/internal/abi.init"()
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
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @main.Basic(i64 24)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %2, i32 0, i32 6
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i64
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %2, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  %8 = call i32 (ptr, ...) @printf(ptr @0, i64 %5, i64 %7)
  ret i32 0
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/abi.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare i32 @printf(ptr, ...)
