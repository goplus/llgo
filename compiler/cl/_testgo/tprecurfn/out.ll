; ModuleID = 'main'
source_filename = "main"

%"main.My[int]" = type { { ptr, ptr }, ptr }

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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %3 = getelementptr inbounds %"main.My[int]", ptr %2, i32 0, i32 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %5 = getelementptr inbounds %"main.My[int]", ptr %4, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.main.main$1", ptr null }, ptr %5, align 8
  store ptr %4, ptr %3, align 8
  %6 = getelementptr inbounds %"main.My[int]", ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"main.My[int]", ptr %7, i32 0, i32 0
  %9 = load { ptr, ptr }, ptr %8, align 8
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  call void %11(ptr %10, i64 100)
  ret i32 0
}

define void @"main.main$1"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce void @"__llgo_stub.main.main$1"(ptr %0, i64 %1) {
_llgo_0:
  tail call void @"main.main$1"(i64 %1)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
