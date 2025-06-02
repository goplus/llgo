; ModuleID = 'github.com/goplus/llgo/cl/_testrt/allocstr'
source_filename = "github.com/goplus/llgo/cl/_testrt/allocstr"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/allocstr.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [12 x i8] c"Hello world\0A", align 1

define void @"github.com/goplus/llgo/cl/_testrt/allocstr.hello"(ptr %0) {
_llgo_0:
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 12 }, ptr %0, align 8
  ret void
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
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @"github.com/goplus/llgo/cl/_testrt/allocstr.hello"(ptr %0)
  %1 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %0, align 8
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, 1
  %3 = add i64 %2, 1
  %4 = alloca i8, i64 %3, align 1
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %5, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr %4, ptr %5)
  %7 = call i32 @printf(ptr %6)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr, ptr)

declare i32 @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")
