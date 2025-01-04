; ModuleID = 'github.com/goplus/llgo/cl/internal/linktarget'
source_filename = "github.com/goplus/llgo/cl/internal/linktarget"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/internal/linktarget.m" = type { %"github.com/goplus/llgo/internal/runtime.String" }

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

define %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/cl/internal/linktarget.m.info"(%"github.com/goplus/llgo/cl/internal/linktarget.m" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/internal/linktarget.m", align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %1, i64 16)
  store %"github.com/goplus/llgo/cl/internal/linktarget.m" %0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/internal/linktarget.m", ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  ret %"github.com/goplus/llgo/internal/runtime.String" %4
}

define %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/cl/internal/linktarget.(*m).info"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/internal/linktarget.m", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/cl/internal/linktarget.m.info"(%"github.com/goplus/llgo/cl/internal/linktarget.m" %1)
  ret %"github.com/goplus/llgo/internal/runtime.String" %2
}

define void @"github.com/goplus/llgo/cl/internal/linktarget.(*m).setInfo"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/internal/linktarget.m", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1, ptr %2, align 8
  ret void
}

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)
