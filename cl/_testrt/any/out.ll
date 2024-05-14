; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }

@"main.init$guard" = global ptr null
@runtime.type.int = linkonce_odr constant { i64, i64, i32, i8, i8, i8, i8, ptr, i64, i32, i32 } { i64 8, i64 0, i32 0, i8 0, i8 0, i8 0, i8 2, ptr @"github.com/goplus/llgo/internal/runtime.EqualBasic", i64 0, i32 0, i32 0 }
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1

define i64 @main.incVal(%"github.com/goplus/llgo/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call i64 @"github.com/goplus/llgo/internal/runtime.I2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr @runtime.type.int)
  %2 = add i64 %1, 1
  ret i64 %2
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
  %2 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr @runtime.type.int, i64 100)
  %3 = call i64 @main.incVal(%"github.com/goplus/llgo/internal/runtime.iface" %2)
  %4 = call i32 (ptr, ...) @printf(ptr @0, i64 %3)
  ret i32 0
}

declare i64 @"github.com/goplus/llgo/internal/runtime.I2Int"(%"github.com/goplus/llgo/internal/runtime.iface", ptr)

declare i1 @"github.com/goplus/llgo/internal/runtime.EqualBasic"(ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr, i64)

declare i32 @printf(ptr, ...)
