; ModuleID = 'github.com/goplus/llgo/cl/_testrt/unreachable'
source_filename = "github.com/goplus/llgo/cl/_testrt/unreachable"

@"github.com/goplus/llgo/cl/_testrt/unreachable.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"Hello\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/unreachable.foo"() {
_llgo_0:
  unreachable
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/unreachable.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/unreachable.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/unreachable.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/unreachable.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/unreachable.foo"()
  %0 = call i32 (ptr, ...) @printf(ptr @0)
  ret void
}

declare i32 @printf(ptr, ...)
