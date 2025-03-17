; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testrt/cstr'
source_filename = "github.com/goplus/llgo/compiler/cl/_testrt/cstr"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/compiler/cl/_testrt/cstr.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [13 x i8] c"Hello, world\0A", align 1
@1 = private unnamed_addr constant [14 x i8] c"Hello, world\0A\00", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/compiler/cl/_testrt/cstr.hello"() {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/cstr.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/cstr.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/cstr.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/cstr.main"() {
_llgo_0:
  call void (ptr, ...) @printf(ptr @1)
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/compiler/cl/_testrt/cstr.hello"()
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, 1
  %2 = add i64 %1, 1
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 %2)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.String" %0)
  call void (ptr, ...) @printf(ptr %4)
  ret void
}

declare void @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")
