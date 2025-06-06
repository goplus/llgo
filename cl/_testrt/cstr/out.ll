; ModuleID = 'github.com/goplus/llgo/cl/_testrt/cstr'
source_filename = "github.com/goplus/llgo/cl/_testrt/cstr"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/cstr.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [14 x i8] c"Hello, world\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/cstr.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/cstr.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/cstr.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cstr.main"() {
_llgo_0:
  call void @printf(ptr @0)
  ret void
}

declare void @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")
