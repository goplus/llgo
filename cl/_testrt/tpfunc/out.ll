; ModuleID = 'main'
source_filename = "main"

%main.Func = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

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
  %2 = alloca %main.Func, align 8
  %3 = getelementptr inbounds %main.Func, ptr %2, i32 0, i32 0
  store ptr @"__llgo_stub.main.main$1", ptr %3, align 8
  %4 = getelementptr inbounds %main.Func, ptr %2, i32 0, i32 1
  store ptr null, ptr %4, align 8
  %5 = load %main.Func, ptr %2, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 16)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

define void @"main.main$1"(ptr %0) {
_llgo_0:
  %1 = load i64, ptr %0, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"main.main$2"(ptr %0) {
_llgo_0:
  %1 = load i64, ptr %0, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"main.main$3"(ptr %0) {
_llgo_0:
  %1 = load i64, ptr %0, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define linkonce void @"__llgo_stub.main.main$1"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"main.main$1"(ptr %1)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)
