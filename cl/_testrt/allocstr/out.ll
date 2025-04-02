; ModuleID = 'github.com/goplus/llgo/cl/_testrt/allocstr'
source_filename = "github.com/goplus/llgo/cl/_testrt/allocstr"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/allocstr.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [12 x i8] c"Hello world\0A", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/allocstr.hello"() {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 12 }
}

define void @"github.com/goplus/llgo/cl/_testrt/allocstr.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/allocstr.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/allocstr.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/allocstr.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/allocstr.hello"()
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, 1
  %2 = add i64 %1, 1
  %3 = alloca i8, i64 %2, align 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.String" %0)
  %5 = call i32 (ptr, ...) @printf(ptr %4)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i32 @printf(ptr, ...)
