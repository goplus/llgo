; ModuleID = 'github.com/goplus/llgo/cl/internal/linktarget'
source_filename = "github.com/goplus/llgo/cl/internal/linktarget"

@"github.com/goplus/llgo/cl/internal/linktarget.init$guard" = global ptr null
@0 = private unnamed_addr constant [14 x i8] c"a: %s, b: %s\0A\00", align 1

define void @"github.com/goplus/llgo/cl/internal/linktarget.F"(ptr %0, ptr %1) {
_llgo_0:
  %2 = call i32 (ptr, ...) @printf(ptr @0, ptr %0, ptr %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/internal/linktarget.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/internal/linktarget.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/internal/linktarget.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare i32 @printf(ptr, ...)
