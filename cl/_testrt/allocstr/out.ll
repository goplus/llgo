; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [12 x i8] c"Hello world\0A", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define %"github.com/goplus/llgo/internal/runtime.String" @main.hello() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 12, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  ret %"github.com/goplus/llgo/internal/runtime.String" %3
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
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @main.hello()
  %3 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %2, 1
  %4 = add i64 %3, 1
  %5 = alloca i8, i64 %4, align 1
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.CStrCopy"(ptr %5, %"github.com/goplus/llgo/internal/runtime.String" %2)
  %7 = call i32 (ptr, ...) @printf(ptr %6)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/internal/runtime.String")

declare i32 @printf(ptr, ...)
