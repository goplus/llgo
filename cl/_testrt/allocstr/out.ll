; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [13 x i8] c"Hello world\0A\00", align 1
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null

define %"github.com/goplus/llgo/internal/runtime.String" @main.hello() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @0, i64 12)
  ret %"github.com/goplus/llgo/internal/runtime.String" %0
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

define void @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @main.hello()
  %3 = call i64 @"github.com/goplus/llgo/internal/runtime.StringLen"(%"github.com/goplus/llgo/internal/runtime.String" %2)
  %4 = add i64 %3, 1
  %5 = alloca i8, i64 %4, align 1
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.CStrCopy"(ptr %5, %"github.com/goplus/llgo/internal/runtime.String" %2)
  %7 = call i32 (ptr, ...) @printf(ptr %6)
  ret void
}

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare i64 @"github.com/goplus/llgo/internal/runtime.StringLen"(%"github.com/goplus/llgo/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/internal/runtime.String")

declare i32 @printf(ptr, ...)
