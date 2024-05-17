; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1

define i64 @main.incVal(%"github.com/goplus/llgo/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %2 = call i64 @"github.com/goplus/llgo/internal/runtime.I2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %1)
  %3 = add i64 %2, 1
  ret i64 %3
}

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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %3 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %2, i64 100)
  %4 = call i64 @main.incVal(%"github.com/goplus/llgo/internal/runtime.iface" %3)
  %5 = call i32 (ptr, ...) @printf(ptr @0, i64 %4)
  ret i32 0
}

declare i64 @"github.com/goplus/llgo/internal/runtime.I2Int"(%"github.com/goplus/llgo/internal/runtime.iface", ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr, i64)

declare i32 @printf(ptr, ...)
