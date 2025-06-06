; ModuleID = 'github.com/goplus/llgo/cl/_testrt/fprintf'
source_filename = "github.com/goplus/llgo/cl/_testrt/fprintf"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/fprintf.init$guard" = global i1 false, align 1
@__stderrp = external global ptr, align 8
@0 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/fprintf.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/fprintf.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/fprintf.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/fprintf.main"() {
_llgo_0:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i64 100, ptr %1, align 4
  call void @fprintf(ptr %0, ptr @0, ptr %1)
  ret void
}

declare void @fprintf(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")
