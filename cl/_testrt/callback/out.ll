; ModuleID = 'github.com/goplus/llgo/cl/_testrt/callback'
source_filename = "github.com/goplus/llgo/cl/_testrt/callback"

@"github.com/goplus/llgo/cl/_testrt/callback.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"Hello\0A\00", align 1
@1 = private unnamed_addr constant [10 x i8] c"callback\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/callback.callback"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = extractvalue { ptr, ptr } %1, 1
  %3 = extractvalue { ptr, ptr } %1, 0
  call void %3(ptr %2, ptr %0)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/callback.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/callback.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/callback.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/callback.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/callback.callback"(ptr @0, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/callback.print", ptr null })
  call void @"github.com/goplus/llgo/cl/_testrt/callback.callback"(ptr @1, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/callback.print", ptr null })
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/callback.print"(ptr %0) {
_llgo_0:
  %1 = call i32 (ptr, ...) @printf(ptr %0)
  ret void
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/callback.print"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/callback.print"(ptr %1)
  ret void
}

declare i32 @printf(ptr, ...)
