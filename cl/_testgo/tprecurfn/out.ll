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
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %3 = getelementptr inbounds %"main.My[int]", ptr %2, i32 0, i32 1
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %5 = getelementptr inbounds %"main.My[int]", ptr %4, i32 0, i32 0
  %6 = alloca { ptr, ptr }, align 8
  %7 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 0
  store ptr @"__llgo_stub.main.main$1", ptr %7, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 1
  store ptr null, ptr %8, align 8
  %9 = load { ptr, ptr }, ptr %6, align 8
  store { ptr, ptr } %9, ptr %5, align 8
  store ptr %4, ptr %3, align 8
  %10 = getelementptr inbounds %"main.My[int]", ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %"main.My[int]", ptr %11, i32 0, i32 0
  %13 = load { ptr, ptr }, ptr %12, align 8
  %14 = extractvalue { ptr, ptr } %13, 1
  %15 = extractvalue { ptr, ptr } %13, 0
  call void %15(ptr %14, i64 100)
  ret i32 0
}

define void @"main.main$1"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define linkonce void @"__llgo_stub.main.main$1"(ptr %0, i64 %1) {
_llgo_0:
  tail call void @"main.main$1"(i64 %1)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)
